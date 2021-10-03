package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_533:String = "RWOCM_CLUB_MAIN";
      
      public static const const_611:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1930:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_611);
         var_1930 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1930;
      }
   }
}
