package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_333:Number = 0.5;
      
      private static const const_738:int = 3;
      
      private static const const_1033:Number = 1;
       
      
      private var var_1616:Boolean = false;
      
      private var var_1612:Boolean = false;
      
      private var var_901:int = 0;
      
      private var var_249:Vector3d = null;
      
      private var var_1613:int = 0;
      
      private var var_1615:int = 0;
      
      private var var_1617:Boolean = false;
      
      private var var_1611:int = -2;
      
      private var var_1620:Boolean = false;
      
      private var var_1619:int = 0;
      
      private var var_1614:int = -1;
      
      private var var_373:Vector3d = null;
      
      private var var_1618:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1613;
      }
      
      public function get targetId() : int
      {
         return var_1614;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1619 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1613 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1616 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1614 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1612 = param1;
      }
      
      public function dispose() : void
      {
         var_373 = null;
         var_249 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_373 == null)
         {
            var_373 = new Vector3d();
         }
         var_373.assign(param1);
         var_901 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1611;
      }
      
      public function get screenHt() : int
      {
         return var_1618;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1615 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_249;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1618 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1619;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1616;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1612;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_373 != null && var_249 != null)
         {
            ++var_901;
            _loc2_ = Vector3d.dif(var_373,var_249);
            if(_loc2_.length <= const_333)
            {
               var_249 = var_373;
               var_373 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_333 * (const_738 + 1))
               {
                  _loc2_.mul(const_333);
               }
               else if(var_901 <= const_738)
               {
                  _loc2_.mul(const_333);
               }
               else
               {
                  _loc2_.mul(const_1033);
               }
               var_249 = Vector3d.sum(var_249,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1617 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1615;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1620 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1611 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_249 != null)
         {
            return;
         }
         var_249 = new Vector3d();
         var_249.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1617;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1620;
      }
   }
}
