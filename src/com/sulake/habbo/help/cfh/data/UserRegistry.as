package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1083:int = 80;
       
      
      private var var_473:Map;
      
      private var var_651:String = "";
      
      private var var_1199:Array;
      
      public function UserRegistry()
      {
         var_473 = new Map();
         var_1199 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_473.getValue(var_1199.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_651;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_473.getValue(param1) != null)
         {
            var_473.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_651);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_651 == "")
         {
            var_1199.push(param1);
         }
         var_473.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_473;
      }
      
      public function unregisterRoom() : void
      {
         var_651 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_473.length > const_1083)
         {
            _loc1_ = var_473.getKey(0);
            var_473.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_651 = param1;
         if(var_651 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
