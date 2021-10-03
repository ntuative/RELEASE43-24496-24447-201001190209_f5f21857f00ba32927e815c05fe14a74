package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_717:String = "RWUAM_RESPECT_USER";
      
      public static const const_571:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_519:String = "RWUAM_START_TRADING";
      
      public static const const_707:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_634:String = "RWUAM_WHISPER_USER";
      
      public static const const_537:String = "RWUAM_IGNORE_USER";
      
      public static const const_403:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_565:String = "RWUAM_BAN_USER";
      
      public static const const_681:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_446:String = "RWUAM_KICK_USER";
      
      public static const const_544:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_567:String = " RWUAM_RESPECT_PET";
      
      public static const const_432:String = "RWUAM_KICK_BOT";
      
      public static const const_1183:String = "RWUAM_TRAIN_PET";
      
      public static const const_517:String = "RWUAM_PICKUP_PET";
      
      public static const const_501:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_524:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
