package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1015:int;
      
      private var var_1245:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1015 = param1;
         var_1245 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1015;
      }
      
      public function get itemName() : String
      {
         return var_1245;
      }
   }
}
