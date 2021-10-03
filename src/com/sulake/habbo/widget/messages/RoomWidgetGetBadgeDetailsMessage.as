package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_690:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_952:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_690);
         var_952 = param1;
      }
      
      public function get groupId() : int
      {
         return var_952;
      }
   }
}
