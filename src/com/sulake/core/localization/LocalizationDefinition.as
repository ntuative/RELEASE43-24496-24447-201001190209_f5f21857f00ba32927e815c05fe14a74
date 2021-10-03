package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1358:String;
      
      private var var_873:String;
      
      private var var_1360:String;
      
      private var var_1359:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1359 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1358 = _loc5_[0];
         var_1360 = _loc5_[1];
         _name = param2;
         var_873 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1358;
      }
      
      public function get languageCode() : String
      {
         return var_1359;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_873;
      }
      
      public function get encoding() : String
      {
         return var_1360;
      }
      
      public function get id() : String
      {
         return var_1359 + "_" + var_1358 + "." + var_1360;
      }
   }
}
