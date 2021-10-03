package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1417:int = 10;
       
      
      private var var_1479:NavigatorSettingsMessageParser;
      
      private var var_1261:int;
      
      private var var_2092:Boolean;
      
      private var var_2096:int;
      
      private var var_852:Dictionary;
      
      private var var_2244:int;
      
      private var var_2095:int;
      
      private var var_1733:int;
      
      private var var_326:Array;
      
      private var var_2093:int;
      
      private var var_566:PublicRoomShortData;
      
      private var var_413:RoomEventData;
      
      private var var_143:MsgWithRequestId;
      
      private var var_1570:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2094:Boolean;
      
      private var var_206:GuestRoomData;
      
      private var var_685:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_326 = new Array();
         var_852 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2096;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2094;
      }
      
      public function startLoading() : void
      {
         this.var_685 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2094 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_413 != null)
         {
            var_413.dispose();
         }
         var_413 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_143 != null && var_143 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_143 != null && var_143 as GuestRoomSearchResultData != null;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_685 = false;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_143 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_206;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_566 = null;
         var_206 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_566 = param1.publicSpace;
            var_413 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_413 != null)
         {
            var_413.dispose();
            var_413 = null;
         }
         if(var_566 != null)
         {
            var_566.dispose();
            var_566 = null;
         }
         if(var_206 != null)
         {
            var_206.dispose();
            var_206 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1479;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_685 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_326.length > param1)
         {
            return var_326[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2244 = param1.limit;
         this.var_1261 = param1.favouriteRoomIds.length;
         this.var_852 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_852[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_143 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_326;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_566;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1733 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2092;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_685 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_326.length)
         {
            if((var_326[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_206 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_685;
      }
      
      public function set categories(param1:Array) : void
      {
         var_326 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_2095;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2093;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1479 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_143 == null)
         {
            return;
         }
         var_143.dispose();
         var_143 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_413;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_852[param1] = !!param2 ? "yes" : null;
         var_1261 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_143 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1733;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_143 != null && var_143 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2092 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2095 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1570 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_206 != null)
         {
            var_206.dispose();
         }
         var_206 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_326)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_206 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1479.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1261 >= var_2244;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2093 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1570;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_206 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2096 = param1;
      }
   }
}
