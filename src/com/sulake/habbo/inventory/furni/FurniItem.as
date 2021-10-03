package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2020:int;
      
      private var var_2031:Boolean;
      
      private var var_1986:int;
      
      private var var_1316:String;
      
      private var var_2087:Boolean = false;
      
      private var var_2032:int;
      
      private var var_423:int;
      
      private var var_1015:String;
      
      private var var_1565:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1216:int;
      
      private var var_2034:Boolean;
      
      private var var_2086:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_2020 = param1;
         var_1015 = param2;
         _objId = param3;
         var_1216 = param4;
         var_1316 = param5;
         var_2031 = param6;
         var_2034 = param7;
         var_2032 = param8;
         var_1565 = param9;
         var_1986 = param10;
         var_423 = -1;
      }
      
      public function get songId() : int
      {
         return var_1986;
      }
      
      public function get iconCallbackId() : int
      {
         return var_423;
      }
      
      public function get expiryTime() : int
      {
         return var_2032;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2086 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2087 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_423 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2034;
      }
      
      public function get slotId() : String
      {
         return var_1565;
      }
      
      public function get classId() : int
      {
         return var_1216;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2031;
      }
      
      public function get stuffData() : String
      {
         return var_1316;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_2020;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2087;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2086;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1015;
      }
   }
}
