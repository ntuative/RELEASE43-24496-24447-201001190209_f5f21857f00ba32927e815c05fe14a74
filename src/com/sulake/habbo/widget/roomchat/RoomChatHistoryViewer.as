package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryViewer implements IDisposable
   {
      
      private static const const_1093:int = 18;
      
      private static const const_485:int = 20;
      
      public static const const_955:int = 3;
       
      
      private var var_1451:Boolean = false;
      
      private var _isDisposed:Boolean = false;
      
      private var var_1213:Boolean = false;
      
      private var var_1116:Boolean = false;
      
      private var var_347:Number = 1;
      
      private var _widget:RoomChatWidget;
      
      private var var_296:Boolean = false;
      
      private var var_233:Number = -1;
      
      private var var_157:RoomChatHistoryPulldown;
      
      private var var_51:IScrollbarWindow;
      
      public function RoomChatHistoryViewer(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         _isDisposed = false;
         _widget = param1;
         var_157 = new RoomChatHistoryPulldown(param1,param2,param3,param4);
         var_157.state = RoomChatHistoryPulldown.const_185;
         var _loc5_:IItemListWindow = param3.getChildByName("chat_contentlist") as IItemListWindow;
         if(_loc5_ == null)
         {
            return;
         }
         param3.removeChild(_loc5_);
         param3.addChild(_loc5_);
         var_51 = param2.createWindow("chatscroller","",HabboWindowType.const_911,HabboWindowStyle.const_40,0 | 0,new Rectangle(param3.rectangle.right - const_485,param3.y,const_485,param3.height - 0),null,0) as IScrollbarWindow;
         param3.addChild(var_51);
         var_51.visible = false;
         var_51.scrollable = _loc5_ as IScrollableWindow;
      }
      
      public function get scrollbarWidth() : Number
      {
         return !!var_296 ? Number(const_485) : Number(0);
      }
      
      private function onStageMouseUp(param1:MouseEvent) : void
      {
         cancelDrag();
         if(_widget != null)
         {
            _widget.mouseUp();
         }
      }
      
      private function processDrag(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         if(var_233 > 0 && param2)
         {
            if(var_1213)
            {
               if(Math.abs(param1 - var_233) <= const_955)
               {
                  return;
               }
               var_1213 = false;
            }
            if(!var_296)
            {
               _widget.resizeContainerToLowestItem();
               showHistoryViewer();
               moveHistoryScroll();
            }
            if(var_296)
            {
               moveHistoryScroll();
               _loc4_ = var_51.scrollable.scrollableRegion.height / var_51.scrollable.visibleRegion.height;
               _loc5_ = (param1 - var_233) / 0;
               _loc3_ = var_347 - _loc5_ / _loc4_;
               _loc3_ = Math.max(0,_loc3_);
               _loc3_ = Math.min(1,_loc3_);
               _loc6_ = param1 - var_233;
               _loc7_ = true;
               _loc8_ = true;
               if(var_51.scrollV < 1 - const_1093 / var_51.scrollable.scrollableRegion.height)
               {
                  _loc8_ = false;
               }
               if(_loc8_ || var_1451)
               {
                  _widget.stretchAreaBottomBy(_loc6_);
                  _loc7_ = false;
                  var_51.scrollV = 1;
               }
               if(_loc7_)
               {
                  var_347 = _loc3_;
               }
               var_233 = param1;
            }
         }
         else
         {
            var_233 = -1;
         }
      }
      
      public function beginDrag(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_233 = param1;
         var_1451 = param2;
         var_1213 = true;
         if(var_51 != null)
         {
            var_347 = var_51.scrollV;
         }
         if(var_51 != null)
         {
            _loc3_ = var_51.context.getDesktopWindow().getDisplayObject();
            if(_loc3_ != null)
            {
               _loc4_ = _loc3_.stage;
               if(_loc4_ != null)
               {
                  _loc4_.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  _loc4_.addEventListener(MouseEvent.MOUSE_UP,onStageMouseUp);
               }
            }
         }
      }
      
      public function update(param1:uint) : void
      {
         if(var_157 != null)
         {
            var_157.update(param1);
         }
         moveHistoryScroll();
      }
      
      public function get active() : Boolean
      {
         return var_296;
      }
      
      public function showHistoryViewer() : void
      {
         if(!var_296 && !var_1116)
         {
            var_296 = true;
            setHistoryViewerScrollbar(true);
            var_157.state = RoomChatHistoryPulldown.const_316;
            if(_widget != null)
            {
               _widget.reAlignItemsToHistoryContent();
               _widget.disableDragTooltips();
            }
         }
      }
      
      private function setHistoryViewerScrollbar(param1:Boolean) : void
      {
         if(var_51 != null)
         {
            var_51.visible = param1;
            if(param1)
            {
               var_51.scrollV = 1;
               var_347 = 1;
            }
            else
            {
               var_296 = false;
               var_233 = -1;
            }
         }
      }
      
      public function toggleHistoryViewer() : void
      {
         if(var_296)
         {
            hideHistoryViewer();
         }
         else
         {
            showHistoryViewer();
         }
      }
      
      public function cancelDrag() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var_233 = -1;
         if(var_51 != null)
         {
            _loc1_ = var_51.context.getDesktopWindow().getDisplayObject();
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.stage;
               if(_loc2_ != null)
               {
                  _loc2_.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  _loc2_.removeEventListener(MouseEvent.MOUSE_UP,onStageMouseUp);
               }
            }
         }
      }
      
      public function dispose() : void
      {
         hideHistoryViewer();
         if(var_51 != null)
         {
            var_51.dispose();
            var_51 = null;
         }
         if(var_157 != null)
         {
            var_157.dispose();
            var_157 = null;
         }
         _isDisposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(var_157 == null)
         {
            return;
         }
         var_157.state = param1 == true ? 0 : int(RoomChatHistoryPulldown.const_185);
      }
      
      public function containerResized(param1:Rectangle, param2:Boolean = false) : void
      {
         if(var_51 != null)
         {
            var_51.x = param1.x + param1.width - 0;
            var_51.y = param1.y;
            var_51.height = param1.height - 0;
            if(param2)
            {
               var_51.scrollV = var_347;
            }
         }
         if(var_157 != null)
         {
            var_157.containerResized(param1);
         }
      }
      
      private function moveHistoryScroll() : void
      {
         if(!var_296)
         {
            return;
         }
         if(var_233 == -1)
         {
            return;
         }
         if(var_1451)
         {
            return;
         }
         var _loc1_:Number = var_347 - 0;
         if(_loc1_ == 0)
         {
            return;
         }
         if(Math.abs(_loc1_) < 0.01)
         {
            var_51.scrollV = var_347;
         }
         else
         {
            var_51.scrollV += _loc1_ / 2;
         }
      }
      
      public function get pulldownBarHeight() : Number
      {
         return RoomChatHistoryPulldown.const_70;
      }
      
      public function set disabled(param1:Boolean) : void
      {
         var_1116 = param1;
      }
      
      public function get visible() : Boolean
      {
         if(var_157 == null)
         {
            return false;
         }
         return true || true;
      }
      
      public function hideHistoryViewer() : void
      {
         var_347 = 1;
         cancelDrag();
         var_296 = false;
         setHistoryViewerScrollbar(false);
         var_157.state = RoomChatHistoryPulldown.const_185;
         if(_widget != null)
         {
            _widget.resetArea();
            _widget.enableDragTooltips();
         }
      }
      
      private function onStageMouseMove(param1:MouseEvent) : void
      {
         processDrag(param1.stageY,param1.buttonDown);
      }
   }
}
