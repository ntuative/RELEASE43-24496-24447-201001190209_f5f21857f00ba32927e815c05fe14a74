package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_538:int = 6;
      
      public static const const_195:int = 5;
      
      public static const const_654:int = 2;
      
      public static const const_324:int = 9;
      
      public static const const_300:int = 4;
      
      public static const const_249:int = 2;
      
      public static const const_643:int = 4;
      
      public static const const_190:int = 8;
      
      public static const const_639:int = 7;
      
      public static const const_260:int = 3;
      
      public static const const_292:int = 1;
      
      public static const const_193:int = 5;
      
      public static const const_406:int = 12;
      
      public static const const_305:int = 1;
      
      public static const const_721:int = 11;
      
      public static const const_616:int = 3;
      
      public static const const_1443:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_391:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_391 = new Array();
         var_391.push(new Tab(_navigator,const_292,const_406,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_451));
         var_391.push(new Tab(_navigator,const_249,const_305,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_451));
         var_391.push(new Tab(_navigator,const_300,const_721,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_865));
         var_391.push(new Tab(_navigator,const_260,const_195,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_451));
         var_391.push(new Tab(_navigator,const_193,const_190,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_615));
         setSelectedTab(const_292);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_391)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_391)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_391)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_300;
      }
      
      public function get tabs() : Array
      {
         return var_391;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
