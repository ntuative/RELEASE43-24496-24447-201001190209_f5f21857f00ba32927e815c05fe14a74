package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1111:String = "";
      
      private var var_1112:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1112 = "";
         var_1111 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1111;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1112 = param1.readString();
         var_1111 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1112;
      }
   }
}
