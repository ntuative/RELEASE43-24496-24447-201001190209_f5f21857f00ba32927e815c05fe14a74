package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2205:Boolean;
      
      private var var_2206:int;
      
      private var var_2203:Boolean;
      
      private var var_1527:String;
      
      private var var_1159:String;
      
      private var var_1733:int;
      
      private var var_2175:String;
      
      private var var_2204:String;
      
      private var var_2174:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1733 = param1.readInteger();
         this.var_1527 = param1.readString();
         this.var_2175 = param1.readString();
         this.var_2205 = param1.readBoolean();
         this.var_2203 = param1.readBoolean();
         param1.readString();
         this.var_2206 = param1.readInteger();
         this.var_2174 = param1.readString();
         this.var_2204 = param1.readString();
         this.var_1159 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1159;
      }
      
      public function get avatarName() : String
      {
         return this.var_1527;
      }
      
      public function get avatarId() : int
      {
         return this.var_1733;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2205;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2204;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2174;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2203;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2175;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2206;
      }
   }
}
