package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_860:String = "price_type_none";
      
      public static const const_356:String = "pricing_model_multi";
      
      public static const const_431:String = "price_type_credits";
      
      public static const const_469:String = "price_type_credits_and_pixels";
      
      public static const const_383:String = "pricing_model_bundle";
      
      public static const const_410:String = "pricing_model_single";
      
      public static const const_527:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1332:String = "pricing_model_unknown";
      
      public static const const_375:String = "price_type_pixels";
       
      
      private var var_755:int;
      
      private var _offerId:int;
      
      private var var_756:int;
      
      private var var_382:String;
      
      private var var_530:String;
      
      private var var_1724:int;
      
      private var var_637:ICatalogPage;
      
      private var var_1125:String;
      
      private var var_383:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1125 = param1.localizationId;
         var_755 = param1.priceInCredits;
         var_756 = param1.priceInPixels;
         var_637 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_382;
      }
      
      public function get page() : ICatalogPage
      {
         return var_637;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1724 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_383;
      }
      
      public function get localizationId() : String
      {
         return var_1125;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_756;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1125 = "";
         var_755 = 0;
         var_756 = 0;
         var_637 = null;
         if(var_383 != null)
         {
            var_383.dispose();
            var_383 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_530;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1724;
      }
      
      public function get priceInCredits() : int
      {
         return var_755;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_382 = const_410;
            }
            else
            {
               var_382 = const_356;
            }
         }
         else if(param1.length > 1)
         {
            var_382 = const_383;
         }
         else
         {
            var_382 = const_1332;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_382)
         {
            case const_410:
               var_383 = new SingleProductContainer(this,param1);
               break;
            case const_356:
               var_383 = new MultiProductContainer(this,param1);
               break;
            case const_383:
               var_383 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_382);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_755 > 0 && var_756 > 0)
         {
            var_530 = const_469;
         }
         else if(var_755 > 0)
         {
            var_530 = const_431;
         }
         else if(var_756 > 0)
         {
            var_530 = const_375;
         }
         else
         {
            var_530 = const_860;
         }
      }
   }
}
