package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_119:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1664:int;
      
      private var var_408:int;
      
      private var var_624:RoomData;
      
      private var var_1679:int;
      
      private var _ownerName:String;
      
      private var var_1960:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_408 = param1.readInteger();
         var_1664 = param1.readInteger();
         var_1960 = param1.readBoolean();
         var_1679 = param1.readInteger();
         _ownerName = param1.readString();
         var_119 = new RoomData(param1);
         var_624 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1664;
      }
      
      public function get event() : RoomData
      {
         return var_624;
      }
      
      public function get room() : RoomData
      {
         return var_119;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_119 != null)
         {
            var_119.dispose();
            var_119 = null;
         }
         if(var_624 != null)
         {
            var_624.dispose();
            var_624 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_408;
      }
      
      public function get ownerId() : int
      {
         return var_1679;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1960;
      }
   }
}
