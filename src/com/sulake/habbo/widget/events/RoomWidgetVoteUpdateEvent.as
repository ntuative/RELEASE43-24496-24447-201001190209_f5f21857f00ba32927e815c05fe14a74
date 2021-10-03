package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_117:String = "RWPUE_VOTE_RESULT";
      
      public static const const_127:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1232:int;
      
      private var var_1032:String;
      
      private var var_649:Array;
      
      private var var_954:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1032 = param2;
         var_954 = param3;
         var_649 = param4;
         if(var_649 == null)
         {
            var_649 = [];
         }
         var_1232 = param5;
      }
      
      public function get votes() : Array
      {
         return var_649.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1232;
      }
      
      public function get question() : String
      {
         return var_1032;
      }
      
      public function get choices() : Array
      {
         return var_954.slice();
      }
   }
}
