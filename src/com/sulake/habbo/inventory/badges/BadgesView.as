package com.sulake.habbo.inventory.badges
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.inventory.IInventoryView;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class BadgesView implements IInventoryView
   {
       
      
      private var _view:IWindowContainer;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_933:IItemGridWindow;
      
      private var _disposed:Boolean = false;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_88:BadgesModel;
      
      private var var_932:IItemGridWindow;
      
      public function BadgesView(param1:BadgesModel, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IHabboLocalizationManager)
      {
         super();
         var_88 = param1;
         _assetLibrary = param3;
         _windowManager = param2;
         var _loc5_:IAsset = _assetLibrary.getAssetByName("inventory_badges_xml");
         var _loc6_:XmlAsset = XmlAsset(_loc5_);
         var _loc7_:ICoreWindowManager = ICoreWindowManager(_windowManager);
         _view = IWindowContainer(_loc7_.buildFromXML(XML(_loc6_.content)));
         _view.visible = false;
         _view.procedure = windowEventProc;
         var_932 = _view.findChildByName("inactive_items") as IItemGridWindow;
         var_932.procedure = inactiveGridEventProc;
         var_933 = _view.findChildByName("active_items") as IItemGridWindow;
         var_933.procedure = activeGridEventProc;
      }
      
      private function setBadgeDescriptionImage(param1:BitmapData) : void
      {
         if(_view == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _view.findChildByName("badgeDescriptionImage") as IBitmapWrapperWindow;
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.bitmap == null)
         {
            _loc2_.bitmap = new BitmapData(_loc2_.width,_loc2_.height,false);
         }
         if(param1 == null)
         {
            param1 = new BitmapData(_loc2_.width,_loc2_.height);
         }
         _loc2_.bitmap.fillRect(_loc2_.bitmap.rect,4294967295);
         var _loc3_:Point = new Point((_loc2_.width - param1.width) / 2,(_loc2_.height - param1.height) / 2);
         _loc2_.bitmap.copyPixels(param1,param1.rect,_loc3_,null,null,false);
         _loc2_.invalidate();
      }
      
      private function windowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            switch(param2.name)
            {
               case "wearBadge_button":
                  _loc3_ = var_88.getSelectedBadge();
                  if(_loc3_ != null)
                  {
                     var_88.toggleBadgeWearing(_loc3_.type);
                  }
            }
         }
      }
      
      private function setBadgeName(param1:String) : void
      {
         if(_view == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc2_:ITextWindow = _view.findChildByName("badgeName") as ITextWindow;
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            _loc2_.text = "";
         }
         else
         {
            _loc2_.text = "";
            _loc2_.text = param1;
         }
      }
      
      public function method_14() : void
      {
         updateListViews();
         updateActionView();
      }
      
      private function activeGridEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            _loc3_ = var_933.getGridItemIndex(param1.window);
            _loc4_ = var_88.getBadgeFromActive(_loc3_);
            if(_loc4_ != null)
            {
               var_88.setBadgeSelected(_loc4_.type);
            }
         }
      }
      
      private function updateActionView() : void
      {
         var _loc3_:* = null;
         if(_view == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc1_:IButtonWindow = _view.findChildByName("wearBadge_button") as IButtonWindow;
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Badge = var_88.getSelectedBadge();
         if(_loc2_ == null)
         {
            _loc1_.disable();
            setBadgeName(null);
            setBadgeDescriptionText(null);
            setBadgeDescriptionImage(null);
         }
         else
         {
            if(_loc2_.isInUse)
            {
               _loc1_.caption = "${inventory.badges.clearbadge}";
               setBadgeName("${badge_name_" + _loc2_.type + "}");
               setBadgeDescriptionText("${badge_desc_" + _loc2_.type + "}");
               setBadgeDescriptionImage(_loc2_.iconImage);
            }
            else
            {
               _loc1_.caption = "${inventory.badges.wearbadge}";
               setBadgeName("${badge_name_" + _loc2_.type + "}");
               setBadgeDescriptionText("${badge_desc_" + _loc2_.type + "}");
               setBadgeDescriptionImage(_loc2_.iconImage);
            }
            _loc3_ = var_88.getBadges(1);
            if(_loc3_ != null && _loc3_.length >= var_88.getMaxActiveCount() && !_loc2_.isInUse)
            {
               _loc1_.disable();
            }
            else
            {
               _loc1_.enable();
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _windowManager = null;
            var_88 = null;
            _view = null;
            _disposed = true;
         }
      }
      
      private function updateListViews() : void
      {
         var _loc2_:* = null;
         if(_view == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var_932.removeGridItems();
         var_933.removeGridItems();
         var _loc1_:Array = var_88.getBadges(0);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_] as Badge;
            if(!_loc2_.isInUse)
            {
               var_932.addGridItem(_loc2_.window);
               _loc2_.window.procedure = inactiveGridEventProc;
            }
            _loc3_++;
         }
         var _loc4_:Array = var_88.getBadges(1);
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            _loc2_ = _loc4_[_loc3_] as Badge;
            var_933.addGridItem(_loc2_.window);
            _loc2_.window.procedure = activeGridEventProc;
            _loc3_++;
         }
      }
      
      private function setBadgeDescriptionText(param1:String) : void
      {
         if(_view == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc2_:ITextWindow = _view.findChildByName("badgeDescriptionText") as ITextWindow;
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            _loc2_.text = "${inventory.effects.defaultdescription}";
         }
         else
         {
            _loc2_.text = "";
            _loc2_.text = param1;
         }
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         if(_view == null)
         {
            return null;
         }
         if(false)
         {
            return null;
         }
         return _view;
      }
      
      private function inactiveGridEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            _loc3_ = var_932.getGridItemIndex(param1.window);
            _loc4_ = var_88.getBadgeFromInactive(_loc3_);
            if(_loc4_ != null)
            {
               var_88.setBadgeSelected(_loc4_.type);
            }
         }
      }
   }
}
