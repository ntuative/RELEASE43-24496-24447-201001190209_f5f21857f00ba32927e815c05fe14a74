package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1317:String = "F";
      
      public static const const_939:String = "M";
       
      
      private var var_93:Number = 0;
      
      private var var_508:String = "";
      
      private var var_1829:int = 0;
      
      private var var_1828:String = "";
      
      private var var_1825:int = 0;
      
      private var var_1827:int = 0;
      
      private var var_1826:String = "";
      
      private var var_1282:String = "";
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_213:int = 0;
      
      private var var_1830:String = "";
      
      private var _name:String = "";
      
      private var var_1831:int = 0;
      
      private var _y:Number = 0;
      
      private var var_94:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_94;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_213;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_197)
         {
            var_213 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_197)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1829;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_197)
         {
            var_1825 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1830;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_197)
         {
            var_1826 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_197)
         {
            var_1830 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_197)
         {
            var_1827 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_197)
         {
            var_508 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_197)
         {
            var_1829 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_197)
         {
            var_1282 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1825;
      }
      
      public function get groupID() : String
      {
         return var_1826;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_197)
         {
            var_1831 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_197)
         {
            var_1828 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function get sex() : String
      {
         return var_1282;
      }
      
      public function get figure() : String
      {
         return var_508;
      }
      
      public function get webID() : int
      {
         return var_1831;
      }
      
      public function get custom() : String
      {
         return var_1828;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_94 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_197)
         {
            var_93 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_93;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1827;
      }
   }
}
