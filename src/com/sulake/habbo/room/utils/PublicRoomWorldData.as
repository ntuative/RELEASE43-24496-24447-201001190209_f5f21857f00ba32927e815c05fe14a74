package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1937:Number = 1;
      
      private var var_188:Number = 1;
      
      private var var_1696:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1696 = param1;
         var_188 = param2;
         var_1937 = param3;
      }
      
      public function get scale() : Number
      {
         return var_188;
      }
      
      public function get heightScale() : Number
      {
         return var_1937;
      }
   }
}
