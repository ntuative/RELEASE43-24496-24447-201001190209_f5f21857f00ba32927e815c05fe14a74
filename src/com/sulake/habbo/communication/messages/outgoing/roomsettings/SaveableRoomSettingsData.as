package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var var_1712:Boolean;
      
      private var var_1709:Array;
      
      private var var_1662:Boolean;
      
      private var var_1100:String;
      
      private var var_1572:Boolean;
      
      private var var_1711:int;
      
      private var var_1576:int;
      
      private var var_1101:int;
      
      private var var_1575:Boolean;
      
      private var _roomId:int;
      
      private var var_1574:Boolean;
      
      private var _name:String;
      
      private var _password:String;
      
      private var var_587:Array;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1712 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1711;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1711 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_587;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1662;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1574;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1709 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_587 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1712;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function get categoryId() : int
      {
         return var_1101;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1662 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1574 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1575 = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1572 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1709;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1575;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1572;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1576 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1576;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1101 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1100 = param1;
      }
      
      public function get description() : String
      {
         return var_1100;
      }
   }
}
