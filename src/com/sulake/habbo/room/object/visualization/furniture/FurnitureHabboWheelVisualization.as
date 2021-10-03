package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1070:int = 31;
      
      private static const const_1029:int = 32;
      
      private static const const_753:int = 10;
      
      private static const const_482:int = 20;
       
      
      private var var_521:Boolean = false;
      
      private var var_221:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_221 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_521 = true;
            var_221 = new Array();
            var_221.push(const_1070);
            var_221.push(const_1029);
            return;
         }
         if(param1 > 0 && param1 <= const_753)
         {
            if(var_521)
            {
               var_521 = false;
               var_221 = new Array();
               var_221.push(const_753 + param1);
               var_221.push(const_482 + param1);
               var_221.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
