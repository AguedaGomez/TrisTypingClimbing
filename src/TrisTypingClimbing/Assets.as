package TrisTypingClimbing 
{

	import flash.media.Sound;
	import flash.media.SoundTransform;
	import starling.text.BitmapFont;
	import starling.text.TextField;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;

	public class Assets 
	{
		[Embed(source = "../../Assets/cielo.png")]
		private static var cielobg:Class;
		public static var cielobgTexture:Texture;
		
		[Embed(source = "../../Assets/nube1.png")]
		private static var nube1:Class;
		public static var nube1Texture:Texture;
		
		[Embed(source = "../../Assets/nube2.png")]
		private static var nube2:Class;
		public static var nube2Texture:Texture;
		
		[Embed(source = "../../Assets/nube3.png")]
		private static var nube3:Class;
		public static var nube3Texture:Texture;
		
		[Embed(source = "../../Assets/nube4.png")]
		private static var nube4:Class;
		public static var nube4Texture:Texture;
		
		[Embed(source = "../../Assets/nube5.png")]
		private static var nube5:Class;
		public static var nube5Texture:Texture;
		
		[Embed(source="../../Assets/montaña.png")]
		private static var roca:Class;
		public static var rocaTexture:Texture;
		
		[Embed(source = "../../Assets/tris.png")]
		private static var tris:Class;
		public static var trisTexture:Texture;
		
		[Embed(source = "../../Assets/font.png")]
		private static var font:Class;
		[Embed(source = "../../Assets/font.fnt", mimeType = "application/octet-stream")]
		private static var fontXML:Class;
		
		[Embed(source = "../../Assets/jugar.png")]
		private static var jugar:Class;
		public static var jugarTexture:Texture;
		
		[Embed(source = "../../Assets/menufondo.png")]
		private static var menubg:Class;
		public static var menubgTexture:Texture;
		
		[Embed(source = "../../Assets/trismenu.png")]
		private static var trismenu:Class;
		public static var trismenuTexture:Texture;
		
		[Embed(source = "../../Assets/titulo.png")]
		private static var titulo:Class;
		public static var tituloTexture:Texture;
		
		[Embed(source = "../../Assets/copa.png")]
		private static var copa:Class;
		public static var copaTexture:Texture;
		
		[Embed(source = "../../Assets/felicidades.png")]
		private static var felicidades:Class;
		public static var felicidadesTexture:Texture;
		
		[Embed(source = "../../Assets/fondowin.png")]
		private static var fondowin:Class;
		public static var fondowinTexture:Texture;
		
		[Embed(source = "../../Assets/GAME OVER.png")]
		private static var fondogameo:Class;
		public static var fondogameoTexture:Texture;
		
		[Embed(source = "../../Assets/ELCASCO.png")]
		private static var elcasco:Class;
		public static var elcascoTexture:Texture;
		
		[Embed(source = "../../Assets/AGAIN.png")]
		private static var again:Class;
		public static var againTexture:Texture;
		
		[Embed(source = "../../Assets/CAIDA.png")]
		private static var caidar:Class;
		public static var caidaTexture:Texture;
		
		[Embed(source = "../../Assets/TRISCAIDA.png")]
		private static var triscaida:Class;
		public static var triscaidaTexture:Texture;
		
		[Embed(source = "../../Assets/aviso.png")]
		private static var avisoimg:Class;
		public static var avisoTexture:Texture;
		
		[Embed(source = "../../Assets/campanacarme1.mp3")]
		private static var aciertoSound:Class;
		public static var acierto:Sound;
		
		[Embed(source = "../../Assets/moc203.mp3")]
		private static var falloSound:Class;
		public static var fallo:Sound;
		
		
		[Embed(source = "../../Assets/looserWha Wha Wha.mp3")]
		private static var looserSound:Class;
		public static var looser:Sound;
		
		[Embed(source="../../Assets/The Builder.mp3")]
		private static var menuMusica:Class;
		public static var musicamenu:Sound;
		
		[Embed(source = "../../Assets/Marty Gots a Plan.mp3")]
		private static var playmusica:Class;
		public static var musicajugar:Sound;
		
		[Embed(source = "../../Assets/Meatball Parade.mp3")]
		private static var winmusica:Class;
		public static var musicaganar:Sound;
		
		
		public static function init():void 
		{
			cielobgTexture = Texture.fromBitmap(new cielobg());
			nube1Texture = Texture.fromBitmap(new nube1());
			nube2Texture = Texture.fromBitmap(new nube2());
			nube3Texture = Texture.fromBitmap(new nube3());
			nube4Texture = Texture.fromBitmap(new nube4());
			nube5Texture = Texture.fromBitmap(new nube5());
			rocaTexture = Texture.fromBitmap(new roca());
			trisTexture = Texture.fromBitmap(new tris());
			jugarTexture = Texture.fromBitmap(new jugar());
			menubgTexture = Texture.fromBitmap(new menubg());
			trismenuTexture = Texture.fromBitmap(new trismenu());
			tituloTexture = Texture.fromBitmap(new titulo());
			fondowinTexture = Texture.fromBitmap(new fondowin());
			felicidadesTexture = Texture.fromBitmap(new felicidades());
			copaTexture = Texture.fromBitmap(new copa());
			caidaTexture = Texture.fromBitmap(new caidar());
			againTexture = Texture.fromBitmap(new again());
			elcascoTexture = Texture.fromBitmap(new elcasco());
			fondogameoTexture = Texture.fromBitmap(new fondogameo());
			triscaidaTexture = Texture.fromBitmap(new triscaida());
			avisoTexture = Texture.fromBitmap(new avisoimg());
			
			acierto = new aciertoSound();
			acierto.play(0, 0, new SoundTransform(0));
			
			fallo = new falloSound();
			fallo.play(0, 0, new SoundTransform(0));

			
			looser = new looserSound();
			looser.play(0, 0, new SoundTransform(0));
			
			musicamenu = new menuMusica();
			musicamenu.play(0, 0, new SoundTransform(0));
			
			musicajugar = new playmusica();
			musicajugar.play(0, 0, new SoundTransform(0));
			
			musicaganar = new winmusica();
			musicaganar.play(0, 0, new SoundTransform(0));
			
			TextField.registerBitmapFont(new BitmapFont(Texture.fromBitmap(new font()),
				XML(new fontXML())));
			}
		
	}

}