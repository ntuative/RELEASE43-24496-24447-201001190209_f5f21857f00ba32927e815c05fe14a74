package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_595:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_479:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_595);
         var_479 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_479;
      }
   }
}
