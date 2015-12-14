package;

import openfl.display.Sprite;
import openfl.Lib;
import openfl.text.TextField;

/**
 * ...
 * @author 
 */
class Main extends Sprite 
{

	public function new() 
	{
		super();
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
		
		var text1  = new TextField();
		text1.text = "With Shape Mask";
		text1.textColor = 0xffffff;
		addChild(text1);
		text1.x = 10;
		text1.y = 10;
		
		
		var ticket1 = new GoldenTicket([true, false, false, false]);
		addChild(ticket1);
		ticket1.y = text1.y + text1.textHeight + 5;
		
		var ticket2 = new GoldenTicket([false, true, false, false]);
		addChild(ticket2);
		ticket2.x = 200;
		ticket2.y = ticket1.y;
		
		var ticket3 = new GoldenTicket([false, false, true, false]);
		addChild(ticket3);
		ticket3.x = 400;
		ticket3.y = ticket1.y;
		
		//With Sprite Mask
		var text2  = new TextField();
		text2.text = "With Sprite Mask";
		text2.textColor = 0xffffff;
		addChild(text2);
		text2.x = 10;
		text2.y = ticket1.y + ticket1.height + 10;
		
		var ticket4 = new GoldenTicketSpriteMask([true, false, false, false]);
		addChild(ticket4);
		ticket4.y = 200;
		ticket4.y = text2.y + text2.textHeight + 5;
		
		var ticket5 = new GoldenTicketSpriteMask([false, true, false, false]);
		addChild(ticket5);
		ticket5.x = 200;
		ticket5.y = ticket4.y;
		
		var ticket6 = new GoldenTicketSpriteMask([false, false, true, false]);
		addChild(ticket6);
		ticket6.x = 400;
		ticket6.y = ticket4.y;
	}

}
