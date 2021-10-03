package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2223:int;
      
      private var var_2224:int;
      
      private var var_2225:int;
      
      private var var_212:Array;
      
      private var var_2226:int;
      
      private var var_2227:int;
      
      private var var_326:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_326 = new Array();
         this.var_212 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2223;
      }
      
      public function get friends() : Array
      {
         return this.var_212;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2225;
      }
      
      public function get categories() : Array
      {
         return this.var_326;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2224;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2227;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2227 = param1.readInteger();
         this.var_2225 = param1.readInteger();
         this.var_2223 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_326.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_212.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2224 = param1.readInteger();
         this.var_2226 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2226;
      }
   }
}
