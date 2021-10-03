package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1362:String;
      
      private var var_1398:String;
      
      private var var_973:String;
      
      private var var_370:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1362 = String(param1.@align);
         var_973 = String(param1.@base);
         var_1398 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_370 = Number(_loc2_);
            if(var_370 > 1)
            {
               var_370 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1362;
      }
      
      public function get ink() : String
      {
         return var_1398;
      }
      
      public function get base() : String
      {
         return var_973;
      }
      
      public function get isBlended() : Boolean
      {
         return var_370 != 1;
      }
      
      public function get blend() : Number
      {
         return var_370;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
