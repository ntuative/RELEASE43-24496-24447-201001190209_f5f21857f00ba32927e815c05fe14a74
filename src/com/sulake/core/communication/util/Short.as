package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_648:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_648 = new ByteArray();
         var_648.writeShort(param1);
         var_648.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_648.position = 0;
         if(false)
         {
            _loc1_ = var_648.readShort();
            var_648.position = 0;
         }
         return _loc1_;
      }
   }
}
