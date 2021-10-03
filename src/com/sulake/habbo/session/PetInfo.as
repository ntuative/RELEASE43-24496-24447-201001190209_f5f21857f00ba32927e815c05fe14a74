package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1686:int;
      
      private var var_1626:int;
      
      private var var_1689:int;
      
      private var var_1683:int;
      
      private var _nutrition:int;
      
      private var var_1284:int;
      
      private var var_1681:int;
      
      private var var_1680:int;
      
      private var _energy:int;
      
      private var var_1687:int;
      
      private var var_1685:int;
      
      private var _ownerName:String;
      
      private var var_1679:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1686;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1626 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1686 = param1;
      }
      
      public function get petId() : int
      {
         return var_1284;
      }
      
      public function get experienceMax() : int
      {
         return var_1680;
      }
      
      public function get nutritionMax() : int
      {
         return var_1683;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1681 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1679;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1284 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1685;
      }
      
      public function get respect() : int
      {
         return var_1626;
      }
      
      public function get levelMax() : int
      {
         return var_1681;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1680 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1689 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1683 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1679 = param1;
      }
      
      public function get experience() : int
      {
         return var_1689;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1685 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1687 = param1;
      }
      
      public function get age() : int
      {
         return var_1687;
      }
   }
}
