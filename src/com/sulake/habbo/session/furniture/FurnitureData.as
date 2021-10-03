package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1525:String = "e";
      
      public static const const_1465:String = "i";
      
      public static const const_1482:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_1653:int;
      
      private var var_1219:Array;
      
      private var var_1654:int;
      
      private var var_1657:int;
      
      private var var_1656:int;
      
      private var _name:String;
      
      private var var_1655:int;
      
      private var var_1100:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_1653 = param4;
         var_1655 = param5;
         var_1654 = param6;
         var_1657 = param7;
         var_1656 = param8;
         var_1219 = param9;
         _title = param10;
         var_1100 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_1657;
      }
      
      public function get tileSizeZ() : int
      {
         return var_1656;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_1655;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_1653;
      }
      
      public function get tileSizeX() : int
      {
         return var_1654;
      }
      
      public function get colours() : Array
      {
         return var_1219;
      }
      
      public function get description() : String
      {
         return var_1100;
      }
   }
}
