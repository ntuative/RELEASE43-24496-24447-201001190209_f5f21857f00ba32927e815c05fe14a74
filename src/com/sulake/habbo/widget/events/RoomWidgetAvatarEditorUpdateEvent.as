package com.sulake.habbo.widget.events
{
   public class RoomWidgetAvatarEditorUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_869:String = "RWAEUE_HIDE_CLUB_PROMO";
      
      public static const const_597:String = "RWUE_AVATAR_EDITOR_CLOSED";
      
      public static const const_1292:String = "RWAEUE_MODE_TRIAL";
      
      public static const const_980:String = "RWAEUE_MODE_FULL";
      
      public static const const_384:String = "RWAEUE_SHOW_CLUB_PROMO";
       
      
      private var var_1639:String;
      
      private var var_1640:String;
      
      public function RoomWidgetAvatarEditorUpdateEvent(param1:String, param2:String = "", param3:String = "RWAEUE_MODE_FULL", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_1639 = param2;
         var_1640 = param3;
      }
      
      public function get promoMode() : String
      {
         return var_1640;
      }
      
      public function get promoImageUrl() : String
      {
         return var_1639;
      }
   }
}
