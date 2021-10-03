package com.sulake.core.communication.messages
{
   public interface IMessageClassManager
   {
       
      
      function getMessageComposerID(param1:IMessageComposer) : int;
      
      function method_12(param1:int) : Array;
      
      function registerMessages(param1:IMessageConfiguration) : Boolean;
   }
}
