package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1636:int;
      
      private var var_1637:int;
      
      private var var_2027:Boolean;
      
      private var var_2028:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2029:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1637 = param1;
         var_1636 = param2;
         var_2028 = param3;
         var_2029 = param4;
         var_2027 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1637,var_1636,var_2028,var_2029,int(var_2027)];
      }
      
      public function dispose() : void
      {
      }
   }
}
