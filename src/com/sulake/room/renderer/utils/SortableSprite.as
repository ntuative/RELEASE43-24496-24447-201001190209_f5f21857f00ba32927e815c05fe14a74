package com.sulake.room.renderer.utils
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class SortableSprite
   {
       
      
      private var var_1934:Boolean = true;
      
      private var var_1932:Boolean = false;
      
      private var var_1935:Boolean = false;
      
      private var var_1196:String = "normal";
      
      private var _bitmapData:BitmapData = null;
      
      private var var_1602:String = "";
      
      private var var_1933:uint = 255;
      
      private var _color:uint = 16777215;
      
      private var _name:String = "";
      
      private var var_93:int = 0;
      
      private var _y:int = 0;
      
      private var var_94:Number = 0;
      
      public function SortableSprite()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         var_94 = param1;
      }
      
      public function set color(param1:uint) : void
      {
         _color = param1;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1934;
      }
      
      public function get z() : Number
      {
         return var_94;
      }
      
      public function set y(param1:int) : void
      {
         _y = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set tag(param1:String) : void
      {
         var_1602 = param1;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1932;
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tag() : String
      {
         return var_1602;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1934 = param1;
      }
      
      public function get alpha() : uint
      {
         return var_1933;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1932 = param1;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         _bitmapData = param1;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1935 = param1;
      }
      
      public function set blendMode(param1:String) : void
      {
         if(param1 != null)
         {
            var_1196 = param1;
         }
         else
         {
            var_1196 = BlendMode.NORMAL;
         }
      }
      
      public function get blendMode() : String
      {
         return var_1196;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1935;
      }
      
      public function set x(param1:int) : void
      {
         var_93 = param1;
      }
      
      public function get x() : int
      {
         return var_93;
      }
      
      public function set alpha(param1:uint) : void
      {
         var_1933 = param1;
      }
      
      public function get bitmapData() : BitmapData
      {
         return _bitmapData;
      }
   }
}
