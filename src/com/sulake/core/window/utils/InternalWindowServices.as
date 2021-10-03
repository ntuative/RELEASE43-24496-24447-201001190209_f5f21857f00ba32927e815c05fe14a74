package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_124:DisplayObject;
      
      private var var_2228:uint;
      
      private var var_798:IWindowToolTipAgentService;
      
      private var var_799:IWindowMouseScalingService;
      
      private var var_381:IWindowContext;
      
      private var var_795:IWindowFocusManagerService;
      
      private var var_797:IWindowMouseListenerService;
      
      private var var_796:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2228 = 0;
         var_124 = param2;
         var_381 = param1;
         var_796 = new WindowMouseDragger(param2);
         var_799 = new WindowMouseScaler(param2);
         var_797 = new WindowMouseListener(param2);
         var_795 = new FocusManager(param2);
         var_798 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_799;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_795;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_798;
      }
      
      public function dispose() : void
      {
         if(var_796 != null)
         {
            var_796.dispose();
            var_796 = null;
         }
         if(var_799 != null)
         {
            var_799.dispose();
            var_799 = null;
         }
         if(var_797 != null)
         {
            var_797.dispose();
            var_797 = null;
         }
         if(var_795 != null)
         {
            var_795.dispose();
            var_795 = null;
         }
         if(var_798 != null)
         {
            var_798.dispose();
            var_798 = null;
         }
         var_381 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_797;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_796;
      }
   }
}
