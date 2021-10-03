package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_217:String = "RWUIUE_PEER";
      
      public static const const_200:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1327:String = "BOT";
      
      public static const const_791:int = 2;
      
      public static const const_1365:int = 0;
      
      public static const const_985:int = 3;
       
      
      private var var_1160:String = "";
      
      private var var_1877:Boolean = false;
      
      private var var_1827:int = 0;
      
      private var var_1875:int = 0;
      
      private var var_1884:Boolean = false;
      
      private var var_1159:String = "";
      
      private var var_1880:Boolean = false;
      
      private var var_788:int = 0;
      
      private var var_1873:Boolean = true;
      
      private var var_952:int = 0;
      
      private var var_1883:Boolean = false;
      
      private var var_1081:Boolean = false;
      
      private var var_1882:Boolean = false;
      
      private var var_1874:int = 0;
      
      private var var_1879:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_278:Array;
      
      private var var_1082:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1831:int = 0;
      
      private var var_1878:Boolean = false;
      
      private var var_1881:int = 0;
      
      private var var_1876:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_278 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1875;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1875 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1877;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1873;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1873 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1880 = param1;
      }
      
      public function get motto() : String
      {
         return var_1160;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1883 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1081;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1160 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1878;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1876;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1081 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1879;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1874 = param1;
      }
      
      public function get badges() : Array
      {
         return var_278;
      }
      
      public function get amIController() : Boolean
      {
         return var_1884;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1884 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1878 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1881 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1876 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1159 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1880;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1883;
      }
      
      public function get carryItem() : int
      {
         return var_1874;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1082;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1082 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_788 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1881;
      }
      
      public function get realName() : String
      {
         return var_1159;
      }
      
      public function set webID(param1:int) : void
      {
         var_1831 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_278 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1882 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1879 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_788;
      }
      
      public function get webID() : int
      {
         return var_1831;
      }
      
      public function set groupId(param1:int) : void
      {
         var_952 = param1;
      }
      
      public function get xp() : int
      {
         return var_1827;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1877 = param1;
      }
      
      public function get groupId() : int
      {
         return var_952;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1882;
      }
      
      public function set xp(param1:int) : void
      {
         var_1827 = param1;
      }
   }
}
