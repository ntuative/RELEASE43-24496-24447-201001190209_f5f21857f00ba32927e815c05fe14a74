package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1056:int = 100;
      
      private static const const_1053:int = 200;
      
      private static const const_1055:int = 180;
      
      public static const const_916:int = 1;
      
      public static const const_415:int = 2;
      
      private static const const_1054:int = 250;
      
      private static const const_743:int = 5;
       
      
      private var var_527:BitmapData;
      
      private var var_289:Timer;
      
      private var var_23:IWindowContainer;
      
      private var var_615:BitmapData;
      
      private var var_288:Timer;
      
      private var var_76:IWindowContainer;
      
      private var var_1365:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_288 = new Timer(const_1054,1);
         var_289 = new Timer(const_1056,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_76 = param1;
         var_76.visible = false;
         _assets = param2;
         var_288.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_289.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_615 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_527 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_76.visible = false;
         var_289.reset();
         var_288.reset();
         if(var_23 != null)
         {
            var_23.removeChild(var_76);
         }
      }
      
      public function hideDelayed() : void
      {
         var_289.reset();
         var_288.reset();
         var_289.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_288 != null)
         {
            var_288.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_288.stop();
            var_288 = null;
         }
         if(var_289 != null)
         {
            var_289.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_289.stop();
            var_289 = null;
         }
         _assets = null;
         var_76 = null;
         var_23 = null;
         var_527 = null;
         var_615 = null;
      }
      
      public function showDelayed() : void
      {
         var_289.reset();
         var_288.reset();
         var_288.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_76 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_23 != null)
         {
            var_23.removeChild(var_76);
         }
         var_23 = param1;
         var_1365 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_76.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_76.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1055,param3.width),Math.min(const_1053,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_76.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_76 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_76.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_916:
               _loc2_.bitmap = var_615.clone();
               _loc2_.width = var_615.width;
               _loc2_.height = var_615.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_415:
               _loc2_.bitmap = var_527.clone();
               _loc2_.width = var_527.width;
               _loc2_.height = var_527.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_289.reset();
         var_288.reset();
         if(var_23 == null)
         {
            return;
         }
         var_76.visible = true;
         var_23.addChild(var_76);
         refreshArrow(var_1365);
         switch(var_1365)
         {
            case const_916:
               var_76.x = 0 - const_743;
               break;
            case const_415:
               var_76.x = var_23.width + const_743;
         }
         var_76.y = (0 - 0) / 2;
      }
   }
}
