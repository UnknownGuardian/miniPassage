package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	//import net.flashpunk.graphics.Backdrop;
	
	/**
	 * ...
	 * @author UnknownGuardian
	 */
	public class Background extends Entity
	{
		[Embed(source = "Assets/Graphics/Backgrounds/tiled.png")]private const BG_0:Class;
		//[Embed(source = "Assets/Graphics/Backgrounds/bg_noise_0.png")]private const BG_1:Class;
		//[Embed(source = "Assets/Graphics/Backgrounds/bg_noise_1.png")]private const BG_2:Class;
		
		private var _image:Image;
		public function Background() 
		{
			//super(BG_0, true, true);
			//color = 0xCCCCFF;
			_image = new Image(BG_0);
			_image.color = 0xCCCCFF;
			graphic = _image;
			//scrollX = 0.2;
			//scrollY = 0.2;
			_image.scrollX = 0;
			_image.scrollY = 0;
		}
		
	}

}