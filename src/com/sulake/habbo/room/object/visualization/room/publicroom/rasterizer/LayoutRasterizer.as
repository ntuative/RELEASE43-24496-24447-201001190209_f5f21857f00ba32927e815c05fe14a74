package com.sulake.habbo.room.object.visualization.room.publicroom.rasterizer
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectSpriteVisualization;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public class LayoutRasterizer
   {
       
      
      private var var_977:Point = null;
      
      private var var_469:Array;
      
      private var var_976:LayoutRasterizerData = null;
      
      private var var_1181:String = "";
      
      private var var_1940:Boolean = false;
      
      private var var_645:String;
      
      private var _adImgIndex:int = -1;
      
      private var var_468:Array;
      
      private var var_1938:Vector3d;
      
      private var var_67:Map = null;
      
      private var var_1939:String = "";
      
      private var _offsetX:int;
      
      private var var_850:int;
      
      private var var_344:Array;
      
      private var var_470:Boolean = true;
      
      private var _adBgIndex:int = -1;
      
      private var _assetCollection:IGraphicAssetCollection;
      
      private var var_1108:XMLList;
      
      private var var_975:int = 0;
      
      public function LayoutRasterizer()
      {
         var_344 = [];
         var_468 = [];
         var_469 = [];
         super();
         var_67 = new Map();
         var_645 = "";
         var_977 = new Point();
      }
      
      public function exchangeElementGraphics(param1:String, param2:String) : void
      {
         var_470 = true;
         var _loc3_:int = var_344.indexOf(param1);
         if(_loc3_ < 0)
         {
            var_344.push(param1);
            var_468.push(param2);
            var_469.push(-1);
         }
         else
         {
            var_468[_loc3_] = param2;
         }
      }
      
      public function initializeAds(param1:int, param2:IRoomObjectSpriteVisualization) : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var_975 = param1;
         var _loc3_:LayoutRasterizerData = var_67.getValue(var_645);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:XMLList = _loc3_.elementList;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:* = null;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length())
         {
            _loc7_ = _loc4_[_loc6_];
            if(_loc7_ != null)
            {
               _loc8_ = _loc7_.visualization;
               if(_loc8_.length() > 0 && _loc8_.visualizationLayer.length() > 0)
               {
                  _loc9_ = _loc8_.visualizationLayer[0];
                  if(_loc9_ != null)
                  {
                     if(_loc7_.@id.toString().length > 0)
                     {
                        _loc10_ = String(_loc7_.@id);
                        if(_loc10_ == "billboard_bg")
                        {
                           _adBgIndex = _loc6_;
                           _loc11_ = String(_loc9_.@asset);
                           if(_loc11_.indexOf("left") > -1)
                           {
                              var_1181 = RoomObjectVariableEnum.const_804;
                           }
                           if(_loc11_.indexOf("right") > -1)
                           {
                              var_1181 = RoomObjectVariableEnum.const_806;
                           }
                           if(param2 != null)
                           {
                              _loc5_ = param2.getSprite(var_975 + _adBgIndex);
                              if(_loc5_ != null)
                              {
                                 _loc5_.visible = false;
                                 _loc5_.alpha = 0;
                              }
                           }
                        }
                        if(_loc10_ == "billboard_img")
                        {
                           _adImgIndex = _loc6_;
                           if(param2 != null)
                           {
                              _loc5_ = param2.getSprite(var_975 + _adImgIndex);
                              if(_loc5_ != null)
                              {
                                 _loc5_.visible = false;
                                 _loc5_.alpha = 0;
                              }
                           }
                        }
                     }
                  }
               }
            }
            _loc6_++;
         }
      }
      
      public function changeElementAlpha(param1:String, param2:Number) : void
      {
         var_470 = true;
         var _loc3_:int = var_344.indexOf(param1);
         if(_loc3_ < 0)
         {
            var_344.push(param1);
            var_468.push("");
            var_469.push(param2);
         }
         else
         {
            var_469[_loc3_] = param2;
         }
      }
      
      public function initialize(param1:XML) : void
      {
         var _loc2_:String = String(param1.@name);
         var _loc3_:LayoutRasterizerData = new LayoutRasterizerData(param1);
         var_67.add(_loc2_,_loc3_);
         var_1938 = new Vector3d(-0.5,0.5,0);
         var_470 = false;
      }
      
      public function showAd(param1:IRoomObjectSpriteVisualization, param2:String = "", param3:Boolean = false) : void
      {
         if(param2 == var_1939 && param3 == var_1940)
         {
            return;
         }
         if(_adBgIndex == -1 || _adImgIndex == -1)
         {
            Logger.log("ERROR! Billboard sprite indices not defined, cannot show room ad!");
            return;
         }
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(param1 != null)
         {
            _loc4_ = param1.getSprite(var_975 + _adBgIndex);
            _loc5_ = param1.getSprite(var_975 + _adImgIndex);
         }
         if(_loc4_ == null || _loc5_ == null)
         {
            Logger.log("ERROR! Billboard sprites not defined, cannot show room ad!");
            return;
         }
         if(param3)
         {
            exchangeElementGraphics("billboard_img",param2);
         }
         else
         {
            exchangeElementGraphics("billboard_img",var_1181);
         }
         setElementToSprite(_adBgIndex,_loc4_,param2,param3);
         setElementToSprite(_adImgIndex,_loc5_,param2,param3);
         if(param3)
         {
            _loc5_.capturesMouse = true;
            _loc5_.clickHandling = true;
            _loc5_.tag = RoomObjectVariableEnum.const_423;
         }
         if(param2 != "")
         {
            _loc4_.visible = true;
            _loc4_.alpha = 255;
            _loc5_.visible = true;
            _loc5_.alpha = 255;
         }
         else
         {
            _loc4_.visible = false;
            _loc4_.alpha = 0;
            _loc5_.visible = false;
            _loc5_.alpha = 0;
         }
         _loc5_.offsetX -= _loc5_.width / 2;
         _loc5_.offsetY -= _loc5_.height / 2;
         var_1939 = param2;
         var_1940 = param3;
      }
      
      public function initializeGeometry(param1:IRoomGeometry) : void
      {
         var _loc2_:Point = param1.getScreenPoint(new Vector3d(0,0,0));
         var _loc3_:Point = param1.getScreenPoint(var_1938);
         _loc3_.x -= _loc2_.x;
         _loc3_.y -= _loc2_.y;
         _loc3_.x = Math.round(_loc3_.x);
         _loc3_.y = Math.round(_loc3_.y);
         var_977.x = _loc3_.x;
         var_977.y = _loc3_.y;
      }
      
      public function get graphicsChanged() : Boolean
      {
         return var_470;
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         _assetCollection = null;
         var_1108 = null;
         var_344 = null;
         var_468 = null;
         var_469 = null;
         if(var_67 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < var_67.length)
            {
               _loc2_ = var_67.getWithIndex(_loc1_) as LayoutRasterizerData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            var_67.dispose();
            var_67 = null;
         }
         var_976 = null;
      }
      
      public function set layout(param1:String) : void
      {
         if(param1 != var_645)
         {
            var_645 = param1;
            _adBgIndex = -1;
            _adImgIndex = -1;
            var_976 = var_67.getValue(var_645);
         }
      }
      
      private function getBlendMode(param1:String) : String
      {
         var _loc2_:String = "null";
         switch(param1)
         {
            case "ADD":
               _loc2_ = "null";
               break;
            case "SUBTRACT":
               _loc2_ = "null";
               break;
            case "DARKEN":
               _loc2_ = "null";
         }
         return _loc2_;
      }
      
      public function elementCount() : int
      {
         var _loc1_:LayoutRasterizerData = var_67.getValue(var_645);
         if(_loc1_ == null)
         {
            return 0;
         }
         var _loc2_:XMLList = _loc1_.elementList;
         if(_loc2_ == null)
         {
            return 0;
         }
         return _loc2_.length();
      }
      
      public function setElementToSprite(param1:int, param2:IRoomObjectSprite, param3:String = "", param4:Boolean = false) : void
      {
         var _loc10_:* = null;
         if(var_976 == null)
         {
            return;
         }
         var _loc5_:XMLList = var_976.elementList;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 < 0 || param1 >= _loc5_.length())
         {
            return;
         }
         var _loc6_:XML = _loc5_[param1];
         if(_loc6_ == null)
         {
            return;
         }
         var _loc7_:XMLList = _loc6_.visualization;
         if(_loc7_.length() == 0 || _loc7_.visualizationLayer.length() == 0)
         {
            return;
         }
         var _loc8_:XML = _loc7_.visualizationLayer[0];
         if(_loc8_ == null)
         {
            return;
         }
         var _loc9_:IGraphicAsset = _assetCollection.getAsset(_loc8_.@asset);
         if(_loc9_ == null)
         {
            return;
         }
         param2.visible = true;
         param2.alpha = 255;
         param2.asset = _loc9_.asset;
         param2.offsetX = int(_loc8_.@x) + _loc9_.offsetX + var_977.x;
         param2.offsetY = int(_loc8_.@y) + _loc9_.offsetY + var_977.y;
         param2.blendMode = getBlendMode(String(_loc8_.@ink));
         param2.capturesMouse = false;
         if(parseInt(_loc8_.@capturesMouse) > 0)
         {
            param2.capturesMouse = true;
            param2.tag = String(_loc6_.@id);
         }
         if(String(_loc8_.@z) != "")
         {
            param2.relativeDepth = -Number(_loc8_.@z) / Math.sqrt(2) - 0.00001 * param1;
         }
         else
         {
            param2.relativeDepth = -(0.001 * param1);
         }
         if(_loc8_.@blend.toString().length > 0)
         {
            param2.alpha = int(Number(_loc8_.@blend) * 2.55);
         }
         if(_loc8_.@flipH.toString().length > 0)
         {
            param2.flipH = Boolean(_loc8_.@flipH);
         }
         if(_loc6_.@id.toString().length > 0)
         {
            _loc10_ = String(_loc6_.@id);
            if(var_344.indexOf(_loc10_) >= 0 && var_470)
            {
               param1 = var_344.indexOf(_loc10_);
               if(true)
               {
                  _loc9_ = _assetCollection.getAsset(var_468[param1]);
                  if(_loc9_ != null)
                  {
                     param2.asset = _loc9_.asset;
                  }
               }
               if(true)
               {
                  param2.alpha = var_469[param1];
               }
               var_344.splice(param1,1);
               var_468.splice(param1,1);
               var_469.splice(param1,1);
               if(false)
               {
                  var_470 = false;
               }
            }
         }
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         _assetCollection = param1;
      }
   }
}
