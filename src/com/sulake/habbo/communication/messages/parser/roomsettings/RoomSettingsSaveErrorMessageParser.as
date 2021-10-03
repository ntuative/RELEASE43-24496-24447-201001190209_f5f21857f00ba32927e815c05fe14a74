package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1564:int = 9;
      
      public static const const_1567:int = 4;
      
      public static const const_1515:int = 1;
      
      public static const const_1262:int = 10;
      
      public static const const_1431:int = 2;
      
      public static const const_1179:int = 7;
      
      public static const const_1284:int = 11;
      
      public static const const_1441:int = 3;
      
      public static const const_1370:int = 8;
      
      public static const const_1164:int = 5;
      
      public static const const_1546:int = 6;
      
      public static const const_1290:int = 12;
       
      
      private var var_2170:String;
      
      private var _roomId:int;
      
      private var var_1085:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2170;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1085 = param1.readInteger();
         var_2170 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1085;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
