package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1015:String;
      
      private var var_1716:int;
      
      private var var_1715:int;
      
      private var var_1364:int;
      
      private var var_1719:int;
      
      private var _category:int;
      
      private var var_2276:int;
      
      private var var_1721:int;
      
      private var var_1718:int;
      
      private var var_1720:int;
      
      private var var_1714:int;
      
      private var var_1717:Boolean;
      
      private var var_1316:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1716 = param1;
         var_1015 = param2;
         var_1715 = param3;
         var_1720 = param4;
         _category = param5;
         var_1316 = param6;
         var_1364 = param7;
         var_1718 = param8;
         var_1721 = param9;
         var_1714 = param10;
         var_1719 = param11;
         var_1717 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1720;
      }
      
      public function get extra() : int
      {
         return var_1364;
      }
      
      public function get stuffData() : String
      {
         return var_1316;
      }
      
      public function get groupable() : Boolean
      {
         return var_1717;
      }
      
      public function get creationMonth() : int
      {
         return var_1714;
      }
      
      public function get roomItemID() : int
      {
         return var_1715;
      }
      
      public function get itemType() : String
      {
         return var_1015;
      }
      
      public function get itemID() : int
      {
         return var_1716;
      }
      
      public function get songID() : int
      {
         return var_1364;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1718;
      }
      
      public function get creationYear() : int
      {
         return var_1719;
      }
      
      public function get creationDay() : int
      {
         return var_1721;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
