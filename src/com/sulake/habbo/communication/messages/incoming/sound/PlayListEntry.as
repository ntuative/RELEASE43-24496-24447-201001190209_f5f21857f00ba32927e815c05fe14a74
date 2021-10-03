package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1986:int;
      
      private var var_1988:int = 0;
      
      private var var_1985:String;
      
      private var var_1989:int;
      
      private var var_1987:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1986 = param1;
         var_1989 = param2;
         var_1987 = param3;
         var_1985 = param4;
      }
      
      public function get length() : int
      {
         return var_1989;
      }
      
      public function get name() : String
      {
         return var_1987;
      }
      
      public function get creator() : String
      {
         return var_1985;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1988;
      }
      
      public function get id() : int
      {
         return var_1986;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1988 = param1;
      }
   }
}
