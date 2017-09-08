package TrisTypingClimbing 
{
	import starling.display.Sprite;
	import starling.events.Event;
	import TrisTypingClimbing.states.aviso;
	import TrisTypingClimbing.states.gameover;
	import TrisTypingClimbing.states.menu;
	import TrisTypingClimbing.states.play;
	import TrisTypingClimbing.states.win;
	

	public class Game extends Sprite 
	{
		private var current_state:IState;
		
		
		public function Game() 
		{
			super();
			addEventListener(Event.ENTER_FRAME, OnEnterFrame);
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			Assets.init();
			changeState("aviso"); //cambiar a menu
			
			
		}
		
		public function changeState(state:String):void 
		{
			if (current_state != null)
			{
				current_state.destroy();
				current_state = null;
			}
			
			switch(state)
			{
				case "menu":
					current_state = new menu(this);
					break;
				case "play":
					current_state = new play(this);
					break;
				case "gameover":
					current_state = new gameover(this);
					break;
				case "win":
					current_state = new win(this);
					break;
				case "aviso":
					current_state = new aviso(this);
					break;
			}
			addChild(Sprite(current_state));
		}
		
		private function OnEnterFrame(e:Event):void 
		{
			current_state.update();
		}
		
	}

}