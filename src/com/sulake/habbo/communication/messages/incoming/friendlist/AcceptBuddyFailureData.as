package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1085:int;
      
      private var var_734:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_734 = param1.readString();
         this.var_1085 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_734;
      }
      
      public function get errorCode() : int
      {
         return this.var_1085;
      }
   }
}
