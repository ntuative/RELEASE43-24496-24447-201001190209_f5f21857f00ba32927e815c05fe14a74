package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_909:int = 0;
      
      private var _data:String = "";
      
      private var var_1364:int = -1;
      
      private var _state:int = 0;
      
      private var _type:int = 0;
      
      private var var_907:int = 0;
      
      private var var_2279:String = "";
      
      private var var_2032:int = 0;
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_213:int = 0;
      
      private var var_2168:String = null;
      
      private var var_93:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_94:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_197)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_213;
      }
      
      public function get extra() : int
      {
         return var_1364;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_197)
         {
            var_213 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_197)
         {
            var_93 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_197)
         {
            var_1364 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_94;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_197)
         {
            _state = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_2032;
      }
      
      public function get staticClass() : String
      {
         return var_2168;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_197)
         {
            var_2032 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_197)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_197)
         {
            var_2168 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_197)
         {
            var_909 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_197)
         {
            var_907 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_94 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_909;
      }
      
      public function get x() : Number
      {
         return var_93;
      }
      
      public function get sizeY() : int
      {
         return var_907;
      }
   }
}
