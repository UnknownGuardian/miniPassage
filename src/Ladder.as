package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author UnknownGuardian
	 */
	public class Ladder extends Entity 
	{
		[Embed(source = "Assets/Graphics/Items & Objects/ladder_wood.png")]private const LADDER:Class;
		private var _image:Image;
		public function Ladder(X:int,Y:int) 
		{
			super(X, Y);
			_image = new Image(LADDER);
			graphic = _image;
			setHitbox(16, 16, 0, 0);
			type = "Ladder";
			layer = 270;
		}
		
	}

}