package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_495:String = "Rectangle";
      
      public static const const_56:String = "Boolean";
      
      public static const const_516:String = "Number";
      
      public static const const_62:String = "int";
      
      public static const const_156:String = "String";
      
      public static const const_610:String = "Point";
      
      public static const const_965:String = "Array";
      
      public static const const_795:String = "uint";
      
      public static const const_348:String = "hex";
      
      public static const const_915:String = "Map";
       
      
      private var var_522:String;
      
      private var var_168:Object;
      
      private var var_2208:Boolean;
      
      private var _type:String;
      
      private var var_1670:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_522 = param1;
         var_168 = param2;
         _type = param3;
         var_1670 = param4;
         var_2208 = param3 == const_915 || param3 == const_965 || param3 == const_610 || param3 == const_495;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_348:
               return "0x" + uint(var_168).toString(16);
            case const_56:
               return Boolean(var_168) == true ? "true" : "UserChatlogEvent";
            case const_610:
               return "Point(" + Point(var_168).x + ", " + Point(var_168).y + ")";
            case const_495:
               return "Rectangle(" + Rectangle(var_168).x + ", " + Rectangle(var_168).y + ", " + Rectangle(var_168).width + ", " + Rectangle(var_168).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_915:
               _loc3_ = var_168 as Map;
               _loc1_ = "<var key=\"" + var_522 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_965:
               _loc4_ = var_168 as Array;
               _loc1_ = "<var key=\"" + var_522 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_610:
               _loc5_ = var_168 as Point;
               _loc1_ = "<var key=\"" + var_522 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_62 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_62 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_495:
               _loc6_ = var_168 as Rectangle;
               _loc1_ = "<var key=\"" + var_522 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_62 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_62 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_62 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_62 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_348:
               _loc1_ = "<var key=\"" + var_522 + "\" value=\"" + "0x" + uint(var_168).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_522 + "\" value=\"" + var_168 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_168;
      }
      
      public function get valid() : Boolean
      {
         return var_1670;
      }
      
      public function get key() : String
      {
         return var_522;
      }
   }
}
