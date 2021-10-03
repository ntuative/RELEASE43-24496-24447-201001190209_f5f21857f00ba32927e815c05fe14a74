package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1664:int;
      
      private var var_1663:String;
      
      private var var_1666:int;
      
      private var var_1660:int;
      
      private var var_624:Boolean;
      
      private var var_1662:Boolean;
      
      private var var_408:int;
      
      private var var_1100:String;
      
      private var var_1576:int;
      
      private var var_1101:int;
      
      private var _ownerName:String;
      
      private var var_651:String;
      
      private var var_1665:int;
      
      private var var_1661:RoomThumbnailData;
      
      private var var_1574:Boolean;
      
      private var var_587:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_587 = new Array();
         super();
         var_408 = param1.readInteger();
         var_624 = param1.readBoolean();
         var_651 = param1.readString();
         _ownerName = param1.readString();
         var_1576 = param1.readInteger();
         var_1664 = param1.readInteger();
         var_1665 = param1.readInteger();
         var_1100 = param1.readString();
         var_1666 = param1.readInteger();
         var_1574 = param1.readBoolean();
         var_1660 = param1.readInteger();
         var_1101 = param1.readInteger();
         var_1663 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_587.push(_loc4_);
            _loc3_++;
         }
         var_1661 = new RoomThumbnailData(param1);
         var_1662 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1665;
      }
      
      public function get roomName() : String
      {
         return var_651;
      }
      
      public function get userCount() : int
      {
         return var_1664;
      }
      
      public function get score() : int
      {
         return var_1660;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1663;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1574;
      }
      
      public function get tags() : Array
      {
         return var_587;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1662;
      }
      
      public function get event() : Boolean
      {
         return var_624;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_587 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1101;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1666;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1661;
      }
      
      public function get doorMode() : int
      {
         return var_1576;
      }
      
      public function get flatId() : int
      {
         return var_408;
      }
      
      public function get description() : String
      {
         return var_1100;
      }
   }
}
