package  
{
	import flash.display.BitmapData;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author UnknownGuardian
	 */
	public class Water extends Entity 
	{
		[Embed(source = "Assets/Graphics/Tiles/water.png")]private const WATER:Class;
		private var _image:Image;
		public function Water(X:int,Y:int) 
		{
			super(X, Y);
			_image = new Image(WATER);
			graphic = _image;
			setHitbox(16, 16, 0, 0);
			type = "Water";
			layer = 100;
		}
		
	}

}