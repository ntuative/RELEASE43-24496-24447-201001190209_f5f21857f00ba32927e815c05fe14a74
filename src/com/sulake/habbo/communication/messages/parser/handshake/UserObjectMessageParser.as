package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_508:String;
      
      private var var_2212:String;
      
      private var var_2209:int;
      
      private var var_2211:int;
      
      private var var_1282:String;
      
      private var var_1159:String;
      
      private var _name:String;
      
      private var var_462:int;
      
      private var var_788:int;
      
      private var var_2210:int;
      
      private var _respectTotal:int;
      
      private var var_2213:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2211;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1159;
      }
      
      public function get customData() : String
      {
         return this.var_2212;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_462;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2209;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2213;
      }
      
      public function get figure() : String
      {
         return this.var_508;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_1282;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_508 = param1.readString();
         this.var_1282 = param1.readString();
         this.var_2212 = param1.readString();
         this.var_1159 = param1.readString();
         this.var_2210 = param1.readInteger();
         this.var_2213 = param1.readString();
         this.var_2209 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_788 = param1.readInteger();
         this.var_462 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2210;
      }
      
      public function get respectLeft() : int
      {
         return this.var_788;
      }
   }
}
