package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_985:Boolean;
      
      private var var_987:Boolean;
      
      private var var_986:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_985;
      }
      
      public function get method_7() : Boolean
      {
         return var_987;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_986 = param1.readBoolean();
         var_987 = param1.readBoolean();
         var_985 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_986;
      }
      
      public function flush() : Boolean
      {
         var_986 = false;
         var_987 = false;
         var_985 = false;
         return true;
      }
   }
}
