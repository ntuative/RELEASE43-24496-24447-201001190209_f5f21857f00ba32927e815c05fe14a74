package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_749:LegacyWallGeometry = null;
      
      private var var_523:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_524:TileHeightMap = null;
      
      private var var_1696:String = null;
      
      private var _roomId:int = 0;
      
      private var var_750:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_749 = new LegacyWallGeometry();
         var_750 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_524 != null)
         {
            var_524.dispose();
         }
         var_524 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1696 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_749;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_750;
      }
      
      public function dispose() : void
      {
         if(var_524 != null)
         {
            var_524.dispose();
            var_524 = null;
         }
         if(var_749 != null)
         {
            var_749.dispose();
            var_749 = null;
         }
         if(var_750 != null)
         {
            var_750.dispose();
            var_750 = null;
         }
         if(var_523 != null)
         {
            var_523.dispose();
            var_523 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_524;
      }
      
      public function get worldType() : String
      {
         return var_1696;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_523 != null)
         {
            var_523.dispose();
         }
         var_523 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_523;
      }
   }
}
