package com.sulake.habbo.messenger
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.FollowFriendMessageComposer;
   import com.sulake.habbo.messenger.domain.Conversation;
   import com.sulake.habbo.messenger.domain.Message;
   import flash.external.ExternalInterface;
   import flash.utils.Dictionary;
   
   public class ConversationView
   {
      
      private static const const_1072:int = 10;
      
      private static const const_1071:int = 20;
      
      private static const const_757:int = 100;
       
      
      private var var_1885:IScrollbarWindow;
      
      private var var_131:HabboMessenger;
      
      private var var_1408:IContainerButtonWindow;
      
      private var var_461:Conversation;
      
      private var _list:IItemListWindow;
      
      public function ConversationView(param1:HabboMessenger, param2:IWindowContainer)
      {
         super();
         var_131 = param1;
         var_1408 = initButton("follow_friend",onFollowButtonClick,param2);
         _list = IItemListWindow(param2.findChildByName("msg_list"));
         var_1885 = IScrollbarWindow(param2.findChildByName("scroller"));
         var_131.refreshButton(param2,"close",true,onCloseButtonClick,0);
         initButton("minimail",onMinimailButtonClick,param2);
      }
      
      public function refreshHeader() : void
      {
         if(false)
         {
            var_1408.enable();
         }
         else
         {
            var_1408.disable();
         }
      }
      
      private function findAddIndex() : int
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ < _list.numListItems)
         {
            _loc2_ = _list.getListItemAt(_loc1_);
            if(!_loc2_.visible)
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return _loc1_ + 1;
      }
      
      private function getChatTextColor(param1:int) : uint
      {
         if(param1 == Message.const_608)
         {
            return 4285887861;
         }
         if(param1 == Message.const_682)
         {
            return 4285887861;
         }
         return 4278190080;
      }
      
      private function refreshEntry(param1:Boolean, param2:int, param3:Message) : Boolean
      {
         var _loc4_:ITextWindow = _list.getListItemAt(param2) as ITextWindow;
         if(_loc4_ == null)
         {
            if(!param1)
            {
               return true;
            }
            _loc4_ = ITextWindow(var_131.getXmlWindow("msg_entry"));
            _loc4_.width = _list.width;
            _list.addListItem(_loc4_);
         }
         if(!param1)
         {
            _loc4_.height = 0;
            _loc4_.visible = false;
            return false;
         }
         _loc4_.visible = true;
         var _loc5_:String = param3.type == Message.const_511 || param3.type == Message.const_629 ? param3.time + ": " : "";
         _loc4_.text = _loc5_ + param3.messageText;
         _loc4_.color = getChatBgColor(param3.type);
         _loc4_.textColor = getChatTextColor(param3.type);
         refreshTextDims(_loc4_);
         return false;
      }
      
      private function refreshList() : void
      {
         var _loc3_:Boolean = false;
         if(_list == null)
         {
            return;
         }
         _list.autoArrangeItems = false;
         var _loc1_:int = 0;
         var _loc2_:int = Math.max(0,var_461.messages.length - const_757);
         _loc1_ = 0;
         while(_loc1_ + _loc2_ < var_461.messages.length)
         {
            refreshEntry(true,_loc1_,var_461.messages[_loc1_ + _loc2_]);
            _loc1_++;
         }
         while(true)
         {
            _loc3_ = refreshEntry(false,_loc1_,null);
            if(_loc3_)
            {
               break;
            }
            _loc1_++;
         }
         _list.autoArrangeItems = true;
      }
      
      public function refresh() : void
      {
         var _loc1_:Conversation = var_131.conversations.findSelectedConversation();
         if(_loc1_ == null)
         {
            return;
         }
         if(var_461 == null || _loc1_.id != var_461.id)
         {
            var_461 = _loc1_;
            refreshList();
            afterResize();
         }
         refreshHeader();
      }
      
      private function refreshScrollBarVisibility() : Boolean
      {
         var _loc1_:IWindowContainer = IWindowContainer(_list.parent);
         var _loc2_:IWindow = _loc1_.getChildByName("scroller") as IWindow;
         var _loc3_:* = _list.scrollableRegion.height > _list.height;
         if(_loc2_.visible)
         {
            if(_loc3_)
            {
               return false;
            }
            _loc2_.visible = false;
            _list.width = NaN;
            return true;
         }
         if(_loc3_)
         {
            _loc2_.visible = true;
            _list.width = -22;
            return true;
         }
         return false;
      }
      
      private function refreshListDims() : void
      {
         var _loc2_:* = null;
         _list.autoArrangeItems = false;
         var _loc1_:int = 0;
         while(_loc1_ < _list.numListItems)
         {
            _loc2_ = ITextWindow(_list.getListItemAt(_loc1_));
            refreshTextDims(_loc2_);
            if(!_loc2_.visible)
            {
               break;
            }
            _loc1_++;
         }
         _list.autoArrangeItems = true;
      }
      
      public function addMessage(param1:Message) : void
      {
         var _loc2_:int = findAddIndex();
         if(_loc2_ >= const_757 + const_1071)
         {
            refreshList();
            afterResize();
         }
         else
         {
            _list.autoArrangeItems = false;
            this.refreshEntry(true,_loc2_,param1);
            _list.autoArrangeItems = true;
         }
         var_1885.scrollV = 1;
         refreshScrollBarVisibility();
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close clicked");
         var_131.conversations.closeConversation();
         var_131.messengerView.refresh(true);
      }
      
      private function onFollowButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Follow clicked");
         var_131.send(new FollowFriendMessageComposer(var_461.id));
      }
      
      public function afterResize() : void
      {
         refreshListDims();
         var _loc1_:Boolean = refreshScrollBarVisibility();
         if(_loc1_)
         {
            refreshListDims();
         }
      }
      
      private function initButton(param1:String, param2:Function, param3:IWindowContainer) : IContainerButtonWindow
      {
         var _loc4_:IContainerButtonWindow = IContainerButtonWindow(param3.findChildByName("button_" + param1));
         _loc4_.procedure = param2;
         var _loc5_:IBitmapWrapperWindow = IBitmapWrapperWindow(_loc4_.findChildByName("icon"));
         _loc5_.bitmap = var_131.getButtonImage(param1);
         _loc5_.width = _loc5_.bitmap.width;
         _loc5_.height = _loc5_.bitmap.height;
         return _loc4_;
      }
      
      private function getChatBgColor(param1:int) : uint
      {
         if(param1 == Message.const_511)
         {
            return 4294967295;
         }
         if(param1 == Message.const_629)
         {
            return 4292801535;
         }
         if(param1 == Message.const_907)
         {
            return 4294927974;
         }
         if(param1 == Message.const_608)
         {
            return 4293454056;
         }
         if(param1 == Message.const_682)
         {
            return 4293454056;
         }
         if(param1 == Message.const_972)
         {
            return 4288269465;
         }
         return 4291611852;
      }
      
      private function onMinimailButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Minimail clicked");
         var _loc3_:Dictionary = new Dictionary();
         _loc3_["recipientid"] = "undefined";
         _loc3_["random"] = "" + Math.round(Math.random() * 100000000);
         if(var_131.isEmbeddedMinimailEnabled())
         {
            if(false)
            {
               ExternalInterface.call("FlashExternalInterface.openHabblet","minimail","#mail/compose/" + _loc3_["recipientid"] + "/" + _loc3_["random"] + "/");
            }
         }
         else
         {
            var_131.openHabboWebPage("link.format.mail.compose",_loc3_,param1);
         }
      }
      
      private function refreshTextDims(param1:ITextWindow) : void
      {
         param1.width = _list.width;
         param1.height = param1.textHeight + const_1072;
         param1.invalidate();
      }
   }
}
