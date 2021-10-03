package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1366:String = "door";
      
      public static const const_400:String = "window";
      
      public static const const_677:String = "RORMUM_ADD_MASK";
      
      public static const const_441:String = "RORMUM_ADD_MASK";
      
      public static const const_187:String = "hole";
       
      
      private var var_1557:String = "";
      
      private var var_1559:String = "";
      
      private var var_1556:String = "window";
      
      private var var_1558:Vector3d = null;
      
      private var _type:String = "";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         _type = param1;
         var_1559 = param2;
         var_1557 = param3;
         if(param4 != null)
         {
            var_1558 = new Vector3d(param4.x,param4.y,param4.z);
         }
         var_1556 = param5;
      }
      
      public function get maskCategory() : String
      {
         return var_1556;
      }
      
      public function get maskId() : String
      {
         return var_1559;
      }
      
      public function get maskLocation() : IVector3d
      {
         return var_1558;
      }
      
      public function get maskType() : String
      {
         return var_1557;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
