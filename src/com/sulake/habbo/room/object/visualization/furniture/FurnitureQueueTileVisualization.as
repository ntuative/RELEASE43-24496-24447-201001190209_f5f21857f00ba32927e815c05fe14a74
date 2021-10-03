package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1080:int = 1;
      
      private static const const_1029:int = 3;
      
      private static const const_1079:int = 2;
      
      private static const const_1078:int = 15;
       
      
      private var var_813:int;
      
      private var var_221:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_221 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1079)
         {
            var_221 = new Array();
            var_221.push(const_1080);
            var_813 = const_1078;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_813 > 0)
         {
            --var_813;
         }
         if(var_813 == 0)
         {
            if(false)
            {
               super.setAnimation(var_221.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
