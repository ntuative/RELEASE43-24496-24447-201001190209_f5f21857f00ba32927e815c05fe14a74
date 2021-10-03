package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_315:String = "WE_CHILD_RESIZED";
      
      public static const const_1347:String = "WE_CLOSE";
      
      public static const const_1319:String = "WE_DESTROY";
      
      public static const const_153:String = "WE_CHANGE";
      
      public static const const_1173:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1437:String = "WE_PARENT_RESIZE";
      
      public static const const_87:String = "WE_UPDATE";
      
      public static const const_1244:String = "WE_MAXIMIZE";
      
      public static const const_450:String = "WE_DESTROYED";
      
      public static const const_952:String = "WE_UNSELECT";
      
      public static const const_1245:String = "WE_MAXIMIZED";
      
      public static const const_1570:String = "WE_UNLOCKED";
      
      public static const const_471:String = "WE_CHILD_REMOVED";
      
      public static const const_163:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1195:String = "WE_ACTIVATE";
      
      public static const const_230:String = "WE_ENABLED";
      
      public static const const_448:String = "WE_CHILD_RELOCATED";
      
      public static const const_1139:String = "WE_CREATE";
      
      public static const const_549:String = "WE_SELECT";
      
      public static const const_155:String = "";
      
      public static const const_1435:String = "WE_LOCKED";
      
      public static const const_1439:String = "WE_PARENT_RELOCATE";
      
      public static const const_1575:String = "WE_CHILD_REMOVE";
      
      public static const const_1467:String = "WE_CHILD_RELOCATE";
      
      public static const const_1524:String = "WE_LOCK";
      
      public static const const_237:String = "WE_FOCUSED";
      
      public static const const_722:String = "WE_UNSELECTED";
      
      public static const const_996:String = "WE_DEACTIVATED";
      
      public static const const_1267:String = "WE_MINIMIZED";
      
      public static const const_1548:String = "WE_ARRANGED";
      
      public static const const_1498:String = "WE_UNLOCK";
      
      public static const const_1513:String = "WE_ATTACH";
      
      public static const const_1154:String = "WE_OPEN";
      
      public static const const_1270:String = "WE_RESTORE";
      
      public static const const_1583:String = "WE_PARENT_RELOCATED";
      
      public static const const_1322:String = "WE_RELOCATE";
      
      public static const const_1453:String = "WE_CHILD_RESIZE";
      
      public static const const_1495:String = "WE_ARRANGE";
      
      public static const const_1221:String = "WE_OPENED";
      
      public static const const_1229:String = "WE_CLOSED";
      
      public static const const_1455:String = "WE_DETACHED";
      
      public static const const_1543:String = "WE_UPDATED";
      
      public static const const_1339:String = "WE_UNFOCUSED";
      
      public static const const_427:String = "WE_RELOCATED";
      
      public static const const_1273:String = "WE_DEACTIVATE";
      
      public static const const_198:String = "WE_DISABLED";
      
      public static const const_531:String = "WE_CANCEL";
      
      public static const const_631:String = "WE_ENABLE";
      
      public static const const_1334:String = "WE_ACTIVATED";
      
      public static const const_1135:String = "WE_FOCUS";
      
      public static const const_1461:String = "WE_DETACH";
      
      public static const const_1253:String = "WE_RESTORED";
      
      public static const const_1151:String = "WE_UNFOCUS";
      
      public static const const_55:String = "WE_SELECTED";
      
      public static const const_1258:String = "WE_PARENT_RESIZED";
      
      public static const const_1162:String = "WE_CREATED";
      
      public static const const_1518:String = "WE_ATTACHED";
      
      public static const const_1203:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1531:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1301:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1531 = param3;
         var_1301 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1301;
      }
      
      public function get related() : IWindow
      {
         return var_1531;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1301 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
