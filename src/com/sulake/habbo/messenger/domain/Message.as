package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_629:int = 2;
      
      public static const const_972:int = 6;
      
      public static const const_511:int = 1;
      
      public static const const_608:int = 3;
      
      public static const const_907:int = 4;
      
      public static const const_682:int = 5;
       
      
      private var var_1754:String;
      
      private var var_898:int;
      
      private var var_1755:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_898 = param2;
         var_1755 = param3;
         var_1754 = param4;
      }
      
      public function get time() : String
      {
         return var_1754;
      }
      
      public function get senderId() : int
      {
         return var_898;
      }
      
      public function get messageText() : String
      {
         return var_1755;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
