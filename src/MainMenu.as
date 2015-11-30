package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	import net.flashpunk.World;
	/**
	 * ...
	 * @author UnknownGuardian
	 */
	public class MainMenu extends World
	{
		private var _level:Level;
		public static var lava:LavaGrid;
		public static var ladder:LadderGrid;
		private var _player:Player;
		//private var _backdrop:Entity;
		private var _backdrop:Background;
		private var _messageBox:MessageBox;
		private var _overlay:Overlay;
		private var _menuText:MenuText;
		private var _instructText:InstructionsText;
		public static var scoreBox:ScoreBox;
		
		public static var flash:Flash;
		public static var quake:Quake;
		
		
		public static var menuMusic:Sfx = new Sfx(MenuLoop, null, "menu");
		public static var gameMusic:Sfx = new Sfx(GameLoop, null, "game"); 
		public static var musicMuted:Boolean = false;
		
		public static var hitSound:Sfx = new Sfx(Hit2, null, "hit");
		public static var jumpSound:Sfx = new Sfx(Jump2, null, "jump");
		public static var unmuteToggleSound:Sfx = new Sfx(MuteSound, null, "unmute");
		
		public function MainMenu() 
		{
			_backdrop = new Background();
			//_backdrop = new Entity(0, 0, new Background());
			_backdrop.layer = 99999;
			//_backdrop.active = false;
			add(_backdrop);
			
			_level = new Level();
			add(_level);
			
			lava = new LavaGrid();
			add(lava);
			
			ladder = new LadderGrid();
			add(ladder);
			
			menuMusic.loop(1);
			
		}
		
		override public function begin():void
		{
			_player = new Player(_level.getPlayerLocation());
			add(_player);
			
			_messageBox = new MessageBox();
			add(_messageBox);
			
			scoreBox = new ScoreBox();
			add(scoreBox);
			
			_menuText = new MenuText();
			add(_menuText);
			
			_instructText = new InstructionsText();
			add(_instructText);
			
			_overlay = new Overlay();
			add(_overlay);
			
			flash = new Flash();
			quake = new Quake();
			
			ScoreTracker.loadHighScores();
			Sign.Adventure.setMessage( "Adventure! Best run time: " + ScoreTracker.getHighScore(3));
			Sign.Tricky.setMessage( "Tricky! Best run time: " + ScoreTracker.getHighScore(2));
			Sign.Simple.setMessage( "Simple! Best run time: " + ScoreTracker.getHighScore(1));
		}
		
		override public function update():void 
		{
			super.update();
			
			flash.update();
			quake.update();
		}
		
		override public function render():void 
		{
			super.render();
			flash.render();
		}
		
		
		public function getMessageBox():MessageBox
		{
			return _messageBox;
		}
		public function getPlayer():Player
		{
			return _player;
		}
		public function getLevel():Level
		{
			return _level;
		}
		
	}

}