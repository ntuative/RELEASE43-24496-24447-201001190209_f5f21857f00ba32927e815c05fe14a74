package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_97;
         param1["bound_to_parent_rect"] = const_83;
         param1["child_window"] = const_862;
         param1["embedded_controller"] = const_288;
         param1["resize_to_accommodate_children"] = const_59;
         param1["input_event_processor"] = const_48;
         param1["internal_event_handling"] = const_590;
         param1["mouse_dragging_target"] = const_215;
         param1["mouse_dragging_trigger"] = const_309;
         param1["mouse_scaling_target"] = const_261;
         param1["mouse_scaling_trigger"] = const_345;
         param1["horizontal_mouse_scaling_trigger"] = const_221;
         param1["vertical_mouse_scaling_trigger"] = const_205;
         param1["observe_parent_input_events"] = const_892;
         param1["optimize_region_to_layout_size"] = const_433;
         param1["parent_window"] = const_816;
         param1["relative_horizontal_scale_center"] = const_169;
         param1["relative_horizontal_scale_fixed"] = const_119;
         param1["relative_horizontal_scale_move"] = const_307;
         param1["relative_horizontal_scale_strech"] = const_258;
         param1["relative_scale_center"] = const_828;
         param1["relative_scale_fixed"] = const_602;
         param1["relative_scale_move"] = const_958;
         param1["relative_scale_strech"] = const_785;
         param1["relative_vertical_scale_center"] = const_151;
         param1["relative_vertical_scale_fixed"] = const_124;
         param1["relative_vertical_scale_move"] = const_326;
         param1["relative_vertical_scale_strech"] = const_268;
         param1["on_resize_align_left"] = const_630;
         param1["on_resize_align_right"] = const_421;
         param1["on_resize_align_center"] = const_426;
         param1["on_resize_align_top"] = const_562;
         param1["on_resize_align_bottom"] = const_464;
         param1["on_resize_align_middle"] = const_405;
         param1["on_accommodate_align_left"] = const_943;
         param1["on_accommodate_align_right"] = const_342;
         param1["on_accommodate_align_center"] = const_580;
         param1["on_accommodate_align_top"] = const_829;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_660;
         param1["route_input_events_to_parent"] = const_445;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_787;
         param1["scalable_with_mouse"] = const_954;
         param1["reflect_horizontal_resize_to_parent"] = const_413;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_269;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
