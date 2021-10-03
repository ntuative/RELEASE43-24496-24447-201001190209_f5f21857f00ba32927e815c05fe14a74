package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_211:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1678:Boolean = false;
      
      private var var_1675:int = 0;
      
      private var var_1676:int = 0;
      
      private var var_1677:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_211,param5,param6);
         var_1677 = param1;
         var_1676 = param2;
         var_1675 = param3;
         var_1678 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1675;
      }
      
      public function get periodsLeft() : int
      {
         return var_1676;
      }
      
      public function get daysLeft() : int
      {
         return var_1677;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1678;
      }
   }
}
