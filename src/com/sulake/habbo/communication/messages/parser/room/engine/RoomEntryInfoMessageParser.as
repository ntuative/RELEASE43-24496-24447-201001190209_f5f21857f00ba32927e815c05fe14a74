package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1941:int;
      
      private var var_407:Boolean;
      
      private var var_1942:Boolean;
      
      private var var_803:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1942 = param1.readBoolean();
         if(var_1942)
         {
            var_1941 = param1.readInteger();
            var_407 = param1.readBoolean();
         }
         else
         {
            var_803 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_803 != null)
         {
            var_803.dispose();
            var_803 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1941;
      }
      
      public function get owner() : Boolean
      {
         return var_407;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1942;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_803;
      }
   }
}
