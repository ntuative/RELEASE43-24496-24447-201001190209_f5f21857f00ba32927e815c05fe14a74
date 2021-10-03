package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1784:String;
      
      private var var_408:int;
      
      private var var_1835:String;
      
      private var var_1836:String;
      
      private var var_1838:int;
      
      private var var_1837:String;
      
      private var var_1839:int;
      
      private var var_587:Array;
      
      private var var_1003:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_587 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1003 = false;
            return;
         }
         this.var_1003 = true;
         var_1838 = int(_loc2_);
         var_1835 = param1.readString();
         var_408 = int(param1.readString());
         var_1839 = param1.readInteger();
         var_1784 = param1.readString();
         var_1836 = param1.readString();
         var_1837 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_587.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1839;
      }
      
      public function get eventName() : String
      {
         return var_1784;
      }
      
      public function get eventDescription() : String
      {
         return var_1836;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1835;
      }
      
      public function get tags() : Array
      {
         return var_587;
      }
      
      public function get creationTime() : String
      {
         return var_1837;
      }
      
      public function get exists() : Boolean
      {
         return var_1003;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1838;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_587 = null;
      }
      
      public function get flatId() : int
      {
         return var_408;
      }
   }
}
