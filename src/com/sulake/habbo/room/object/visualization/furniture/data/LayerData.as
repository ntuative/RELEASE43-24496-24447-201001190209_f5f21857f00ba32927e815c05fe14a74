package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_396:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_679:int = 0;
      
      public static const const_992:int = 2;
      
      public static const const_790:int = 1;
      
      public static const const_598:Boolean = false;
      
      public static const const_712:String = "";
      
      public static const const_425:int = 0;
      
      public static const const_457:int = 0;
      
      public static const const_463:int = 0;
       
      
      private var var_2009:int = 0;
      
      private var var_1602:String = "";
      
      private var var_1398:int = 0;
      
      private var var_2008:int = 0;
      
      private var var_2006:Number = 0;
      
      private var var_1933:int = 255;
      
      private var var_2007:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2009;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1398 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2006;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2008 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2009 = param1;
      }
      
      public function get tag() : String
      {
         return var_1602;
      }
      
      public function get alpha() : int
      {
         return var_1933;
      }
      
      public function get ink() : int
      {
         return var_1398;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2006 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2008;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2007 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2007;
      }
      
      public function set tag(param1:String) : void
      {
         var_1602 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1933 = param1;
      }
   }
}
