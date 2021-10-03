package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_928:Boolean;
      
      private var _name:String;
      
      private var var_2172:String;
      
      private var var_927:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2172 = String(param1.@link);
         var_927 = Boolean(parseInt(param1.@fliph));
         var_928 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_927;
      }
      
      public function get flipV() : Boolean
      {
         return var_928;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2172;
      }
   }
}
