package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_168:String;
      
      private var var_406:int;
      
      private var var_198:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_168 = param1;
         var_198 = param2;
         var_406 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_198.text = var_168.substring(0,param1) + "...";
         return var_198.textHeight > var_406;
      }
   }
}
