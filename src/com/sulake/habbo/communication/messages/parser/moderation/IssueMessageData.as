package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_139:int = 1;
      
      public static const const_1198:int = 3;
      
      public static const const_414:int = 2;
       
      
      private var var_1923:int;
      
      private var var_1860:int;
      
      private var var_1920:int;
      
      private var var_1581:int;
      
      private var _state:int;
      
      private var var_408:int;
      
      private var var_1167:int;
      
      private var var_1918:int;
      
      private var var_979:int;
      
      private var _roomResources:String;
      
      private var var_1914:int;
      
      private var var_1915:int;
      
      private var var_1921:String;
      
      private var var_1922:String;
      
      private var var_1919:int = 0;
      
      private var var_1189:String;
      
      private var _message:String;
      
      private var var_1917:int;
      
      private var var_1924:String;
      
      private var var_1101:int;
      
      private var var_651:String;
      
      private var var_1916:String;
      
      private var var_1416:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_979 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1919 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1915;
      }
      
      public function set roomName(param1:String) : void
      {
         var_651 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1914 = param1;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_651;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1581 = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1860;
      }
      
      public function get priority() : int
      {
         return var_1923 + var_1919;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1918 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1922;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1416) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1101;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1915 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1167;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1921 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1914;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1581;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1916 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1189 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1918;
      }
      
      public function set priority(param1:int) : void
      {
         var_1923 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1860 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1921;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1920 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1922 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1917 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1189;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1167 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1920;
      }
      
      public function set flatId(param1:int) : void
      {
         var_408 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1101 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1416 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1917;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1924 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1416;
      }
      
      public function get reportedUserId() : int
      {
         return var_979;
      }
      
      public function get flatId() : int
      {
         return var_408;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1916;
      }
      
      public function get reporterUserName() : String
      {
         return var_1924;
      }
   }
}
