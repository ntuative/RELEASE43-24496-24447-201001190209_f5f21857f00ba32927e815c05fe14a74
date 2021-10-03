package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_117:String = "RSPE_VOTE_RESULT";
      
      public static const const_127:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1232:int = 0;
      
      private var var_1032:String = "";
      
      private var var_649:Array;
      
      private var var_954:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_954 = [];
         var_649 = [];
         super(param1,param2,param7,param8);
         var_1032 = param3;
         var_954 = param4;
         var_649 = param5;
         if(var_649 == null)
         {
            var_649 = [];
         }
         var_1232 = param6;
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
