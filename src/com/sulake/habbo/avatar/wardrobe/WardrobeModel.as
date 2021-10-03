package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.common.CategoryData;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.communication.messages.incoming.avatar.OutfitData;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class WardrobeModel implements IAvatarEditorCategoryModel
   {
      
      public static const const_1434:String = "hot_looks";
      
      public static const const_1532:String = "my_looks";
       
      
      private var _controller:HabboAvatarEditor;
      
      private var _view:WardrobeView;
      
      private var var_514:Dictionary;
      
      private var var_765:Boolean = false;
      
      private var var_732:Boolean = true;
      
      private var _gender:String;
      
      private var var_151:Array;
      
      public function WardrobeModel(param1:HabboAvatarEditor, param2:String = "")
      {
         super();
         _controller = param1;
         _gender = param2;
         var_151 = new Array();
         var_514 = new Dictionary();
         var_514["null"] = new Array();
         var_514["null"] = new Array();
         var_514["undefined.index"] = 0;
         var_514["undefined.index"] = 0;
         initMyLooks();
         requestHotLooks();
      }
      
      private function requestHotLooks() : void
      {
         var _loc1_:String = _controller.configuration.getKey("avatareditor.promohabbos");
         var _loc2_:URLRequest = new URLRequest(_loc1_);
         var _loc3_:AssetLoaderStruct = _controller.assets.loadAssetFromFile("hotLooksConfiguration",_loc2_,"text/xml");
         _loc3_.addEventListener(AssetLoaderEvent.const_30,onHotLooksConfiguration);
      }
      
      public function toggleItemSelection(param1:String, param2:int) : void
      {
      }
      
      public function closingEditorView() : void
      {
         reset();
      }
      
      public function reset() : void
      {
         if(var_732)
         {
            if(_view != null)
            {
               _view.dispose();
               _view = null;
            }
            var_765 = false;
         }
         var_732 = true;
      }
      
      private function init() : void
      {
         _view = new WardrobeView(this,controller.windowManager,controller.assets);
         updateView();
         var_765 = true;
      }
      
      public function storeNewMyLook(param1:int) : void
      {
         var _loc2_:Outfit = var_151[param1];
         if(_loc2_ != null)
         {
            _loc2_.dispose();
         }
         var _loc3_:Outfit = new Outfit(_controller,_controller.figureData.getFigureString(),_controller.gender);
         var_151[param1] = _loc3_;
         if(false)
         {
            _controller.handler.saveWardrobeOutfit(param1 + 1,_loc3_);
         }
         updateView();
      }
      
      public function categorySwitch(param1:String) : void
      {
      }
      
      public function updateView() : void
      {
         if(_view != null)
         {
            _view.updateMyLooks(1);
            _view.updateHotLooks();
         }
      }
      
      public function get controller() : HabboAvatarEditor
      {
         return _controller;
      }
      
      public function getCategoryContent(param1:String) : CategoryData
      {
         return null;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var_732 = true;
         reset();
         for each(_loc1_ in var_151)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         var_151 = null;
      }
      
      public function get hotLooks() : Array
      {
         return var_514["null"];
      }
      
      private function resetMyLooks() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_151)
         {
            _loc1_.dispose();
         }
         var_151 = [];
      }
      
      public function updateMyLooks(param1:int, param2:Array) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         Logger.log("Got wardrobe in state: " + param1);
         resetMyLooks();
         initMyLooks();
         for each(_loc4_ in param2)
         {
            _loc5_ = var_151[_loc4_.slotId - 1];
            if(_loc5_ != null)
            {
               _loc5_.dispose();
            }
            _loc3_ = new Outfit(_controller,_loc4_.figureString,_loc4_.gender);
            var_151[_loc4_.slotId - 1] = _loc3_;
         }
         if(_view != null)
         {
            _view.updateMyLooks(param1);
         }
      }
      
      public function get myLooks() : Array
      {
         return var_151;
      }
      
      public function toggleColourSelection(param1:String, param2:int) : void
      {
      }
      
      public function selectMyLook(param1:int) : void
      {
         var _loc2_:Outfit = var_151[param1];
         if(_loc2_ != null)
         {
            if(_loc2_.figure == "")
            {
               return;
            }
            _controller.loadAvatarInEditor(_loc2_.figure,_loc2_.gender,_controller.isHabboClubMember);
         }
      }
      
      public function selectHotLook(param1:int) : void
      {
         var _loc2_:Array = var_514["null"];
         var _loc3_:Outfit = _loc2_[param1];
         var_732 = false;
         if(_loc3_ != null)
         {
            if(_loc3_.figure == "")
            {
               return;
            }
            _controller.loadAvatarInEditor(_loc3_.figure,_loc3_.gender,_controller.isHabboClubMember);
         }
      }
      
      private function initMyLooks() : void
      {
         var _loc1_:* = null;
         var_151 = [];
         while(true)
         {
            _loc1_ = new Outfit(_controller,"","");
            var_151.push(_loc1_);
         }
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         if(!var_765)
         {
            init();
         }
         return _view.getWindowContainer();
      }
      
      private function onHotLooksConfiguration(param1:Event = null) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:XmlAsset = _controller.assets.getAssetByName("hotLooksConfiguration") as XmlAsset;
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.content as XML;
            for each(_loc5_ in _loc4_.habbo)
            {
               _loc6_ = new Outfit(_controller,_loc5_.@figure,_loc5_.@gender);
               (var_514[_loc6_.gender] as Array).push(_loc6_);
            }
         }
         else
         {
            Logger.log("Could not retrieve Hot Looks from the server.");
         }
      }
   }
}
