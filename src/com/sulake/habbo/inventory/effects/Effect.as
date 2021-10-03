package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1562:Date;
      
      private var var_1065:Boolean = false;
      
      private var _type:int;
      
      private var var_359:BitmapData;
      
      private var var_256:Boolean = false;
      
      private var var_1191:int;
      
      private var var_511:int = 1;
      
      private var var_891:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_359;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_511;
         if(var_511 < 0)
         {
            var_511 = 0;
         }
         var_891 = var_1191;
         var_256 = false;
         var_1065 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_891 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_256;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_359 = param1;
      }
      
      public function get duration() : int
      {
         return var_1191;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1065;
      }
      
      public function get effectsInInventory() : int
      {
         return var_511;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_359;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_256)
         {
            var_1562 = new Date();
         }
         var_256 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_511 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_256)
         {
            _loc1_ = var_891 - (new Date().valueOf() - var_1562.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_891;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1065 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1191 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
