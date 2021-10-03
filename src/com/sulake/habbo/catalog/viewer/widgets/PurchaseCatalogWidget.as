package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2002:XML;
      
      private var var_1443:ITextWindow;
      
      private var var_1442:ITextWindow;
      
      private var var_2000:XML;
      
      private var var_822:IWindowContainer;
      
      private var var_2234:ITextWindow;
      
      private var var_2003:String = "";
      
      private var var_2291:IButtonWindow;
      
      private var var_2001:XML;
      
      private var var_1444:ITextWindow;
      
      private var var_2004:XML;
      
      private var var_821:IButtonWindow;
      
      private var var_160:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_431:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2000) as IWindowContainer;
               break;
            case Offer.const_375:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2004) as IWindowContainer;
               break;
            case Offer.const_469:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2002) as IWindowContainer;
               break;
            case Offer.const_527:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2001) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_822 != null)
            {
               _window.removeChild(var_822);
               var_822.dispose();
            }
            var_822 = _loc2_;
            _window.addChild(_loc2_);
            var_822.x = 0;
            var_822.y = 0;
         }
         var_1444 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1442 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1443 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2234 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_821 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_821 != null)
         {
            var_821.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_821.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_160 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_160,page,var_2003);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_2000 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_2004 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_2002 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_2001 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_899,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_2003 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_160 = param1.offer;
         attachStub(var_160.priceType);
         if(var_1444 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_160.priceInCredits));
            var_1444.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1442 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_160.priceInPixels));
            var_1442.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1443 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_160.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_160.priceInPixels));
            var_1443.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_821 != null)
         {
            var_821.enable();
         }
      }
   }
}
