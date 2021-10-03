package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_94:Number = 0;
      
      private var _data:String = "";
      
      private var var_1364:int = 0;
      
      private var _state:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1744:Boolean = false;
      
      private var var_2279:String = "";
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_213:String = "";
      
      private var var_1740:int = 0;
      
      private var var_1742:int = 0;
      
      private var var_1741:int = 0;
      
      private var var_1743:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1744 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1744;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_197)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_213;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_197)
         {
            var_1741 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_197)
         {
            var_1740 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_197)
         {
            var_1742 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_197)
         {
            var_213 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_197)
         {
            var_1743 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_197)
         {
            _state = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1741;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_197)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1740;
      }
      
      public function get wallY() : Number
      {
         return var_1742;
      }
      
      public function get localY() : Number
      {
         return var_1743;
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_94;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_94 = param1;
         }
      }
   }
}
