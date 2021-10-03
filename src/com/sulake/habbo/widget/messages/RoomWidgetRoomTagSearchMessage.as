package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_551:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1602:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_551);
         var_1602 = param1;
      }
      
      public function get tag() : String
      {
         return var_1602;
      }
   }
}
