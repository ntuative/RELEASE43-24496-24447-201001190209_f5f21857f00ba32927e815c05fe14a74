package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1328:int = 4;
      
      public static const const_521:int = 3;
      
      public static const const_496:int = 2;
      
      public static const const_837:int = 1;
       
      
      private var var_1857:String;
      
      private var _disposed:Boolean;
      
      private var var_1664:int;
      
      private var var_1856:Boolean;
      
      private var var_741:String;
      
      private var var_779:PublicRoomData;
      
      private var var_1854:int;
      
      private var _index:int;
      
      private var var_1855:String;
      
      private var _type:int;
      
      private var var_1602:String;
      
      private var var_780:GuestRoomData;
      
      private var var_1853:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1857 = param1.readString();
         var_1853 = param1.readString();
         var_1856 = param1.readInteger() == 1;
         var_1855 = param1.readString();
         var_741 = param1.readString();
         var_1854 = param1.readInteger();
         var_1664 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_837)
         {
            var_1602 = param1.readString();
         }
         else if(_type == const_521)
         {
            var_779 = new PublicRoomData(param1);
         }
         else if(_type == const_496)
         {
            var_780 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1854;
      }
      
      public function get popupCaption() : String
      {
         return var_1857;
      }
      
      public function get userCount() : int
      {
         return var_1664;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1856;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_837)
         {
            return 0;
         }
         if(this.type == const_496)
         {
            return this.var_780.maxUserCount;
         }
         if(this.type == const_521)
         {
            return this.var_779.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1853;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_780 != null)
         {
            this.var_780.dispose();
            this.var_780 = null;
         }
         if(this.var_779 != null)
         {
            this.var_779.dispose();
            this.var_779 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_780;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1855;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_779;
      }
      
      public function get picRef() : String
      {
         return var_741;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1602;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
