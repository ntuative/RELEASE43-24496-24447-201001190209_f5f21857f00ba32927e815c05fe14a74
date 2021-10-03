package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.core.utils.Map;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class FurniturePlane
   {
       
      
      private var var_75:Vector3d = null;
      
      private var var_571:Vector3d = null;
      
      private var var_412:Vector3d = null;
      
      private var var_270:Vector3d = null;
      
      private var var_178:Map = null;
      
      private var _bitmapData:BitmapData = null;
      
      private var var_2131:Boolean = false;
      
      private var _offset:Point = null;
      
      private var var_1272:int = -1;
      
      private var _id:String = null;
      
      private var var_672:Vector3d = null;
      
      private var _height:Number = 0;
      
      private var _width:Number = 0;
      
      private var var_141:Vector3d = null;
      
      private var var_570:Vector3d = null;
      
      private var var_84:Vector3d = null;
      
      private var var_112:Vector3d = null;
      
      private var var_113:Vector3d = null;
      
      private var var_2055:Number = 0;
      
      private var var_1027:Number = 0;
      
      private var var_272:Vector3d = null;
      
      private var var_2049:Number = 0;
      
      private var var_2047:Number = 0;
      
      private var _isVisible:Boolean = true;
      
      private var _color:uint = 0;
      
      private var var_2053:Number = 0;
      
      public function FurniturePlane(param1:IVector3d, param2:IVector3d, param3:IVector3d)
      {
         super();
         var_672 = new Vector3d();
         var_75 = new Vector3d();
         var_75.assign(param1);
         var_272 = new Vector3d();
         var_272.assign(param2);
         var_270 = new Vector3d();
         var_270.assign(param3);
         var_570 = new Vector3d();
         var_570.assign(param2);
         var_571 = new Vector3d();
         var_571.assign(param3);
         var_412 = Vector3d.crossProduct(var_272,var_270);
         if(false)
         {
            var_412.mul(Infinity);
         }
         _offset = new Point();
         var_141 = new Vector3d();
         var_113 = new Vector3d();
         var_84 = new Vector3d();
         var_112 = new Vector3d();
         var_178 = new Map();
      }
      
      public function get bitmapData() : BitmapData
      {
         if(_isVisible)
         {
            if(_bitmapData != null)
            {
               return _bitmapData.clone();
            }
         }
         return null;
      }
      
      public function setRotation(param1:Boolean) : void
      {
         if(param1 != var_2131)
         {
            if(!param1)
            {
               var_272.assign(var_570);
               var_270.assign(var_571);
            }
            else
            {
               var_272.assign(var_570);
               var_272.mul(0 / 0);
               var_270.assign(var_571);
               var_270.mul(0 / 0);
            }
            var_1272 = -1;
            var_1027 = var_1027 - 1;
            var_2131 = param1;
            resetTextureCache();
         }
      }
      
      private function resetTextureCache() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(var_178 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < var_178.length)
            {
               _loc2_ = var_178.getWithIndex(_loc1_) as BitmapData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            var_178.reset();
         }
      }
      
      public function get visible() : Boolean
      {
         return _isVisible;
      }
      
      public function get offset() : Point
      {
         return _offset;
      }
      
      private function renderTexture(param1:IRoomGeometry, param2:BitmapData) : void
      {
         if(var_141 == null || var_113 == null || var_84 == null || var_112 == null || param2 == null || _bitmapData == null)
         {
            return;
         }
         var _loc3_:Number = 0 - 0;
         var _loc4_:Number = 0 - 0;
         var _loc5_:Number = 0 - 0;
         var _loc6_:Number = 0 - 0;
         if(Math.abs(_loc5_ - param2.width) <= 1)
         {
            _loc5_ = param2.width;
         }
         if(Math.abs(_loc6_ - param2.width) <= 1)
         {
            _loc6_ = param2.width;
         }
         if(Math.abs(_loc3_ - param2.height) <= 1)
         {
            _loc3_ = param2.height;
         }
         if(Math.abs(_loc4_ - param2.height) <= 1)
         {
            _loc4_ = param2.height;
         }
         var _loc7_:Number = _loc5_ / param2.width;
         var _loc8_:Number = _loc6_ / param2.width;
         var _loc9_:Number = _loc3_ / param2.height;
         var _loc10_:Number = _loc4_ / param2.height;
         var _loc11_:Matrix = new Matrix();
         _loc11_.a = _loc7_;
         _loc11_.b = _loc8_;
         _loc11_.c = _loc9_;
         _loc11_.d = _loc10_;
         _loc11_.translate(var_84.x,var_84.y);
         draw(param2,_loc11_);
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(_bitmapData != null)
         {
            _bitmapData.dispose();
            _bitmapData = null;
         }
         if(var_178 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < var_178.length)
            {
               _loc2_ = var_178.getWithIndex(_loc1_) as BitmapData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            var_178.dispose();
            var_178 = null;
         }
         var_672 = null;
         var_75 = null;
         var_272 = null;
         var_270 = null;
         var_570 = null;
         var_571 = null;
         var_412 = null;
         var_141 = null;
         var_113 = null;
         var_84 = null;
         var_112 = null;
      }
      
      public function get rightSide() : IVector3d
      {
         return var_270;
      }
      
      private function cacheTexture(param1:String, param2:BitmapData) : Boolean
      {
         var _loc3_:BitmapData = var_178.remove(param1) as BitmapData;
         if(_loc3_ != null && param2 != _loc3_)
         {
            _loc3_.dispose();
         }
         var_178.add(param1,param2);
         return true;
      }
      
      public function get location() : IVector3d
      {
         return var_75;
      }
      
      private function draw(param1:BitmapData, param2:Matrix) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(_bitmapData != null)
         {
            if(param2.a == 1 && param2.d == 1 && param2.c == 0 && param2.b != 0 && Math.abs(param2.b) <= 1)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = 0;
               if(param2.b > 0)
               {
                  ++param2.ty;
               }
               _loc7_ = 0;
               while(_loc3_ < param1.width)
               {
                  _loc3_++;
                  _loc5_ += Math.abs(param2.b);
                  if(_loc5_ >= 1)
                  {
                     _bitmapData.copyPixels(param1,new Rectangle(_loc4_ + _loc6_,0,_loc3_ - _loc4_,param1.height),new Point(param2.tx + _loc4_,param2.ty + _loc7_),null,null,true);
                     _loc4_ = _loc3_;
                     if(param2.b > 0)
                     {
                        _loc7_++;
                     }
                     else
                     {
                        _loc7_--;
                     }
                     _loc5_ = 0;
                  }
               }
               if(_loc5_ > 0)
               {
                  _bitmapData.copyPixels(param1,new Rectangle(_loc4_,0,_loc3_ - _loc4_,param1.height),new Point(param2.tx + _loc4_,param2.ty + _loc7_),null,null,true);
               }
               return;
            }
            _bitmapData.draw(param1,param2,null,null,null,false);
         }
      }
      
      public function get relativeDepth() : Number
      {
         return var_2055;
      }
      
      private function needsNewTexture(param1:IRoomGeometry) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:String = getTextureIdentifier(param1);
         var _loc3_:BitmapData = var_178.getValue(_loc2_) as BitmapData;
         if(_width > 0 && _height > 0)
         {
            if(_loc3_ == null)
            {
               return true;
            }
         }
         return false;
      }
      
      public function update(param1:IRoomGeometry, param2:int) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = null;
         if(param1 == null || var_75 == null && var_672 != null || var_272 == null || var_270 == null || var_412 == null)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.updateId != var_1272)
         {
            var_1272 = param1.updateId;
            _loc4_ = param1.direction;
            if(_loc4_ != null && (_loc4_.x != var_1027 || _loc4_.y != var_2047 || _loc4_.z != var_2049 || param1.scale != var_2053))
            {
               var_1027 = _loc4_.x;
               var_2047 = _loc4_.y;
               var_2049 = _loc4_.z;
               var_2053 = param1.scale;
               _loc3_ = true;
               _loc5_ = 0;
               _loc5_ = Number(Vector3d.cosAngle(param1.directionAxis,normal));
               if(_loc5_ > -0.001)
               {
                  if(_isVisible)
                  {
                     _isVisible = false;
                     return true;
                  }
                  return false;
               }
               updateCorners(param1);
               _loc6_ = param1.getScreenPosition(var_672);
               _loc7_ = _loc6_.z;
               _loc8_ = Math.max(0 - _loc7_,0 - _loc7_,0 - _loc7_,0 - _loc7_);
               var_2055 = _loc8_;
               _isVisible = true;
            }
         }
         if(needsNewTexture(param1) || _loc3_)
         {
            if(_bitmapData == null || _width != _bitmapData.width || _height != _bitmapData.height)
            {
               if(_bitmapData != null)
               {
                  _bitmapData.dispose();
                  _bitmapData = null;
                  if(_width < 1 || _height < 1)
                  {
                     return true;
                  }
               }
               else if(_width < 1 || _height < 1)
               {
                  return false;
               }
               _bitmapData = new BitmapData(_width,_height,true,16777215);
               _bitmapData.lock();
            }
            else
            {
               _bitmapData.lock();
               _bitmapData.fillRect(_bitmapData.rect,16777215);
            }
            _loc9_ = getTexture(param1,param2);
            if(_loc9_ != null)
            {
               renderTexture(param1,_loc9_);
            }
            _bitmapData.unlock();
            return true;
         }
         return false;
      }
      
      private function updateCorners(param1:IRoomGeometry) : void
      {
         var_141.assign(param1.getScreenPosition(var_75));
         var_113.assign(param1.getScreenPosition(Vector3d.sum(var_75,var_270)));
         var_84.assign(param1.getScreenPosition(Vector3d.sum(Vector3d.sum(var_75,var_272),var_270)));
         var_112.assign(param1.getScreenPosition(Vector3d.sum(var_75,var_272)));
         _offset = param1.getScreenPoint(var_672);
         var_141.x = Math.round(var_141.x);
         var_141.y = Math.round(var_141.y);
         var_113.x = Math.round(var_113.x);
         var_113.y = Math.round(var_113.y);
         var_84.x = Math.round(var_84.x);
         var_84.y = Math.round(var_84.y);
         var_112.x = Math.round(var_112.x);
         var_112.y = Math.round(var_112.y);
         _offset.x = Math.round(_offset.x);
         _offset.y = Math.round(_offset.y);
         var _loc2_:Number = Math.min(var_141.x,var_113.x,var_84.x,var_112.x);
         var _loc3_:Number = Math.max(var_141.x,var_113.x,var_84.x,var_112.x);
         var _loc4_:Number = Math.min(var_141.y,var_113.y,var_84.y,var_112.y);
         var _loc5_:Number = Math.max(var_141.y,var_113.y,var_84.y,var_112.y);
         _loc3_ -= _loc2_;
         _offset.x = 0 - _loc2_;
         var_141.x = 0 - _loc2_;
         var_113.x = 0 - _loc2_;
         var_84.x = 0 - _loc2_;
         var_112.x = 0 - _loc2_;
         _loc5_ -= _loc4_;
         _offset.y = 0 - _loc4_;
         var_141.y = 0 - _loc4_;
         var_113.y = 0 - _loc4_;
         var_84.y = 0 - _loc4_;
         var_112.y = 0 - _loc4_;
         _width = _loc3_;
         _height = _loc5_;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      private function getTexture(param1:IRoomGeometry, param2:int) : BitmapData
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:String = getTextureIdentifier(param1);
         var _loc4_:* = null;
         if(needsNewTexture(param1))
         {
            _loc5_ = Number(0 * param1.scale);
            _loc6_ = Number(0 * param1.scale);
            if(_loc5_ < 1)
            {
               _loc5_ = 1;
            }
            if(_loc6_ < 1)
            {
               _loc6_ = 1;
            }
            _loc7_ = param1.getCoordinatePosition(var_412);
            _loc4_ = var_178.getValue(_loc3_) as BitmapData;
            if(_loc4_ == null)
            {
               _loc4_ = new BitmapData(_loc5_,_loc6_,true,4278190080 | _color);
               if(_loc4_ != null)
               {
                  cacheTexture(_loc3_,_loc4_);
               }
            }
         }
         else
         {
            _loc4_ = var_178.getValue(_loc3_) as BitmapData;
         }
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         return null;
      }
      
      public function get normal() : IVector3d
      {
         return var_412;
      }
      
      public function set color(param1:uint) : void
      {
         _color = param1;
      }
      
      private function getTextureIdentifier(param1:IRoomGeometry) : String
      {
         if(param1 == null)
         {
            return null;
         }
         return String(param1.scale);
      }
      
      public function get leftSide() : IVector3d
      {
         return var_272;
      }
   }
}
