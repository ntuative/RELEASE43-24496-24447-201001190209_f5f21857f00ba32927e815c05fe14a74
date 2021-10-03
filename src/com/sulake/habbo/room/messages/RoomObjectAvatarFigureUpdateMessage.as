package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1544:String;
      
      private var var_508:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_508 = param1;
         var_1544 = param2;
      }
      
      public function get race() : String
      {
         return var_1544;
      }
      
      public function get figure() : String
      {
         return var_508;
      }
   }
}
