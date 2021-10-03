package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_894:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1161:Boolean = true;
      
      private var var_1141:int = 0;
      
      private var var_861:int = 0;
      
      private var var_1144:int = 0;
      
      private var var_862:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1142:int = 15;
      
      private var var_175:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1145:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1144 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1161)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_861,var_862);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1141;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_861 == 0 && var_862 == 0;
      }
      
      private function resetLog() : void
      {
         var_861 = 0;
         var_862 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1161)
         {
            return;
         }
         if(getTimer() - var_1144 > var_1145 * 1000 && var_1141 < var_1142)
         {
            var_1144 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_175 = param1;
         var_1145 = int(var_175.getKey("lagwarninglog.interval","60"));
         var_1142 = int(var_175.getKey("lagwarninglog.reportlimit","15"));
         var_1161 = Boolean(int(var_175.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_862 += 1;
            case const_894:
               var_861 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
