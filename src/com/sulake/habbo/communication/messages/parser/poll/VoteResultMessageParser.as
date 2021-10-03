package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1232:int;
      
      private var var_1032:String;
      
      private var var_649:Array;
      
      private var var_954:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_649.slice();
      }
      
      public function flush() : Boolean
      {
         var_1032 = "";
         var_954 = [];
         var_649 = [];
         var_1232 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1232;
      }
      
      public function get question() : String
      {
         return var_1032;
      }
      
      public function get choices() : Array
      {
         return var_954.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1032 = param1.readString();
         var_954 = [];
         var_649 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_954.push(param1.readString());
            var_649.push(param1.readInteger());
            _loc3_++;
         }
         var_1232 = param1.readInteger();
         return true;
      }
   }
}
