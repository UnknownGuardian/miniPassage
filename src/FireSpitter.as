package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author UnknownGuardian
	 */
	public class FireSpitter extends Entity
	{
		[Embed(source="Assets/Graphics/Enemies/evil_tile.png")]private const FIRESPITTER:Class;
		private var _image:Image;
		
		private var _fireballCounter:int = 0;
		private var _player:Player;
		
		public function FireSpitter(X:int,Y:int, facingRight:Boolean) 
		{
			super(X, Y);
			_image = new Image(FIRESPITTER);
			
			graphic = _image;
			setHitbox(16, 16);
			type = "FireSpitter";
			layer = 270;
			
			_image.flipped = !facingRight;
		}
		
		public override function update():void
		{
			if (_player == null) _player = (world as MainMenu).getPlayer();
			
			_fireballCounter++;
			if (_fireballCounter > 150 && Math.abs(_player.x - x) < 400)
			{
				_fireballCounter = 0;
				var fireball:Fireball = new Fireball(x,y, 1.5*(_image.flipped?-1:1));
				world.add(fireball);
				
			}
		}
		
	}

}