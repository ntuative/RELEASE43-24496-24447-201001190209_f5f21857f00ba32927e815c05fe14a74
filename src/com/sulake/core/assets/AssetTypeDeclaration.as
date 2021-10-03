package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1872:Class;
      
      private var var_1871:Class;
      
      private var var_1870:String;
      
      private var var_1166:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1870 = param1;
         var_1871 = param2;
         var_1872 = param3;
         if(rest == null)
         {
            var_1166 = new Array();
         }
         else
         {
            var_1166 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1872;
      }
      
      public function get assetClass() : Class
      {
         return var_1871;
      }
      
      public function get mimeType() : String
      {
         return var_1870;
      }
      
      public function get fileTypes() : Array
      {
         return var_1166;
      }
   }
}
