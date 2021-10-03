package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1428:int = 2;
      
      public static const const_285:int = 4;
      
      public static const const_1240:int = 1;
      
      public static const const_1161:int = 3;
       
      
      private var var_971:int = 0;
      
      private var var_800:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_971;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_971 = param1.readInteger();
         if(var_971 == 3)
         {
            var_800 = param1.readString();
         }
         else
         {
            var_800 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_971 = 0;
         var_800 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_800;
      }
   }
}
