package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2121:String;
      
      private var var_800:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2121 = param1;
         var_800 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2121;
      }
      
      public function get parameter() : String
      {
         return var_800;
      }
   }
}
