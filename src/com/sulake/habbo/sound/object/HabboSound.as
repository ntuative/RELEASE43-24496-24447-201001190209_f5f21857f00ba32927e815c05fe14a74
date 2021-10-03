package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1028:SoundChannel = null;
      
      private var var_863:Boolean;
      
      private var var_1029:Sound = null;
      
      private var var_695:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1029 = param1;
         var_1029.addEventListener(Event.COMPLETE,onComplete);
         var_695 = 1;
         var_863 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_863;
      }
      
      public function stop() : Boolean
      {
         var_1028.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_863 = false;
         var_1028 = var_1029.play(0);
         this.volume = var_695;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_695;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1028.position;
      }
      
      public function get length() : Number
      {
         return var_1029.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_695 = param1;
         if(var_1028 != null)
         {
            var_1028.soundTransform = new SoundTransform(var_695);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_863 = true;
      }
   }
}
