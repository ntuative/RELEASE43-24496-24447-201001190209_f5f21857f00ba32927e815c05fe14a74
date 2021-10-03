package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_664:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var var_155:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
      {
         super(param1);
         var_155 = param2;
      }
      
      public function get method_1() : int
      {
         return var_155;
      }
   }
}
