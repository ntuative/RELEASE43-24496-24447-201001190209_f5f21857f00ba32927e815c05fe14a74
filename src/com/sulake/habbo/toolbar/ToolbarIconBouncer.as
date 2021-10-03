package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2021:Number;
      
      private var var_552:Number = 0;
      
      private var var_2022:Number;
      
      private var var_553:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2021 = param1;
         var_2022 = param2;
      }
      
      public function update() : void
      {
         var_553 += var_2022;
         var_552 += var_553;
         if(var_552 > 0)
         {
            var_552 = 0;
            var_553 = var_2021 * -1 * var_553;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_553 = param1;
         var_552 = 0;
      }
      
      public function get location() : Number
      {
         return var_552;
      }
   }
}
