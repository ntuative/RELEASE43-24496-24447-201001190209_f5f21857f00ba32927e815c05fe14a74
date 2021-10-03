package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1852:int = -1;
      
      private var var_1272:int = -1;
      
      private var var_628:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_628 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1852;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1852 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_628.assign(param1);
         var_628.x = Math.round(var_628.x);
         var_628.y = Math.round(var_628.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1272 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_628;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1272;
      }
   }
}
