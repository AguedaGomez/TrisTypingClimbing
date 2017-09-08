package TrisTypingClimbing.states 
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import TrisTypingClimbing.Assets;
	import TrisTypingClimbing.Game;
	import starling.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import TrisTypingClimbing.IState;
	
	public class aviso extends Sprite implements IState 
	{
		private var game:Game;
		
		private var img:Image;
		
		public function aviso(game:Game) 
		{
			super();
			this.game = game;
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			img = new Image(Assets.avisoTexture);
			addChild(img);
			
			this.addEventListener(KeyboardEvent.KEY_DOWN, onDown);
		}
		
		private function onDown(e:KeyboardEvent):void 
		{
			if (e.keyCode == Keyboard.ENTER)
			{
				this.destroy();
				game.changeState("menu");
			}
		}
		
		public function update():void 
		{
			
		}
		
		public function destroy():void 
		{
			removeChild(img);
			removeEventListener(KeyboardEvent.KEY_DOWN,  onDown);
			img = null;
		}
		
	}

}