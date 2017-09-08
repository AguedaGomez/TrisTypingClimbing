package TrisTypingClimbing.states 
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;
	import TrisTypingClimbing.Assets;
	import TrisTypingClimbing.Game;
	import TrisTypingClimbing.IState;
	import starling.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	
	public class play extends Sprite implements IState
	{
		public var game:Game;
		
		public var tris:Image;
		private var background:Image;
		private var roca:Image;
		
		private var mensaje:Array;
		private var typing:String = "";
		private var indicepalabra:int = 0;
		private var text:TextField;
		
		private var nube1:Image;
		private var nube2:Image;
		private var nube3:Image;
		private var nube4:Image;
		private var nube5:Image;
		
		private var nnube:int = Math.random() * 4;
		private var nube:Image;
		
		private var velocidad:int = 3;
		private var musica:SoundChannel;
		
		private var nmensaje:int = Math.ceil(Math.random() * 5);
		
		
		public function play(game:Game) 
		{
			super();
			this.game = game;
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			musica = Assets.musicajugar.play();
			
			mensaje = new Array();
			
			elegirmensaje();

			 
			
			background = new Image(Assets.cielobgTexture);
			addChild(background);
			
			roca = new Image(Assets.rocaTexture);
			roca.x = 160;
			addChild(roca);
			
			
			tris = new Image(Assets.trisTexture);
			tris.pivotX = tris.width >> 2;
			tris.pivotY = tris.height >> 2;
			tris.x = 520;
			tris.y = 578;
			addChild(tris);
			
			nube1 = new Image(Assets.nube1Texture);
			nube2 = new Image(Assets.nube2Texture);
			nube3 = new Image(Assets.nube3Texture);
			nube4 = new Image(Assets.nube4Texture);
			nube5 = new Image(Assets.nube5Texture);
			
			text = new TextField(200, 100, mensaje[indicepalabra], "font", 30);
			text.y = -5;
			text.x = Math.random() * 800;
			
			
			drawnube();
			addChild(text);
			
			this.addEventListener(KeyboardEvent.KEY_DOWN, onDown);
			
			
			
		}
		
		private function elegirmensaje():void 
		{
			switch(nmensaje)
			{
				case 1:
					mensaje.push("hoy", "es", "el", "dia", "en", "el", "que", "celebramos", "que", "tu", "alegria", "ilusion", "e", "incansable", "optimismo", "forma", "parte", "de", 
					"nuestra", "vida", "brindemos", "un", "anio", "mas", "para", "seguir", "disfutrandote", "agueda", "ups", "te", "esta", "costando", "llegar", "a", "la","cima");
					break;
				case 2:
					mensaje.push("cuando", "llegues", "al", "cerro", "socorro", "haz", "lo", "que", "puedas", "de", "tu", "tia", "eva", "sigue", "tan", "feliz", "como", "ahora",
					"y", "recoge", "las", "zapatillas", "de", "tu", "habitacion", "tu", "madre", "no", "te", "rindas", "algun", "dia", "llegaras", "la", "cima", "no", "se", "mueve");
					break;
				case 3:
					mensaje.push("tristana", "aniceto", "tres", "te", "meto", "el", "abuelo", "no", "hay", "via", "dificil", "para", "ti", "de", "jesus", "estoy", "muy", "orgullosa",
					"de", "ti", "jirafo", "tu", "tia", "nines", "que", "guapa", "eres", "tristaneta", "ten", "cuidado", "que", "al", "final", "te", "vas", "a", "caer");
					break;
				case 4:
					mensaje.push("siempre", "sacandonos", "una", "sonrisa", "un", "latido", "una", "ilusion", "solamente", "como", "tu", "lo", "sabes", "hacer", "pablo", "el",
					"tio", "chiqui", "te", "felicita", "vamos", "tristana", "querer", "es", "poder", "la", "hierbas", "hay", "que", "demostrar", "la", "agilidad", "en", "el",
					"teclado", "y", "tu", "no", "lo", "estas", "haciendo");
					break;
				case 5:
					mensaje.push("tu", "primo", "esteban", "te", "aconseja", "folla", "mas", "y", "estudia", "menos", "esperamos", "que", "te", "haya", "gustado", "este", "regalo", 
					"pues", "tiene", "una", "parte", "de", "todos", "nosostros", "sigue", "jugando", "cada", "partida", "puedes", "descubrir", "un", "nuevo", "mensaje");
					break;
					
			}
		}
		
		private function drawnube():void 
		{
			switch(nnube)
			{
				case 0:
					nube=nube1;
					break;
				case 1:
					nube = nube2;
					break;
				case 2:
					nube = nube3;
					break;
				case 3:
					nube = nube4;
					break;
				case 4:
					nube = nube5;
					break;
			}
			
			addChild(nube);
			nube.x = text.x;
		}
		
		private function onDown(e:KeyboardEvent):void 
		{
			switch(e.keyCode)
			{
				case Keyboard.A:
					typing += "a";
					break;
				case Keyboard.B:
					typing += "b";
					break;
				case Keyboard.C:
					typing += "c";
					break;
				case Keyboard.D:
					typing += "d";
					break;
				case Keyboard.E:
					typing += "e";
					break;
				case Keyboard.F:
					typing += "f";
					break;
				case Keyboard.G:
					typing += "g";
					break;
				case Keyboard.H:
					typing += "h";
					break;
				case Keyboard.I:
					typing += "i";
					break;
				case Keyboard.J:
					typing += "j";
					break;
				case Keyboard.L:
					typing += "l";
					break;
				case Keyboard.M:
					typing += "m";
					break;
				case Keyboard.N:
					typing += "n";
					break;
				case Keyboard.O:
					typing += "o";
					break;
				case Keyboard.P:
					typing += "p";
					break;
				case Keyboard.Q:
					typing += "q";
					break;
				case Keyboard.R:
					typing += "r";
					break;
				case Keyboard.S:
					typing += "s";
					break;
				case Keyboard.T:
					typing += "t";
					break;
				case Keyboard.U:
					typing += "u";
					break;
				case Keyboard.V:
					typing += "v";
					break;
				case Keyboard.Y:
					typing += "y";
					break;
				case Keyboard.Z:
					typing += "z";
					break;
				case Keyboard.ENTER:
					checkword();
					break;
			}
		}
		
		private function checkword():void 
		{
			trace(typing);
			tris.scaleX *= -1;
			
			if (typing == mensaje[indicepalabra])
			{
				Assets.acierto.play();
				tris.y -= 20;
				removeChild(text);
				text = null;
				indicepalabra++;
				
				if (indicepalabra == mensaje.length) 
				{
					indicepalabra = 0;
	
				}
				
				text = new TextField(200, 100, mensaje[indicepalabra], "font", 30, 0x000000)
				text.y = -5;
				text.x = Math.random() * 800;
				
				
				removeChild(nube);
				nnube = Math.random() * 4;
				drawnube();
				addChild(text);
				
			}
			
			else
			{
				Assets.fallo.play();
				tris.y += 40;
				velocidad *= 2;
				
			}
			
			
			typing = "";
		}
		
		public function update():void 
		{
			checkposition();
			text.y += velocidad;
			nube.y = text.y;
			
		}
		
		private function checkposition():void 
		{
			if (text.y > 768) {
				//sonido equivocacion
				
				removeChild(text);
				text = null;
				indicepalabra++;
				
				if (indicepalabra == mensaje.length)
				{

					indicepalabra = 0;
				}
					
				text = new TextField(200, 100, mensaje[indicepalabra], "font", 30, 0x000000)
				text.y = -5;
				text.x = Math.random() * 800;
				addChild(text);
				
				removeChild(nube);
				nnube = Math.ceil(Math.random() * 4);
				drawnube();
				
				tris.scaleX *= -1;
				tris.y += 50; //cambiar a mas
				
				velocidad = 3;
			}
			
			if (tris.y > 768) {
				this.destroy();
				game.changeState("gameover");
			}
			
			if (tris.y < 50) {
				this.destroy();
				game.changeState("win");
			}
		}
		
		public function destroy():void
		{
			removeChild(background);
			removeChild(roca);
			removeChild(tris);
			removeChild(nube);
			removeChild(nube1);
			removeChild(nube2);
			removeChild(nube3);
			removeChild(nube4);
			removeChild(nube5);
			removeChild(text);
			removeEventListener(KeyboardEvent.KEY_DOWN, onDown);
			mensaje = null;
			musica.stop();
		}
		
		
	}

}