package TrisTypingClimbing.states 
{
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import starling.events.Event;
	import TrisTypingClimbing.Assets;
	import TrisTypingClimbing.Game;
	
	import starling.display.Image;
	import starling.display.Sprite;
	import TrisTypingClimbing.IState;
	import starling.display.Button;
	
	import com.greensock.TweenLite;
	import com.greensock.easing.*;
	
	

	public class menu extends Sprite implements IState 
	{
		private var game:Game;
		
		private var jugar:Button;
		private var bg:Image;
		private var trism:Image;
		private var titulo:Image;
		
		private var musica:SoundChannel;
		
		public function menu(game:Game) 
		{
			super();
			this.game = game;
			addEventListener(Event.ADDED_TO_STAGE, init);
			
		}
		
		private function init(e:Event):void 
		{
			musica = Assets.musicamenu.play();
			
			bg = new Image(Assets.menubgTexture);
			addChild(bg);
			
			trism = new Image(Assets.trismenuTexture);
			trism.x = 410;
			trism.y = -300;
			TweenLite.to(trism, 0.5, { x:410, y:130, ease:Bounce.easeOut} );
			
			
			addChild(trism);
			
			titulo = new Image(Assets.tituloTexture);
			titulo.x = -200;
			titulo.y = 60;
			TweenLite.to(titulo, 1, { x:10, y:60 } );
			addChild(titulo);
			
			jugar = new Button(Assets.jugarTexture);
			jugar.x = 80;
			jugar.y = 800;
			TweenLite.to(jugar, 2, { x:80, y:600 } );
			addChild(jugar);
			
			jugar.addEventListener(Event.TRIGGERED, pulsajugar);
			
			
		}
		
		private function pulsajugar(e:Event):void 
		{
			this.destroy();
			game.changeState("play");
		}
		
		public function update():void 
		{
			
			
		}
		
		public function destroy():void
		{
			removeChild(bg);
			bg = null;
			removeChild(trism);
			trism = null;
			removeChild(titulo);
			titulo = null;
			removeChild(jugar);
			jugar = null;
			musica.stop();
			
		}
		
	}

}