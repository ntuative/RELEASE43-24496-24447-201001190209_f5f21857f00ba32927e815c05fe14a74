package com.sulake.room.object.visualization
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
       
      
      private var var_928:Boolean = false;
      
      private var var_1935:Boolean = false;
      
      private var var_1196:String = "normal";
      
      private var var_1174:String = "";
      
      private var var_1932:Boolean = false;
      
      private var _offset:Point;
      
      private var var_345:Boolean = true;
      
      private var var_1934:Boolean = true;
      
      private var var_902:Number = 0;
      
      private var _height:int = 0;
      
      private var _width:int = 0;
      
      private var var_1602:String = "";
      
      private var var_1933:uint = 255;
      
      private var _color:uint = 16777215;
      
      private var var_776:IAsset = null;
      
      private var var_927:Boolean = false;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
      }
      
      public function get flipV() : Boolean
      {
         return var_928;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1932;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_928 = param1;
      }
      
      public function get tag() : String
      {
         return var_1602;
      }
      
      public function dispose() : void
      {
         var_776 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1196 = param1;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1934 = param1;
      }
      
      public function get blendMode() : String
      {
         return var_1196;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_902 = param1;
      }
      
      public function set tag(param1:String) : void
      {
         var_1602 = param1;
      }
      
      public function set alpha(param1:uint) : void
      {
         if(param1 > 255)
         {
            param1 = 255;
         }
         var_1933 = param1;
      }
      
      public function get assetName() : String
      {
         return var_1174;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1934;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1935;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1174 = param1;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get relativeDepth() : Number
      {
         return var_902;
      }
      
      public function get alpha() : uint
      {
         return var_1933;
      }
      
      public function set asset(param1:IAsset) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 is BitmapDataAsset)
         {
            var_776 = param1;
            _width = 0;
            _height = 0;
            if(param1 != null)
            {
               _loc2_ = param1 as BitmapDataAsset;
               _loc3_ = _loc2_.content as BitmapData;
               if(_loc3_ != null)
               {
                  _width = _loc3_.width;
                  _height = _loc3_.height;
               }
            }
         }
         else if(param1 == null)
         {
            var_776 = null;
            _width = 0;
            _height = 0;
         }
      }
      
      public function set color(param1:uint) : void
      {
         param1 &= 16777215;
         _color = param1;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1935 = param1;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1932 = param1;
      }
      
      public function get asset() : IAsset
      {
         return var_776;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_345 = param1;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_927 = param1;
      }
      
      public function get visible() : Boolean
      {
         return var_345;
      }
      
      public function get flipH() : Boolean
      {
         return var_927;
      }
   }
}
