package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2119:int;
      
      private var var_1111:String;
      
      private var var_2117:int;
      
      private var var_2120:int;
      
      private var var_2118:int;
      
      private var var_2116:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1111;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2116;
      }
      
      public function get responseType() : int
      {
         return var_2120;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2117;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1111 = param1.readString();
         var_2117 = param1.readInteger();
         var_2119 = param1.readInteger();
         var_2118 = param1.readInteger();
         var_2120 = param1.readInteger();
         var_2116 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2119;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2118;
      }
   }
}
