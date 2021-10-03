package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1194:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_964:String = "DisconnectReasonTimeout";
      
      public static const const_703:String = "DisconnectReasonDisconnected";
      
      public static const const_285:String = "DisconnectReasonBanned";
      
      public static const const_901:String = "DisconnectReasonLoggedOut";
      
      public static const const_843:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_21 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_703;
            case 0:
               return const_703;
            case 1:
               return const_901;
            case 1009:
            case 2:
               return const_843;
            case 3:
               return const_964;
            case 4:
               return const_1194;
            default:
               return const_703;
         }
      }
   }
}
