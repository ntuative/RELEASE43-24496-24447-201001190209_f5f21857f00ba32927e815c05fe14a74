package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_880:String = "AssetLoaderEventUnload";
      
      public static const const_47:String = "AssetLoaderEventError";
      
      public static const const_994:String = "AssetLoaderEventOpen";
      
      public static const const_973:String = "AssetLoaderEventProgress";
      
      public static const const_990:String = "AssetLoaderEventStatus";
      
      public static const const_30:String = "AssetLoaderEventComplete";
       
      
      private var var_357:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_357 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_357;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_357);
      }
   }
}
