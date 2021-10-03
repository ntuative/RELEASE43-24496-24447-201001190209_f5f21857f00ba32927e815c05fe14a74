package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1860:int;
      
      private var var_1859:String;
      
      private var var_1581:int;
      
      private var _disposed:Boolean;
      
      private var var_1858:int;
      
      private var var_1834:String;
      
      private var var_1183:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1834 = param1.readString();
         var_1860 = param1.readInteger();
         var_1581 = param1.readInteger();
         var_1859 = param1.readString();
         var_1858 = param1.readInteger();
         var_1183 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1858;
      }
      
      public function get worldId() : int
      {
         return var_1581;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1834;
      }
      
      public function get unitPort() : int
      {
         return var_1860;
      }
      
      public function get castLibs() : String
      {
         return var_1859;
      }
      
      public function get nodeId() : int
      {
         return var_1183;
      }
   }
}
