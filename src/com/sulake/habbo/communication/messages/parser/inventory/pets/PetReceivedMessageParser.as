package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_992:PetData;
      
      private var var_1448:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1448 = param1.readBoolean();
         var_992 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1448 + ", " + var_992.id + ", " + var_992.name + ", " + pet.figure + ", " + var_992.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1448;
      }
      
      public function get pet() : PetData
      {
         return var_992;
      }
   }
}
