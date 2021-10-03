package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_508:String;
      
      private var var_1686:int;
      
      private var var_2063:String;
      
      private var var_889:int;
      
      private var var_1284:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1284;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1284 = param1.readInteger();
         var_2063 = param1.readString();
         var_1686 = param1.readInteger();
         var_508 = param1.readString();
         var_889 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2063;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_508;
      }
      
      public function get petType() : int
      {
         return var_889;
      }
      
      public function get level() : int
      {
         return var_1686;
      }
   }
}
