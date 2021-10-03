package com.sulake.core.communication
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.connection.SocketConnection;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.ICoreUpdateReceiver;
   import flash.utils.Dictionary;
   
   public class CoreCommunicationManager extends Component implements ICoreCommunicationManager, ICoreUpdateReceiver
   {
       
      
      private var var_656:Dictionary;
      
      private var var_657:Dictionary;
      
      private var var_401:Dictionary;
      
      private var var_1990:IConnectionStateListener;
      
      private var var_1207:Array;
      
      public function CoreCommunicationManager(param1:IContext, param2:uint = 0)
      {
         super(param1,param2);
         var_401 = new Dictionary();
         var_656 = new Dictionary();
         var_657 = new Dictionary();
         var_1207 = new Array();
         registerUpdateReceiver(this,1);
      }
      
      public function getMessageEvents(param1:IConnection, param2:Class) : Array
      {
         var _loc4_:* = null;
         var _loc7_:* = null;
         var _loc3_:String = "";
         for(_loc4_ in var_401)
         {
            _loc10_;
            if(var_401[_loc4_] == param1)
            {
               _loc3_ = _loc4_;
               break;
            }
         }
         if(_loc3_ == "")
         {
            throw new Error("[CoreCommunicationManager] Could not find registered events for connection " + param1 + "!");
         }
         var _loc5_:Array = var_657[_loc3_];
         var _loc6_:Array = new Array();
         for each(var _loc10_ in _loc5_)
         {
            _loc7_ = _loc10_;
            _loc10_;
            if(_loc7_ is param2)
            {
               _loc6_.push(_loc7_);
            }
         }
         return _loc6_;
      }
      
      public function set connectionStateListener(param1:IConnectionStateListener) : void
      {
         var_1990 = param1;
      }
      
      public function addConnectionMessageEvent(param1:String, param2:IMessageEvent) : void
      {
         var _loc3_:Array = var_657[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new Array();
            var_657[param1] = _loc3_;
         }
         _loc3_.push(param2);
      }
      
      public function queueConnection(param1:String, param2:Function) : IConnection
      {
         if(param1 == null || var_401 == null)
         {
            return null;
         }
         return var_401[param1] as IConnection;
      }
      
      public function getMessageParser(param1:Class) : IMessageParser
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         for each(var _loc6_ in var_1207)
         {
            _loc3_ = _loc6_;
            _loc6_;
            if(_loc3_ is param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(_loc2_ == null)
         {
            var _loc4_:* = new param1() as IMessageParser;
            _loc2_ = new param1() as IMessageParser;
            _loc4_;
            if(_loc2_ == null)
            {
               throw new Error("[CoreCommunicationManager] Could not create parser-instance from class: " + param1 + "!");
            }
            var_1207.push(_loc2_);
         }
         return _loc2_;
      }
      
      public function getProtocolInstanceOfType(param1:String) : IProtocol
      {
         var _loc2_:Class = var_656[param1];
         var _loc3_:* = null;
         if(_loc2_ != null)
         {
            var _loc4_:* = new _loc2_() as IProtocol;
            _loc3_ = new _loc2_() as IProtocol;
            _loc4_;
            return _loc3_;
         }
         throw new Error("[CoreCommunicationManager] Could not instantiate Protocol class defined for protocol type " + param1 + "!");
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         for each(var _loc5_ in var_401)
         {
            _loc2_ = _loc5_;
            _loc5_;
            _loc2_.processReceivedData();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         removeUpdateReceiver(this);
         for each(_loc1_ in var_401)
         {
            _loc1_.dispose();
         }
         var_401 = null;
         var_656 = null;
         for each(_loc2_ in var_657)
         {
            while(true)
            {
               _loc4_ = _loc2_.pop() as IMessageEvent;
               if(!_loc4_)
               {
                  break;
               }
               _loc4_.dispose();
            }
         }
         var_657 = null;
         for each(_loc3_ in var_1207)
         {
         }
         var _loc5_:* = null;
         var_656 = null;
         _loc5_;
         super.dispose();
      }
      
      public function createConnection(param1:String, param2:uint = 0) : IConnection
      {
         var _loc3_:* = null;
         switch(param2)
         {
            case ConnectionType.const_902:
               _loc3_ = new SocketConnection(param1,this,var_1990);
               break;
            default:
               Logger.log("[CoreCommunicationManager] Unknown connectionType, can not create connection: " + param2);
         }
         var_401[param1] = _loc3_;
         return _loc3_;
      }
      
      public function registerProtocolType(param1:String, param2:Class) : Boolean
      {
         var _loc3_:Object = new param2();
         if(_loc3_ is IProtocol)
         {
            var_656[param1] = param2;
            return true;
         }
         throw new Error("[CoreCommunicationManager] Invalid Protocol class defined for protocol type " + param1 + "!");
      }
   }
}
