package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.display.BitmapData;
   
   public class ProductContainer extends ProductGridItem implements IGetImageListener, IProductContainer, IGridItem
   {
       
      
      private var var_844:Array;
      
      private var var_423:int;
      
      protected var var_160:Offer;
      
      public function ProductContainer(param1:Offer, param2:Array)
      {
         super();
         var_160 = param1;
         var_844 = param2;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         super.dispose();
         for each(_loc1_ in var_844)
         {
            _loc1_.dispose();
         }
         var_844 = null;
         var_423 = 0;
      }
      
      public function get products() : Array
      {
         return var_844;
      }
      
      public function initProductIcon(param1:IRoomEngine) : void
      {
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         setIconImage(param2);
      }
      
      public function get firstProduct() : IProduct
      {
         return var_844[0] as IProduct;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_423 = param1;
      }
      
      public function get iconCallbackId() : int
      {
         return var_423;
      }
      
      public function get offer() : Offer
      {
         return var_160;
      }
   }
}
