package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1912:Boolean = false;
      
      private var var_1911:Boolean = false;
      
      private var var_1591:String = "";
      
      private var _type:String = "";
      
      private var var_1910:Boolean = false;
      
      private var var_1741:Number = 0;
      
      private var var_2151:Number = 0;
      
      private var var_2152:Number = 0;
      
      private var var_2150:String = "";
      
      private var var_1743:Number = 0;
      
      private var var_1913:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2150 = param2;
         var_1591 = param3;
         var_2151 = param4;
         var_2152 = param5;
         var_1741 = param6;
         var_1743 = param7;
         var_1913 = param8;
         var_1911 = param9;
         var_1910 = param10;
         var_1912 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1913;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1912;
      }
      
      public function get localX() : Number
      {
         return var_1741;
      }
      
      public function get localY() : Number
      {
         return var_1743;
      }
      
      public function get canvasId() : String
      {
         return var_2150;
      }
      
      public function get altKey() : Boolean
      {
         return var_1911;
      }
      
      public function get spriteTag() : String
      {
         return var_1591;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2151;
      }
      
      public function get screenY() : Number
      {
         return var_2152;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1910;
      }
   }
}
