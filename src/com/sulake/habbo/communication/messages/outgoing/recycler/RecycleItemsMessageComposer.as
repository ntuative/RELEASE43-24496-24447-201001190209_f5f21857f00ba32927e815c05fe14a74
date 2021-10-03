package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_811:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_811 = new Array();
         var_811.push(param1.length);
         var_811 = var_811.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_811;
      }
   }
}
