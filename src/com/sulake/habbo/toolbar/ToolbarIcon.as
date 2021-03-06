package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_482:ToolbarIconGroup;
      
      private var var_1003:Boolean = false;
      
      private var var_2025:String;
      
      private var var_817:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1005:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var _state:String = "-1";
      
      private var var_104:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_663:String;
      
      private var var_1580:int;
      
      private var var_662:Timer;
      
      private var var_1456:Array;
      
      private var var_1004:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2237:Array;
      
      private var var_265:ToolbarBarMenuAnimator;
      
      private var var_409:ToolbarIconAnimator;
      
      private var var_554:Array;
      
      private var var_828:Array;
      
      private var var_827:String = "-1";
      
      private var var_2292:Boolean = true;
      
      private var var_1002:Array;
      
      private var var_1228:Timer;
      
      private var var_2024:int;
      
      private var var_93:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_554 = new Array();
         var_828 = new Array();
         var_2237 = new Array();
         var_1004 = new ToolbarIconBouncer(0.8,1);
         super();
         var_482 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_663 = param4;
         _events = param5;
         var_265 = param6;
         var_1228 = new Timer(40,40);
         var_1228.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_104 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_354,HabboWindowStyle.const_40,HabboWindowParam.const_38,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_104.background = true;
         var_104.alphaTreshold = 0;
         var_104.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_40,HabboWindowParam.const_40,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_104.addChild(_window);
         _window.addEventListener(WindowEvent.const_43,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1456[var_1002.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_2024;
      }
      
      public function get iconId() : String
      {
         return var_663;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_817 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         _state = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_104 == null || _window == null)
         {
            return;
         }
         var_104.width = _window.width;
         var_104.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_93 = (0 - 0) / 2;
            _y = var_817 + (0 - 0) / 2;
         }
         else
         {
            var_93 = var_817 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_104.x = var_93;
         var_104.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_104 != null)
         {
            var_104.dispose();
            var_104 = null;
         }
         var_554 = null;
         var_828 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_265 = null;
         var_409 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_554.indexOf(param1) < 0)
         {
            var_554.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_828.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1003)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_265)
               {
                  var_265.repositionWindow(var_663,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_57);
                  _loc4_.iconId = var_663;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.method_15)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1005;
                  }
               }
               break;
            case WindowMouseEvent.const_28:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_827;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_554.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_828[var_554.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1003 = param1;
         if(var_104 != null)
         {
            var_104.visible = var_1003;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_104 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_104.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_104.toolTipCaption = "${toolbar.icon.tooltip." + var_2025.toLowerCase() + "}";
         }
         var_104.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_265 != null)
         {
            var_265.animateWindowIn(this,param1,param2,var_663,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_409 != null && _window != null)
         {
            var_409.update(_window);
            if(var_409.hasNextState())
            {
               state = var_409.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1456 = new Array();
         var_1002 = new Array();
         var_2025 = param1.@id;
         var_2024 = int(param1.@window_offset_from_icon);
         var_1580 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1005 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_827 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1002.push(_loc5_.id);
               var_1456.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1005 == "-1")
                  {
                     var_1005 = _loc5_.id;
                  }
                  if(var_827 == "-1")
                  {
                     var_827 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         _state = var_827;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_265 != null)
         {
            var_265.hideWindow(param1,param2,var_663,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_265 != null)
         {
            var_265.positionWindow(this,param1,param2,var_663,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_265 != null)
         {
            var_265.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1003;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1004 != null && _window != null)
         {
            var_1004.update();
            _window.y = var_1004.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_662 != null)
         {
            var_662.stop();
            var_662 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1003)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_409 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_93,_y,_bitmapData);
            if(false)
            {
               var_662 = new Timer(_loc1_.timer);
               var_662.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_662.start();
            }
            if(_loc1_.bounce)
            {
               var_1004.reset(-7);
               var_1228.reset();
               var_1228.start();
            }
         }
         else
         {
            var_409 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1580 + var_482.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(_state);
      }
      
      public function get window() : IWindow
      {
         return var_104;
      }
      
      public function get x() : Number
      {
         return var_93;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_828[var_554.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_482;
      }
   }
}
