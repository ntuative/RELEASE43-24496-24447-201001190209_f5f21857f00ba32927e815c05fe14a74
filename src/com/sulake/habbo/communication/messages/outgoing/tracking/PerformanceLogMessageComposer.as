package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_937:int = 0;
      
      private var var_1156:int = 0;
      
      private var var_1785:String = "";
      
      private var var_938:int = 0;
      
      private var var_1820:String = "";
      
      private var var_1819:int = 0;
      
      private var var_1386:String = "";
      
      private var var_1821:int = 0;
      
      private var var_1818:int = 0;
      
      private var var_1789:String = "";
      
      private var var_1822:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1821 = param1;
         var_1789 = param2;
         var_1386 = param3;
         var_1785 = param4;
         var_1820 = param5;
         if(param6)
         {
            var_1156 = 1;
         }
         else
         {
            var_1156 = 0;
         }
         var_1819 = param7;
         var_1818 = param8;
         var_938 = param9;
         var_1822 = param10;
         var_937 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1821,var_1789,var_1386,var_1785,var_1820,var_1156,var_1819,var_1818,var_938,var_1822,var_937];
      }
      
      public function dispose() : void
      {
      }
   }
}
