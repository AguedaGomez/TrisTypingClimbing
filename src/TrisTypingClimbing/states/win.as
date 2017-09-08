package TrisTypingClimbing.states 
{
	import flash.media.SoundChannel;
	import starling.events.Event;
	import starling.display.Image;
	import starling.display.Sprite;
	import TrisTypingClimbing.Assets;
	import TrisTypingClimbing.Game;
	import TrisTypingClimbing.IState;
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	import starling.events.KeyboardEvent;
	import flash.ui.Keyboard;

	public class win extends Sprite implements IState
	{
		
		private var game: Game;
		
		private var text:Image;
		private var copa:Image;
		private var bg:Image;
		
		private var musica:SoundChannel;
		
		public function win(game:Game) 
		{
			super();
			this.game = game;
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			musica = Assets.musicaganar.play();
			
			bg = new Image(Assets.fondowinTexture);
			addChild(bg);
			
			text = new Image(Assets.felicidadesTexture);
			text.x = 100;
			text. y = -768;
			TweenLite.to(text, 0.5, {x:100, y:10, ease:Bounce.easeOut});
			addChild(text);
			
			copa = new Image(Assets.copaTexture);
			copa.scaleX *= 0.02;
			copa.scaleY *= 0.02;
			copa.x = 500;
			copa.y = 383;
			TweenLite.to(copa, 1, {x:380, y:170, scaleX:1, scaleY:1, ease:Expo.easeInOut});
			addChild(copa);
			
			this.addEventListener(KeyboardEvent.KEY_DOWN, onDown);
		}
		
		private function onDown(e:KeyboardEvent):void 
		{
			if (e.keyCode == Keyboard.ENTER)
			{
				this.destroy();
				game.changeState("play");
			}
		}
		
		public function update():void 
		{
			
		}
		
		public function destroy():void
		{
			removeChild(bg);
			bg = null;
			removeChild(text);
			text = null;
			removeChild(copa);
			copa = null;
			removeEventListener(KeyboardEvent.KEY_DOWN, onDown);
			musica.stop();
		}
		
	}

}