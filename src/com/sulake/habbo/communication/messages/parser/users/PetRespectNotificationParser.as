package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1626:int;
      
      private var var_1094:PetData;
      
      private var var_1627:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1626;
      }
      
      public function get petData() : PetData
      {
         return var_1094;
      }
      
      public function flush() : Boolean
      {
         var_1094 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1627;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1626 = param1.readInteger();
         var_1627 = param1.readInteger();
         var_1094 = new PetData(param1);
         return true;
      }
   }
}
