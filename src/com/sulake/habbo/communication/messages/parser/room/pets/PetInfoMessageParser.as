package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1687:int;
      
      private var var_508:String;
      
      private var var_1686:int;
      
      private var var_1626:int;
      
      private var var_1689:int;
      
      private var var_2159:int;
      
      private var _nutrition:int;
      
      private var var_1284:int;
      
      private var var_2160:int;
      
      private var var_2158:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1679:int;
      
      private var var_2157:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1686;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2159;
      }
      
      public function flush() : Boolean
      {
         var_1284 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2160;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2158;
      }
      
      public function get maxNutrition() : int
      {
         return var_2157;
      }
      
      public function get figure() : String
      {
         return var_508;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1626;
      }
      
      public function get petId() : int
      {
         return var_1284;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1284 = param1.readInteger();
         _name = param1.readString();
         var_1686 = param1.readInteger();
         var_2160 = param1.readInteger();
         var_1689 = param1.readInteger();
         var_2158 = param1.readInteger();
         _energy = param1.readInteger();
         var_2159 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2157 = param1.readInteger();
         var_508 = param1.readString();
         var_1626 = param1.readInteger();
         var_1679 = param1.readInteger();
         var_1687 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1689;
      }
      
      public function get ownerId() : int
      {
         return var_1679;
      }
      
      public function get age() : int
      {
         return var_1687;
      }
   }
}
