package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1686:int;
      
      private var var_1689:int;
      
      private var var_1683:int;
      
      private var _type:int;
      
      private var var_1284:int = -1;
      
      private var var_1681:int;
      
      private var _nutrition:int;
      
      private var var_1680:int;
      
      private var _energy:int;
      
      private var var_1544:int;
      
      private var var_1685:int;
      
      private var var_1682:int;
      
      private var var_1687:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1684:Boolean;
      
      private var _name:String = "";
      
      private var var_1679:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1684;
      }
      
      public function get level() : int
      {
         return var_1686;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1680;
      }
      
      public function get id() : int
      {
         return var_1284;
      }
      
      public function get nutritionMax() : int
      {
         return var_1683;
      }
      
      public function get ownerId() : int
      {
         return var_1679;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1284 = param1.id;
         _type = param1.petType;
         var_1544 = param1.petRace;
         _image = param1.image;
         var_1684 = param1.isOwnPet;
         var_1679 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1686 = param1.level;
         var_1681 = param1.levelMax;
         var_1689 = param1.experience;
         var_1680 = param1.experienceMax;
         _energy = param1.energy;
         var_1685 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1683 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1682 = param1.roomIndex;
         var_1687 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1682;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1685;
      }
      
      public function get levelMax() : int
      {
         return var_1681;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1544;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1689;
      }
      
      public function get age() : int
      {
         return var_1687;
      }
   }
}
