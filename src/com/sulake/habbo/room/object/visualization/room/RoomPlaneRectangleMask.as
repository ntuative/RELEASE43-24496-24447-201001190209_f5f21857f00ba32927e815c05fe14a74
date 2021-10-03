package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1811:Number = 0;
      
      private var var_1757:Number = 0;
      
      private var var_1756:Number = 0;
      
      private var var_1812:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1757 = param1;
         var_1756 = param2;
         var_1811 = param3;
         var_1812 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1757;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1811;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1756;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1812;
      }
   }
}
