package com.sulake.habbo.inventory.marketplace
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.BuyMarketplaceTokensMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceCanMakeOfferComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceConfigurationMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.MakeOfferMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.HabboInventory;
   import com.sulake.habbo.inventory.IInventoryModel;
   import com.sulake.habbo.inventory.items.FloorItem;
   import com.sulake.habbo.inventory.items.IItem;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class MarketplaceModel implements IInventoryModel
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1958:int;
      
      private var var_1959:int;
      
      private var _roomEngine:IRoomEngine;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var var_1424:int;
      
      private var _view:MarketplaceView;
      
      private var _controller:HabboInventory;
      
      private var var_1956:Boolean;
      
      private var var_1957:int;
      
      private var var_980:int;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1955:int;
      
      private var var_229:IItem;
      
      public function MarketplaceModel(param1:HabboInventory, param2:IHabboWindowManager, param3:IHabboCommunicationManager, param4:IAssetLibrary, param5:IRoomEngine, param6:IHabboLocalizationManager, param7:IHabboConfigurationManager)
      {
         super();
         _controller = param1;
         _communication = param3;
         _windowManager = param2;
         _assets = param4;
         _roomEngine = param5;
         _view = new MarketplaceView(this,_windowManager,_assets,param5,param6,param7);
      }
      
      public function set offerMaxPrice(param1:int) : void
      {
         var_1957 = param1;
      }
      
      public function makeOffer(param1:int) : void
      {
         if(var_229 == null)
         {
            return;
         }
         var _loc2_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:int = var_229 is FloorItem ? 1 : 2;
         _loc2_.send(new MakeOfferMessageComposer(param1,_loc3_,var_229.ref));
         releaseItem();
      }
      
      public function set tokenBatchPrice(param1:int) : void
      {
         var_980 = param1;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1959;
      }
      
      public function requestInitialization(param1:int = 0) : void
      {
         var _loc2_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.send(new GetMarketplaceConfigurationMessageComposer());
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_980;
      }
      
      public function proceedOfferMaking(param1:int, param2:int) : void
      {
         switch(param1)
         {
            case 1:
               _view.showMakeOffer(var_229);
               break;
            case 2:
               _view.showAlert("${inventory.marketplace.no_trading_privilege.title}","${inventory.marketplace.no_trading_privilege.info}");
               break;
            case 3:
               _view.showAlert("${inventory.marketplace.no_trading_pass.title}","${inventory.marketplace.no_trading_pass.info}");
               break;
            case 4:
               _view.showBuyTokens(var_980,var_1424);
         }
      }
      
      public function get expirationHours() : int
      {
         return var_1955;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         _controller = null;
         _communication = null;
         _windowManager = null;
         _assets = null;
         _roomEngine = null;
      }
      
      public function set offerMinPrice(param1:int) : void
      {
         var_1959 = param1;
      }
      
      public function subCategorySwitch(param1:String) : void
      {
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1956;
      }
      
      public function releaseItem() : void
      {
         if(_controller != null && false && var_229 != null)
         {
            _controller.furniModel.removeLockFrom(var_229.id);
            var_229 = null;
         }
      }
      
      public function set expirationHours(param1:int) : void
      {
         var_1955 = param1;
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1957;
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return null;
      }
      
      public function endOfferMaking(param1:int) : void
      {
         _view.showResult(param1);
      }
      
      public function categorySwitch(param1:String) : void
      {
      }
      
      public function set tokenBatchSize(param1:int) : void
      {
         var_1424 = param1;
      }
      
      public function set commission(param1:int) : void
      {
         var_1958 = param1;
      }
      
      public function buyMarketplaceTokens() : void
      {
         var _loc1_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new BuyMarketplaceTokensMessageComposer());
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1424;
      }
      
      public function startOfferMaking(param1:IItem) : void
      {
         if(var_229 != null)
         {
            return;
         }
         if(_controller == null)
         {
            return;
         }
         var_229 = param1;
         if(false)
         {
            _controller.furniModel.addLockTo(param1.id);
         }
         if(_controller.creditBalance < var_980)
         {
            _view.showNoCredits(var_980);
            return;
         }
         var _loc2_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.send(new GetMarketplaceCanMakeOfferComposer());
      }
      
      public function get commission() : int
      {
         return var_1958;
      }
      
      public function closingInventoryView() : void
      {
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         var_1956 = param1;
      }
   }
}
