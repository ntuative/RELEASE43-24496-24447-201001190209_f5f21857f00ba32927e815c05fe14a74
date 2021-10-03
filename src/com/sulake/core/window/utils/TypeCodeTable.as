package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_613;
         param1["bitmap"] = const_638;
         param1["border"] = const_669;
         param1["border_notify"] = const_1320;
         param1["button"] = const_470;
         param1["button_thick"] = const_693;
         param1["button_icon"] = const_1346;
         param1["button_group_left"] = const_603;
         param1["button_group_center"] = const_644;
         param1["button_group_right"] = const_659;
         param1["canvas"] = const_688;
         param1["checkbox"] = const_559;
         param1["closebutton"] = const_979;
         param1["container"] = const_327;
         param1["container_button"] = const_618;
         param1["display_object_wrapper"] = const_726;
         param1["dropmenu"] = const_411;
         param1["dropmenu_item"] = const_350;
         param1["frame"] = const_275;
         param1["frame_notify"] = const_1311;
         param1["header"] = const_612;
         param1["icon"] = const_813;
         param1["itemgrid"] = const_893;
         param1["itemgrid_horizontal"] = const_386;
         param1["itemgrid_vertical"] = const_661;
         param1["itemlist"] = const_983;
         param1["itemlist_horizontal"] = const_295;
         param1["itemlist_vertical"] = const_282;
         param1["maximizebox"] = const_1307;
         param1["menu"] = const_1149;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_879;
         param1["minimizebox"] = const_1355;
         param1["notify"] = const_1301;
         param1["null"] = const_412;
         param1["password"] = const_513;
         param1["radiobutton"] = const_510;
         param1["region"] = const_354;
         param1["restorebox"] = const_1230;
         param1["scaler"] = const_781;
         param1["scaler_horizontal"] = const_1268;
         param1["scaler_vertical"] = const_1323;
         param1["scrollbar_horizontal"] = const_420;
         param1["scrollbar_vertical"] = const_626;
         param1["scrollbar_slider_button_up"] = const_953;
         param1["scrollbar_slider_button_down"] = const_890;
         param1["scrollbar_slider_button_left"] = const_896;
         param1["scrollbar_slider_button_right"] = const_914;
         param1["scrollbar_slider_bar_horizontal"] = const_891;
         param1["scrollbar_slider_bar_vertical"] = const_956;
         param1["scrollbar_slider_track_horizontal"] = const_801;
         param1["scrollbar_slider_track_vertical"] = const_981;
         param1["scrollable_itemlist"] = const_1231;
         param1["scrollable_itemlist_vertical"] = const_377;
         param1["scrollable_itemlist_horizontal"] = const_793;
         param1["selector"] = const_723;
         param1["selector_list"] = const_492;
         param1["submenu"] = const_879;
         param1["tab_button"] = const_635;
         param1["tab_container_button"] = const_929;
         param1["tab_context"] = const_459;
         param1["tab_content"] = const_937;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_550;
         param1["input"] = const_685;
         param1["toolbar"] = const_1129;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
