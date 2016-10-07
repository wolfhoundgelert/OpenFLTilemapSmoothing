package;

import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.PixelSnapping;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.display.Tile;
import openfl.display.Tilemap;
import openfl.display.Tileset;
import openfl.geom.Rectangle;

/**
 * ...
 * @author gelert
 */
class Main extends Sprite {

	public function new() {
		super();
		var bitmapData = Assets.getBitmapData('img/image.png');
		var tileset = new Tileset(bitmapData, [new Rectangle(0, 0, bitmapData.width, bitmapData.height)]);
		var tilemapWithoutSmoothing = new Tilemap(stage.stageWidth, stage.stageHeight, tileset, false);
		addChild(tilemapWithoutSmoothing);
		var tile = new Tile(0, 50, 50, 1, 1, 45);
		tilemapWithoutSmoothing.addTile(tile);
		
		var tilemapWithSmoothing = new Tilemap(stage.stageWidth, stage.stageHeight, tileset, true);
		addChild(tilemapWithSmoothing);
		var anotherTile = new Tile(0, 150, 50, 1, 1, 45);
		tilemapWithSmoothing.addTile(anotherTile);
		
		var bitmap = new Bitmap(bitmapData, PixelSnapping.AUTO, true);
		bitmap.x = 250;
		bitmap.y = 50;
		bitmap.rotation = 45;
		addChild(bitmap);
	}
}
