package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_931:String = "inventory_badges";
      
      public static const const_1351:String = "inventory_clothes";
      
      public static const const_1188:String = "inventory_furniture";
      
      public static const const_714:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_991:String = "inventory_effects";
       
      
      private var var_1863:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_714);
         var_1863 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1863;
      }
   }
}
