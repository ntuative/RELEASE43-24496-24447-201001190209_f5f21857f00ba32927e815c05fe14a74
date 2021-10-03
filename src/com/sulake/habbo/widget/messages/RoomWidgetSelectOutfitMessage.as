package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_850:String = "select_outfit";
       
      
      private var var_1669:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_850);
         var_1669 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1669;
      }
   }
}
