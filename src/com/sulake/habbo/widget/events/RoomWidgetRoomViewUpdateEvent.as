package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_547:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_641:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_235:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1501:Point;
      
      private var var_1502:Rectangle;
      
      private var var_188:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1502 = param2;
         var_1501 = param3;
         var_188 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1502 != null)
         {
            return var_1502.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_188;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1501 != null)
         {
            return var_1501.clone();
         }
         return null;
      }
   }
}
