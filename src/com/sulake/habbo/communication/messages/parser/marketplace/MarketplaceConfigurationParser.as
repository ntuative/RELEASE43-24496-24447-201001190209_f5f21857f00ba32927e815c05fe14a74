package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1957:int;
      
      private var var_980:int;
      
      private var var_1958:int;
      
      private var var_1959:int;
      
      private var var_1955:int;
      
      private var var_1424:int;
      
      private var var_1956:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1957;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_980;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1959;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1955;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1424;
      }
      
      public function get commission() : int
      {
         return var_1958;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1956;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1956 = param1.readBoolean();
         var_1958 = param1.readInteger();
         var_980 = param1.readInteger();
         var_1424 = param1.readInteger();
         var_1959 = param1.readInteger();
         var_1957 = param1.readInteger();
         var_1955 = param1.readInteger();
         return true;
      }
   }
}
