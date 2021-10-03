package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_560:Array;
      
      private var var_1150:int;
      
      private var var_1325:Array;
      
      private var var_561:Array;
      
      private var var_1956:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1956 = _loc2_.isWrappingEnabled;
         var_1150 = _loc2_.wrappingPrice;
         var_1325 = _loc2_.stuffTypes;
         var_561 = _loc2_.boxTypes;
         var_560 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_560;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1325;
      }
      
      public function get price() : int
      {
         return var_1150;
      }
      
      public function get boxTypes() : Array
      {
         return var_561;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1956;
      }
   }
}
