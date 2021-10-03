package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1316:String;
      
      private var var_1015:String;
      
      private var var_2033:Boolean;
      
      private var var_1364:int;
      
      private var var_2020:int;
      
      private var var_2035:Boolean;
      
      private var var_1565:String = "";
      
      private var var_2031:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1216:int;
      
      private var var_2034:Boolean;
      
      private var var_1986:int = -1;
      
      private var var_2032:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_2020 = param1;
         var_1015 = param2;
         _objId = param3;
         var_1216 = param4;
         _category = param5;
         var_1316 = param6;
         var_2033 = param7;
         var_2031 = param8;
         var_2034 = param9;
         var_2035 = param10;
         var_2032 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1565;
      }
      
      public function get extra() : int
      {
         return var_1364;
      }
      
      public function get classId() : int
      {
         return var_1216;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2035;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2033;
      }
      
      public function get stripId() : int
      {
         return var_2020;
      }
      
      public function get stuffData() : String
      {
         return var_1316;
      }
      
      public function get songId() : int
      {
         return var_1986;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1565 = param1;
         var_1364 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1015;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_2032;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2034;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2031;
      }
   }
}
