package com.sulake.habbo.inventory.common
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ThumbListManager
   {
       
      
      private var var_775:int;
      
      private var var_538:BitmapData;
      
      private var var_946:IThumbListDataProvider;
      
      private var _assets:IAssetLibrary;
      
      private var var_100:int;
      
      private var var_219:int;
      
      private var var_945:int;
      
      private var var_33:BitmapData;
      
      private var _thumbWidth:int;
      
      private var var_457:int = 1;
      
      private var var_2284:int;
      
      private var var_2283:int;
      
      private var _itemBgImageSelected:BitmapData;
      
      public function ThumbListManager(param1:IAssetLibrary, param2:IThumbListDataProvider, param3:String, param4:String, param5:int, param6:int)
      {
         super();
         _assets = param1;
         var_946 = param2;
         var _loc7_:BitmapDataAsset = BitmapDataAsset(_assets.getAssetByName(param3));
         if(_loc7_ != null)
         {
            var_538 = BitmapData(_loc7_.content);
         }
         var _loc8_:BitmapDataAsset = BitmapDataAsset(_assets.getAssetByName(param4));
         if(_loc8_ != null)
         {
            _itemBgImageSelected = BitmapData(_loc8_.content);
         }
         _thumbWidth = var_538.width;
         var_100 = var_538.height;
         var_945 = param5;
         var_775 = param6;
         var_219 = Math.floor(var_945 / _thumbWidth);
         var_33 = new BitmapData(var_945,var_775);
      }
      
      public function resolveIndexFromImageLocation(param1:Point) : int
      {
         var _loc2_:Point = resolveGridLocationFromImage(param1);
         return int(_loc2_.y * var_219 + _loc2_.x);
      }
      
      public function updateListItem(param1:int) : void
      {
         var _loc2_:IThumbListDrawableItem = getDrawableItem(param1);
         replaceItemImage(param1,_loc2_);
      }
      
      private function resolveLastItemGridLoc() : Point
      {
         var _loc1_:Array = getList();
         return resolveGridLocationFromIndex(_loc1_.length - 1);
      }
      
      private function removeItemInImage(param1:Point) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         if(param1.x >= var_219)
         {
            return;
         }
         if(param1.y >= var_457)
         {
            return;
         }
         var _loc4_:int = var_219 - param1.x - 1;
         _loc2_ = new Rectangle((param1.x + 1) * _thumbWidth,param1.y * var_100,_loc4_ * _thumbWidth,var_100);
         _loc3_ = new Point(param1.x * _thumbWidth,param1.y * var_100);
         var _loc5_:BitmapData = new BitmapData(_loc2_.width + _thumbWidth,_loc2_.height);
         _loc5_.fillRect(_loc5_.rect,4294967295);
         _loc5_.copyPixels(var_33,_loc2_,new Point(0,0),null,null,true);
         var_33.copyPixels(_loc5_,_loc5_.rect,_loc3_,null,null,true);
         if(param1.y < var_457 - 1)
         {
            _loc7_ = 0 - _thumbWidth;
            _loc8_ = 0 - (param1.y + 1) * var_100;
            _loc9_ = new BitmapData(_loc7_,_loc8_);
            _loc2_ = new Rectangle(_thumbWidth,(param1.y + 1) * var_100,_loc9_.width,_loc9_.height);
            _loc9_.copyPixels(var_33,_loc2_,new Point(0,0),null,null,true);
            _loc10_ = new BitmapData(_thumbWidth,_loc2_.height);
            _loc2_.x = 0;
            _loc2_.width = _thumbWidth;
            _loc10_.copyPixels(var_33,_loc2_,new Point(0,0),null,null,true);
            var_33.fillRect(new Rectangle(0,0 - var_100,var_33.width,var_100),4294967295);
            _loc3_ = new Point(0 - _thumbWidth,_loc2_.y - var_100);
            var_33.copyPixels(_loc10_,_loc10_.rect,_loc3_,null,null,true);
            _loc3_ = new Point(0,_loc2_.y);
            var_33.copyPixels(_loc9_,_loc9_.rect,_loc3_,null,null,true);
         }
         var _loc6_:int = getList().length - 1;
         if(_loc6_ > 0)
         {
            param1 = resolveGridLocationFromIndex(_loc6_);
            if(param1.x == var_219 - 1)
            {
               _loc11_ = new BitmapData(var_33.width,0 - var_100);
               _loc2_ = new Rectangle(0,0,var_33.width,0 - var_100);
               _loc11_.copyPixels(var_33,_loc2_,new Point(0,0),null,null,true);
               var_33 = _loc11_;
               --var_457;
            }
         }
         if(var_33.height < var_775)
         {
            _loc12_ = new BitmapData(var_33.width,var_775);
            _loc12_.fillRect(_loc12_.rect,4294967295);
            _loc12_.copyPixels(var_33,var_33.rect,new Point(0,0),null,null,true);
            var_33 = _loc12_;
         }
      }
      
      private function getDrawableItem(param1:int) : IThumbListDrawableItem
      {
         var _loc2_:Array = getList();
         if(param1 >= 0 && param1 < _loc2_.length)
         {
            return _loc2_[param1] as IThumbListDrawableItem;
         }
         return null;
      }
      
      private function createThumbImage(param1:BitmapData = null, param2:Boolean = false) : BitmapData
      {
         var _loc4_:* = null;
         var _loc3_:BitmapData = new BitmapData(var_538.width,var_538.height);
         if(param2)
         {
            _loc3_.copyPixels(_itemBgImageSelected,var_538.rect,new Point(0,0),null,null,false);
         }
         else
         {
            _loc3_.copyPixels(var_538,var_538.rect,new Point(0,0),null,null,false);
         }
         if(param1 != null)
         {
            _loc4_ = new Point((_loc3_.width - param1.width) / 2,(_loc3_.height - param1.height) / 2);
            _loc3_.copyPixels(param1,param1.rect,_loc4_,null,null,true);
         }
         return _loc3_;
      }
      
      public function removeItemInLocation(param1:Point) : void
      {
         var _loc2_:Point = resolveGridLocationFromImage(param1);
         removeItemInImage(_loc2_);
      }
      
      private function getList() : Array
      {
         var _loc1_:* = null;
         if(var_946 != null)
         {
            _loc1_ = var_946.getDrawableList();
         }
         return !!_loc1_ ? _loc1_ : new Array();
      }
      
      public function dispose() : void
      {
         var_946 = null;
         var_33 = null;
      }
      
      public function updateImageFromList() : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var_457 = resolveRowCountFromList();
         if(var_457 == 0)
         {
            var_33 = new BitmapData(var_945,var_775);
            return;
         }
         var_33 = new BitmapData(Math.max(var_219 * _thumbWidth,var_945),Math.max(var_457 * var_100,var_775),true,16777215);
         var_33.fillRect(var_33.rect,4294967295);
         var _loc1_:int = 0;
         var _loc2_:Array = getList();
         var _loc3_:int = 0;
         while(_loc3_ < var_457)
         {
            _loc4_ = 0;
            while(_loc4_ < var_219)
            {
               if(_loc1_ < _loc2_.length)
               {
                  _loc5_ = _loc2_[_loc1_];
                  if(_loc5_ != null)
                  {
                     _loc6_ = createThumbImage(_loc5_.iconImage,_loc5_.isSelected);
                     var_33.copyPixels(_loc6_,_loc6_.rect,new Point(_loc4_ * _thumbWidth,_loc3_ * var_100),null,null,true);
                  }
                  _loc1_++;
               }
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      public function getListImage() : BitmapData
      {
         return var_33;
      }
      
      public function addItemAsFirst(param1:IThumbListDrawableItem) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         if(param1 == null)
         {
            return;
         }
         var _loc3_:Point = resolveLastItemGridLoc();
         if(_loc3_.x == var_219 && var_33.height < _loc3_.y * var_100)
         {
            _loc2_ = new BitmapData(var_33.width,var_33.height + var_100);
         }
         else
         {
            _loc2_ = new BitmapData(var_33.width,var_33.height);
         }
         var _loc5_:BitmapData = createThumbImage(param1.iconImage,param1.isSelected);
         _loc2_.copyPixels(_loc5_,_loc5_.rect,new Point(0,0),null,null,true);
         _loc4_ = new Rectangle(0,0,_thumbWidth * (var_219 - 1),var_100);
         _loc2_.copyPixels(var_33,_loc4_,new Point(_thumbWidth,0),null,null,true);
         _loc4_ = new Rectangle(_thumbWidth * (var_219 - 1),0,_thumbWidth,var_33.height);
         _loc2_.copyPixels(var_33,_loc4_,new Point(0,var_100),null,null,true);
         _loc4_ = new Rectangle(0,var_100,_thumbWidth * (var_219 - 1),0 - var_100);
         _loc2_.copyPixels(var_33,_loc4_,new Point(_thumbWidth,var_100),null,null,true);
         var_33 = _loc2_;
      }
      
      private function resolveRowCountFromList() : int
      {
         var _loc1_:Array = getList();
         return int(Math.ceil(_loc1_.length / var_219));
      }
      
      private function resolveGridLocationFromImage(param1:Point) : Point
      {
         var _loc2_:int = Math.floor(param1.y / var_100);
         var _loc3_:int = Math.floor(param1.x / _thumbWidth);
         return new Point(_loc3_,_loc2_);
      }
      
      private function resolveGridLocationFromIndex(param1:int) : Point
      {
         var _loc2_:int = Math.floor(param1 / var_219);
         var _loc3_:int = param1 % var_219;
         return new Point(_loc3_,_loc2_);
      }
      
      public function replaceItemImage(param1:int, param2:IThumbListDrawableItem) : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc3_:Point = resolveGridLocationFromIndex(param1);
         var _loc4_:Point = new Point(_loc3_.x * _thumbWidth,_loc3_.y * var_100);
         var _loc5_:BitmapData = createThumbImage(param2.iconImage,param2.isSelected);
         var_33.copyPixels(_loc5_,_loc5_.rect,_loc4_,null,null,true);
      }
      
      public function removeItemInIndex(param1:int) : void
      {
         var _loc2_:Point = resolveGridLocationFromIndex(param1);
         removeItemInImage(_loc2_);
      }
   }
}
