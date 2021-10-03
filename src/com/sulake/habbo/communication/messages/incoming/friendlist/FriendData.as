package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_508:String;
      
      private var var_1158:String;
      
      private var var_1160:String;
      
      private var var_1101:int;
      
      private var _gender:int;
      
      private var var_1159:String;
      
      private var _name:String;
      
      private var var_1155:Boolean;
      
      private var var_704:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_704 = param1.readBoolean();
         this.var_1155 = param1.readBoolean();
         this.var_508 = param1.readString();
         this.var_1101 = param1.readInteger();
         this.var_1160 = param1.readString();
         this.var_1158 = param1.readString();
         this.var_1159 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1159;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1160;
      }
      
      public function get categoryId() : int
      {
         return var_1101;
      }
      
      public function get online() : Boolean
      {
         return var_704;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1155;
      }
      
      public function get lastAccess() : String
      {
         return var_1158;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_508;
      }
   }
}
