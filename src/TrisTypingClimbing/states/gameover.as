package TrisTypingClimbing.states 
{
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import TrisTypingClimbing.Assets;
	import TrisTypingClimbing.Game;
	import TrisTypingClimbing.IState;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import com.greensock.TweenLite;
	

	public class gameover extends Sprite implements IState
	{
		public var game:Game;
		
		private var fondo:Image;
		private var dibujo:Image;
		private var elcasco:Image;
		private var intentalo:Image;
		private var menudacaida:Image;
		
		private var jugar:Button;
		
		public function gameover(game:Game) 
		{
			super();
			this.game = game;
			addEventListener(Event.ADDED_TO_STAGE,onaddedtostage)
			
		}
		
		private function onaddedtostage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onaddedtostage);
			Assets.looser.play();
			
			fondo = new Image(Assets.fondogameoTexture);
			addChild(fondo);
			
			dibujo = new Image(Assets.triscaidaTexture);
			dibujo.y = 900;
			dibujo.x = 1024 - dibujo.width;
			TweenLite.to(dibujo, 3, { y:768 - dibujo.height });
			addChild(dibujo);
			
			menudacaida = new Image(Assets.caidaTexture);
			menudacaida.x = 200;
			menudacaida.y = -30;
			TweenLite.to(menudacaida, 0.25, { y:40});
			addChild(menudacaida);
			
			elcasco = new Image(Assets.elcascoTexture);
			elcasco.x = -100;
			elcasco.y = 300;
			TweenLite.to(elcasco, 2, { x:50});
			addChild(elcasco);
			
			
			intentalo = new Image(Assets.againTexture);
			intentalo.y = 900;
			intentalo.x = 30;
			TweenLite.to(intentalo, 1, { y:550});
			addChild(intentalo);
			
			jugar = new Button(Assets.jugarTexture);
			jugar.x = 80;
			jugar.y = 1000;
			TweenLite.to(jugar, 2, { x:80, y:650 } );
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
			removeChild(fondo);
			fondo = null;
			removeChild(dibujo);
			dibujo = null;
			removeChild(intentalo);
			intentalo = null;
			removeChild(jugar);
			jugar = null;
			removeChild(elcasco);
			elcasco = null;
			removeChild(menudacaida);
			menudacaida = null;
			removeChild(jugar);
			jugar = null;

		}
		
	}

}