package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1423:String;
      
      private var var_2136:int;
      
      private var var_2139:int;
      
      private var var_2138:int;
      
      private var var_2137:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2136 = param1.readInteger();
         var_2138 = param1.readInteger();
         var_2139 = param1.readInteger();
         var_2137 = param1.readString();
         var_1423 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1423;
      }
      
      public function get hour() : int
      {
         return var_2136;
      }
      
      public function get minute() : int
      {
         return var_2138;
      }
      
      public function get chatterName() : String
      {
         return var_2137;
      }
      
      public function get chatterId() : int
      {
         return var_2139;
      }
   }
}
