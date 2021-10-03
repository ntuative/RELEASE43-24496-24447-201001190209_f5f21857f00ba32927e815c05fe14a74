package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRedeemClubPromoMessage extends RoomWidgetMessage
   {
      
      public static const const_545:String = "rwrcp_redeem_club_promo";
       
      
      private var var_2162:String;
      
      private var var_2163:Boolean;
      
      public function RoomWidgetRedeemClubPromoMessage(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         var_2162 = param2;
         var_2163 = param3;
      }
      
      public function get code() : String
      {
         return var_2162;
      }
      
      public function get method_17() : Boolean
      {
         return var_2163;
      }
   }
}
