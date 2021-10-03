package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1202:int = 0;
       
      
      private var var_75:Vector3d;
      
      private var _updateID:uint;
      
      private var _type:String = "";
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_88:RoomObjectModel;
      
      private var var_400:IRoomObjectEventHandler;
      
      private var var_1433:Vector3d;
      
      private var var_1969:int = 0;
      
      private var _id:int;
      
      private var var_1432:Vector3d;
      
      private var var_213:Vector3d;
      
      private var var_476:Array;
      
      public function RoomObject(param1:int, param2:uint)
      {
         super();
         _id = param1;
         var_75 = new Vector3d();
         var_213 = new Vector3d();
         var_1433 = new Vector3d();
         var_1432 = new Vector3d();
         var_476 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            var_476[_loc3_] = 0;
            _loc3_--;
         }
         var_88 = new RoomObjectModel();
         _visualization = null;
         var_400 = null;
         _updateID = 0;
         var_1969 = var_1202++;
      }
      
      public function getInstanceId() : int
      {
         return var_1969;
      }
      
      public function getId() : int
      {
         return _id;
      }
      
      public function getUpdateID() : uint
      {
         return _updateID;
      }
      
      public function dispose() : void
      {
         var_75 = null;
         var_213 = null;
         if(var_88 != null)
         {
            var_88.dispose();
            var_88 = null;
         }
         var_476 = null;
         setVisualization(null);
         setEventHandler(null);
      }
      
      public function getType() : String
      {
         return _type;
      }
      
      public function getLocation() : IVector3d
      {
         var_1433.assign(var_75);
         return var_1433;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_75.x != param1.x || var_75.y != param1.y || var_75.z != param1.z)
         {
            var_75.x = param1.x;
            var_75.y = param1.y;
            var_75.z = param1.z;
            ++_updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_213.x != param1.x || var_213.y != param1.y || var_213.z != param1.z)
         {
            var_213.x = (param1.x % 360 + 360) % 360;
            var_213.y = (param1.y % 360 + 360) % 360;
            var_213.z = (param1.z % 360 + 360) % 360;
            ++_updateID;
         }
      }
      
      public function setType(param1:String) : void
      {
         _type = param1;
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return var_400;
      }
      
      public function getDirection() : IVector3d
      {
         var_1432.assign(var_213);
         return var_1432;
      }
      
      public function setState(param1:int, param2:uint) : Boolean
      {
         if(param2 < var_476.length)
         {
            if(var_476[param2] != param1)
            {
               var_476[param2] = param1;
               ++_updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == var_400)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = var_400;
         if(_loc2_ != null)
         {
            var_400 = null;
            _loc2_.object = null;
         }
         var_400 = param1;
         if(var_400 != null)
         {
            var_400.object = this;
         }
      }
      
      public function getState(param1:uint) : int
      {
         if(param1 < var_476.length)
         {
            return var_476[param1];
         }
         return -1;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != _visualization)
         {
            if(_visualization != null)
            {
               _visualization.dispose();
            }
            _visualization = param1;
            if(_visualization != null)
            {
               _visualization.object = this;
            }
         }
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return _visualization;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return var_88;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return var_88;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return getEventHandler();
      }
   }
}
