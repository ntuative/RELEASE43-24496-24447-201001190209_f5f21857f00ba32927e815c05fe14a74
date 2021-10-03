package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_427:int;
      
      private var var_88:EffectsModel;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         var_88 = param1;
         var_427 = param2;
      }
      
      public function getDrawableList() : Array
      {
         return var_88.getEffects(var_427);
      }
      
      public function dispose() : void
      {
         var_88 = null;
      }
   }
}
