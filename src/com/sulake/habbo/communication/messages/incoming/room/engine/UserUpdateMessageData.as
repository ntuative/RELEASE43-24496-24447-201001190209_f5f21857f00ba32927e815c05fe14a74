package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_94:Number = 0;
      
      private var var_213:int = 0;
      
      private var var_2064:int = 0;
      
      private var var_2104:Number = 0;
      
      private var var_2103:Number = 0;
      
      private var var_2106:Number = 0;
      
      private var var_2102:Number = 0;
      
      private var var_2105:Boolean = false;
      
      private var var_93:Number = 0;
      
      private var _id:int = 0;
      
      private var var_189:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_189 = [];
         super();
         _id = param1;
         var_93 = param2;
         _y = param3;
         var_94 = param4;
         var_2102 = param5;
         var_213 = param6;
         var_2064 = param7;
         var_2104 = param8;
         var_2103 = param9;
         var_2106 = param10;
         var_2105 = param11;
         var_189 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_94;
      }
      
      public function get dir() : int
      {
         return var_213;
      }
      
      public function get localZ() : Number
      {
         return var_2102;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2105;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_2064;
      }
      
      public function get targetX() : Number
      {
         return var_2104;
      }
      
      public function get targetY() : Number
      {
         return var_2103;
      }
      
      public function get targetZ() : Number
      {
         return var_2106;
      }
      
      public function get x() : Number
      {
         return var_93;
      }
      
      public function get actions() : Array
      {
         return var_189.slice();
      }
   }
}
