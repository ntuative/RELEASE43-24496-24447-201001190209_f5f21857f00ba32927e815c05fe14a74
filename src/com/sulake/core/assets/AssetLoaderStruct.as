package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_616:IAssetLoader;
      
      private var var_1174:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1174 = param1;
         var_616 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_616;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_616 != null)
            {
               if(true)
               {
                  var_616.dispose();
                  var_616 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1174;
      }
   }
}
