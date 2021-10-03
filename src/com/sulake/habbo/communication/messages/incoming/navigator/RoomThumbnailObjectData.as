package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1438:int;
      
      private var var_1439:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1438;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1438 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1438 = this.var_1438;
         _loc1_.var_1439 = this.var_1439;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1439 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1439;
      }
   }
}
