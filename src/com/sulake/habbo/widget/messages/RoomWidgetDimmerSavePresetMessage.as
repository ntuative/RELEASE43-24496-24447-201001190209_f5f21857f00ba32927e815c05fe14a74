package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_675:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1636:int;
      
      private var var_1637:int;
      
      private var var_1638:Boolean;
      
      private var var_918:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_675);
         var_1637 = param1;
         var_1636 = param2;
         _color = param3;
         var_918 = param4;
         var_1638 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1636;
      }
      
      public function get presetNumber() : int
      {
         return var_1637;
      }
      
      public function get brightness() : int
      {
         return var_918;
      }
      
      public function get apply() : Boolean
      {
         return var_1638;
      }
   }
}
