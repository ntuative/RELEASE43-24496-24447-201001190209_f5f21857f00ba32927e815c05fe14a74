package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_622:IWindowContainer;
      
      private var var_936:ITextWindow;
      
      private var var_196:RoomSettingsCtrl;
      
      private var var_1139:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_449:Timer;
      
      private var var_1138:ITextWindow;
      
      private var var_335:IWindowContainer;
      
      private var var_1783:IWindowContainer;
      
      private var var_1781:ITextWindow;
      
      private var var_769:IWindowContainer;
      
      private var var_1385:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_651:ITextWindow;
      
      private var var_1382:IWindowContainer;
      
      private var var_1137:IWindowContainer;
      
      private var var_766:ITextWindow;
      
      private var var_935:ITextFieldWindow;
      
      private var var_290:IWindowContainer;
      
      private var var_768:ITextWindow;
      
      private var var_1384:IButtonWindow;
      
      private var var_934:ITextWindow;
      
      private var var_2221:int;
      
      private var var_1136:IContainerButtonWindow;
      
      private var var_767:IWindowContainer;
      
      private var var_1140:ITextWindow;
      
      private var var_1135:IContainerButtonWindow;
      
      private var var_1383:ITextWindow;
      
      private var var_1381:IButtonWindow;
      
      private var var_942:TagRenderer;
      
      private var var_1784:ITextWindow;
      
      private var var_336:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_623:ITextWindow;
      
      private var var_254:RoomThumbnailCtrl;
      
      private var var_1134:IContainerButtonWindow;
      
      private var var_1782:IWindowContainer;
      
      private var var_255:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_336 = new RoomEventViewCtrl(_navigator);
         var_196 = new RoomSettingsCtrl(_navigator,this,true);
         var_254 = new RoomThumbnailCtrl(_navigator);
         var_942 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_196);
         var_449 = new Timer(6000,1);
         var_449.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_196.active = true;
         this.var_336.active = false;
         this.var_254.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1385.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1381.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1382.visible = Util.hasVisibleChildren(var_1382);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_651.text = param1.roomName;
         var_651.height = NaN;
         _ownerName.text = param1.ownerName;
         var_766.text = param1.description;
         var_942.refreshTags(var_335,param1.tags);
         var_766.visible = false;
         if(param1.description != "")
         {
            var_766.height = NaN;
            var_766.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_335,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_335,"thumb_down",_loc3_,onThumbDown,0);
         var_1781.visible = _loc3_;
         var_768.visible = !_loc3_;
         var_1383.visible = !_loc3_;
         var_1383.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_335,"home",param2,null,0);
         _navigator.refreshButton(var_335,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_335,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_651.y,0);
         var_335.visible = true;
         var_335.height = Util.getLowestPoint(var_335);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_341,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1384.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1139.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1134.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1136.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1135.visible = _navigator.data.canEditRoomSettings && param1;
         var_1137.visible = Util.hasVisibleChildren(var_1137);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_449.reset();
         this.var_336.active = false;
         this.var_196.active = false;
         this.var_254.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_449.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_449.reset();
         this.var_336.active = false;
         this.var_196.active = false;
         this.var_254.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_341,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_290);
         var_290.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_196.refresh(var_290);
         this.var_254.refresh(var_290);
         Util.moveChildrenToColumn(var_290,["room_details","room_buttons"],0,2);
         var_290.height = Util.getLowestPoint(var_290);
         var_290.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_935.setSelection(0,var_935.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_255);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_336.refresh(var_255);
         if(Util.hasVisibleChildren(var_255) && !this.var_254.active)
         {
            Util.moveChildrenToColumn(var_255,["event_details","event_buttons"],0,2);
            var_255.height = Util.getLowestPoint(var_255);
            var_255.visible = true;
         }
         else
         {
            var_255.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_449.reset();
         this.var_336.active = true;
         this.var_196.active = false;
         this.var_254.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_449.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_936.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_936.height = NaN;
         var_1138.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1138.height = NaN;
         Util.moveChildrenToColumn(var_622,["public_space_name","public_space_desc"],var_936.y,0);
         var_622.visible = true;
         var_622.height = Math.max(86,Util.getLowestPoint(var_622));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","UserChatlogEvent") == "true";
         if(_loc1_ && true && true && true)
         {
            var_767.visible = true;
            var_935.text = this.getEmbedData();
         }
         else
         {
            var_767.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_449.reset();
         this.var_196.load(param1);
         this.var_196.active = true;
         this.var_336.active = false;
         this.var_254.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_449.reset();
         this.var_196.active = false;
         this.var_336.active = false;
         this.var_254.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_68,false);
         _window.setParamFlag(HabboWindowParam.const_1192,true);
         var_290 = IWindowContainer(find("room_info"));
         var_335 = IWindowContainer(find("room_details"));
         var_622 = IWindowContainer(find("public_space_details"));
         var_1782 = IWindowContainer(find("owner_name_cont"));
         var_1783 = IWindowContainer(find("rating_cont"));
         var_1137 = IWindowContainer(find("room_buttons"));
         var_651 = ITextWindow(find("room_name"));
         var_936 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_766 = ITextWindow(find("room_desc"));
         var_1138 = ITextWindow(find("public_space_desc"));
         var_934 = ITextWindow(find("owner_caption"));
         var_768 = ITextWindow(find("rating_caption"));
         var_1781 = ITextWindow(find("rate_caption"));
         var_1383 = ITextWindow(find("rating_txt"));
         var_255 = IWindowContainer(find("event_info"));
         var_769 = IWindowContainer(find("event_details"));
         var_1382 = IWindowContainer(find("event_buttons"));
         var_1784 = ITextWindow(find("event_name"));
         var_623 = ITextWindow(find("event_desc"));
         var_1139 = IContainerButtonWindow(find("add_favourite_button"));
         var_1134 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1136 = IContainerButtonWindow(find("make_home_button"));
         var_1135 = IContainerButtonWindow(find("unmake_home_button"));
         var_1384 = IButtonWindow(find("room_settings_button"));
         var_1385 = IButtonWindow(find("create_event_button"));
         var_1381 = IButtonWindow(find("edit_event_button"));
         var_767 = IWindowContainer(find("embed_info"));
         var_1140 = ITextWindow(find("embed_info_txt"));
         var_935 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1139,onAddFavouriteClick);
         Util.setProcDirectly(var_1134,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1384,onRoomSettingsClick);
         Util.setProcDirectly(var_1136,onMakeHomeClick);
         Util.setProcDirectly(var_1135,onUnmakeHomeClick);
         Util.setProcDirectly(var_1385,onEventSettingsClick);
         Util.setProcDirectly(var_1381,onEventSettingsClick);
         Util.setProcDirectly(var_935,onEmbedSrcClick);
         _navigator.refreshButton(var_1139,"favourite",true,null,0);
         _navigator.refreshButton(var_1134,"favourite",true,null,0);
         _navigator.refreshButton(var_1136,"home",true,null,0);
         _navigator.refreshButton(var_1135,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_290,onHover);
         Util.setProcDirectly(var_255,onHover);
         var_934.width = var_934.textWidth;
         Util.moveChildrenToRow(var_1782,["owner_caption","owner_name"],var_934.x,var_934.y,3);
         var_768.width = var_768.textWidth;
         Util.moveChildrenToRow(var_1783,["rating_caption","rating_txt"],var_768.x,var_768.y,3);
         var_1140.height = NaN;
         Util.moveChildrenToColumn(var_767,["embed_info_txt","embed_src_txt"],var_1140.y,2);
         var_767.height = Util.getLowestPoint(var_767) + 5;
         var_2221 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1784.text = param1.eventName;
         var_623.text = param1.eventDescription;
         var_942.refreshTags(var_769,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_623.visible = false;
         if(param1.eventDescription != "")
         {
            var_623.height = NaN;
            var_623.y = Util.getLowestPoint(var_769) + 2;
            var_623.visible = true;
         }
         var_769.visible = true;
         var_769.height = Util.getLowestPoint(var_769);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_839,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
