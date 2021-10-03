package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_979:int;
      
      private var var_1571:int;
      
      private var var_1326:int;
      
      private var var_119:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1326 = param1.readInteger();
         var_1571 = param1.readInteger();
         var_979 = param1.readInteger();
         var_119 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1326);
      }
      
      public function get reportedUserId() : int
      {
         return var_979;
      }
      
      public function get callerUserId() : int
      {
         return var_1571;
      }
      
      public function get callId() : int
      {
         return var_1326;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_119;
      }
   }
}
