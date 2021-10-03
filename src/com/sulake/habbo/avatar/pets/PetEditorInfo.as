package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1896:Boolean;
      
      private var var_1895:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1896 = Boolean(parseInt(param1.@club));
         var_1895 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1896;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1895;
      }
   }
}
