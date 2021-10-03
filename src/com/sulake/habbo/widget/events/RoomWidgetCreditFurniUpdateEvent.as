package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditFurniUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_525:String = "RWCFUE_CREDIT_FURNI_UPDATE";
       
      
      private var var_155:int;
      
      private var var_2147:Number;
      
      public function RoomWidgetCreditFurniUpdateEvent(param1:String, param2:int, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_2147 = param3;
         var_155 = param2;
      }
      
      public function get creditValue() : Number
      {
         return var_2147;
      }
      
      public function get method_1() : int
      {
         return var_155;
      }
   }
}
