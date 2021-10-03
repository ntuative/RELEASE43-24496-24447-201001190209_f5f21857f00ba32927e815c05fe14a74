package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1354:int = -1;
      
      private var var_1115:Boolean;
      
      private var var_1114:String;
      
      private var var_1706:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1706 = String(param1["set-type"]);
         var_1114 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1115 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1354 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1114;
      }
      
      public function get staticId() : int
      {
         return var_1354;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1354 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1115;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1115 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1114 = param1;
      }
      
      public function get setType() : String
      {
         return var_1706;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
