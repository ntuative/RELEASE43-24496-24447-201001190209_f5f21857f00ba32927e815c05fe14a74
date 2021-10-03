package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct
   {
       
      
      private var var_921:IID;
      
      private var var_380:uint;
      
      private var var_1121:IUnknown;
      
      private var var_1122:String;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_921 = param1;
         var_1122 = getQualifiedClassName(var_921);
         var_1121 = param2;
         var_380 = 0;
      }
      
      public function get iid() : IID
      {
         return var_921;
      }
      
      public function get references() : uint
      {
         return var_380;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_380) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1121;
      }
      
      public function get iis() : String
      {
         return var_1122;
      }
      
      public function reserve() : uint
      {
         return ++var_380;
      }
      
      public function dispose() : void
      {
         var_921 = null;
         var_1122 = null;
         var_1121 = null;
         var_380 = 0;
      }
   }
}
