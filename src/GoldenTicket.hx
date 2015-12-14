package ;

import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.display.Shape;


class GoldenTicket extends Sprite
{
	var completeSets:Array<Bool>;

	public function new(completeSets:Array<Bool>) 
	{
		super();
		this.completeSets = completeSets;
		initialize();
	}
	
	private function initialize() 
	{
		var ticketOff:Sprite = new Sprite();
		ticketOff.addChild(new Bitmap(Assets.getBitmapData("img/ticket_multiplier_off.png")));
		addChild(ticketOff);
		
		var ticketOn:Sprite = new Sprite();
		ticketOn.addChild(new Bitmap(Assets.getBitmapData("img/ticket_multiplier_on.png")));
		addChild(ticketOn);
		
		var mask = new Shape();
		mask.graphics.beginFill(0x000000);
		//top left
		if (completeSets[0])
			mask.graphics.drawRect(0, 0, ticketOn.width / 2, ticketOn.height / 2);
		//bottom left
		if (completeSets[1])
			mask.graphics.drawRect(0, ticketOn.height / 2, ticketOn.width / 2, ticketOn.height / 2);
		//top right
		if (completeSets[2])
			mask.graphics.drawRect(ticketOn.width / 2, 0, ticketOn.width / 2, ticketOn.height / 2);
		//bottom right
		if (completeSets[3])
			mask.graphics.drawRect(ticketOn.width / 2, ticketOn.height / 2, ticketOn.width / 2, ticketOn.height / 2);
		mask.graphics.endFill();
		addChild(mask);
		ticketOn.mask = mask;
		
		var label:Bitmap = new Bitmap(Assets.getBitmapData("img/3x_multiplier.png"));
		label.x = (ticketOff.width - label.width) / 2;
		label.y = (ticketOff.height - label.height) / 2;
		addChild(label);
	}
}