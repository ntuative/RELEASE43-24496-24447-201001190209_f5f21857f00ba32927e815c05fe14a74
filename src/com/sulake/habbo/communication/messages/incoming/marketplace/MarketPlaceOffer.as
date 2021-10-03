package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1150:int;
      
      private var var_1564:int = -1;
      
      private var var_357:int;
      
      private var _furniType:int;
      
      private var var_1563:int;
      
      private var _offerId:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         super();
         _offerId = param1;
         var_1563 = param2;
         _furniType = param3;
         var_1150 = param4;
         var_357 = param5;
         var_1564 = param6;
      }
      
      public function get furniId() : int
      {
         return var_1563;
      }
      
      public function get status() : int
      {
         return var_357;
      }
      
      public function get furniType() : int
      {
         return _furniType;
      }
      
      public function get price() : int
      {
         return var_1150;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1564;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
