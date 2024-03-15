import java.util.Collections;

final static float MOVE_SPEED = 5;
final static float JUMP_SPEED = 14;
final static float SPRITE_SCALE = 50.0 / 30.0;
final static float SPRITE_SIZE = 50.0;


PImage grave;

ArrayList<Sprite> platforms;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  
  grave = loadImage("./data/grave.png");
  platforms = new ArrayList<>();
  
  createPlatforms("./data/map.csv");
}

void draw() {
  background(255);
  
  for (Sprite platform : platforms) {
    platform.display();
  }
}

void createPlatforms(String file_name) {
  
  String[] lines = loadStrings(file_name);

  for (int row = 0; row < lines.length; row++) {
    String[] values = split(lines[row], ",");
    for (int col = 0; col < values.length; col++) {
      switch (values[col]) {
        case "1": {
            Sprite s = new Sprite(grave, SPRITE_SCALE);
            s.setCenter_x((float) (SPRITE_SIZE / 2 + col * SPRITE_SIZE));
            s.setCenter_y((float) (SPRITE_SIZE / 2 + row * SPRITE_SIZE));
            platforms.add(s);
        }
      }
    }
  }
}
