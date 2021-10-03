package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1180:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_801:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1180 = param1;
         var_801 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_801;
      }
      
      public function get identifier() : IID
      {
         return var_1180;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1180 = null;
            while(false)
            {
               var_801.pop();
            }
            var_801 = null;
         }
      }
   }
}
