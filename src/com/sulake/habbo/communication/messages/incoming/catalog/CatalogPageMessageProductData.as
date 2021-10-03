package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_206:String = "e";
      
      public static const const_77:String = "i";
      
      public static const const_75:String = "s";
       
      
      private var var_967:String;
      
      private var var_1170:String;
      
      private var var_1171:int;
      
      private var var_2154:int;
      
      private var var_968:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1170 = param1.readString();
         var_2154 = param1.readInteger();
         var_967 = param1.readString();
         var_968 = param1.readInteger();
         var_1171 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_968;
      }
      
      public function get productType() : String
      {
         return var_1170;
      }
      
      public function get expiration() : int
      {
         return var_1171;
      }
      
      public function get furniClassId() : int
      {
         return var_2154;
      }
      
      public function get extraParam() : String
      {
         return var_967;
      }
   }
}
