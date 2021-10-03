package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1904:Boolean = false;
      
      private var var_1908:int = 0;
      
      private var var_1907:int = 0;
      
      private var var_1906:int = 0;
      
      private var var_1389:int = 0;
      
      private var var_1905:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1389 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1908;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1904;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1904 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1908 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1907 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1389;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1906 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1907;
      }
      
      public function get pixelBalance() : int
      {
         return var_1906;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1905 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1905;
      }
   }
}
