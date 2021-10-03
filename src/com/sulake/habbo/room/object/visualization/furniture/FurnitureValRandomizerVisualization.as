package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1070:int = 31;
      
      private static const const_1029:int = 32;
      
      private static const const_481:int = 30;
      
      private static const const_753:int = 20;
      
      private static const const_482:int = 10;
       
      
      private var var_521:Boolean = false;
      
      private var var_221:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_221 = new Array();
         super();
         super.setAnimation(const_481);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_521 = true;
            var_221 = new Array();
            var_221.push(const_1070);
            var_221.push(const_1029);
            return;
         }
         if(param1 > 0 && param1 <= const_482)
         {
            if(var_521)
            {
               var_521 = false;
               var_221 = new Array();
               if(_direction == 2)
               {
                  var_221.push(const_753 + 5 - param1);
                  var_221.push(const_482 + 5 - param1);
               }
               else
               {
                  var_221.push(const_753 + param1);
                  var_221.push(const_482 + param1);
               }
               var_221.push(const_481);
               return;
            }
            super.setAnimation(const_481);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
