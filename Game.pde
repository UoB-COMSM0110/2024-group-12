import java.util.Collections;

final static float MOVE_SPEED = 5;
final static float JUMP_SPEED = 14;
final static float SPRITE_SCALE = 50.0 / 30.0;
final static float SPRITE_SIZE = 50.0;
final static float GRAVITY = .4;


PImage grave;
Sprite player;

ArrayList<Sprite> platforms;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  
  grave = loadImage("./data/grave.png");
  platforms = new ArrayList<>();
  player = new Sprite("./data/player1.png", SPRITE_SCALE, 650.0, 100.0);
  
  createPlatforms("./data/map.csv");
}

void draw() {
  background(255);
  player.display();
  resolvePlatformCollisions(player, platforms);
  for (Sprite platform : platforms) {
    platform.display();
  }

  //player.update();
}


// returns true if sprite is one a platform.
public boolean isOnPlatforms(Sprite s, ArrayList<Sprite> walls){
  // move down say 5 pixels to ensure the player is on the platform 
  s.center_y += 5;
  // Check if there are any collisions:
  ArrayList<Sprite> col_list = checkCollisionList(s, walls);
  // if there is a collision then the player is in contact with the a object 
  // restor the sprite to the original position;
  s.center_y += -5;
  // if collisionlist size if not 0, 
  if (col_list.size() > 0) {
    return true;
  }

return false;

}

public void resolvePlatformCollisions(Sprite s, ArrayList<Sprite> walls){
  // add gravity to change_y of sprite
  s.change_y += GRAVITY;
  
  
  // move in y-direction by adding change_y to center_y to update y position.
  s.center_y += s.change_y;
  
  // Now resolve any collision in the y-direction:
  // compute collision_list between sprite and walls(platforms).
  ArrayList<Sprite> col_list = checkCollisionList(s, walls);
  
  /* if collision list is nonempty:
       get the first platform from collision list
       if sprite is moving down(change_y > 0)
         set bottom of sprite to equal top of platform
       else if sprite is moving up
         set top of sprite to equal bottom of platform
       set sprite's change_y to 0
  */
  if(col_list.size() > 0){
    Sprite collided = col_list.get(0);
    if(s.change_y > 0){
      s.setBottom(collided.getTop());
    }
    else if(s.change_y < 0){
      s.setTop(collided.getBottom());
    }
    s.change_y = 0;
  }

  // move in x-direction by adding change_x to center_x to update x position.
  s.center_x += s.change_x;
  
  // Now resolve any collision in the x-direction:
  // compute collision_list between sprite and walls(platforms).   
  col_list = checkCollisionList(s, walls);

  /* if collision list is nonempty:
       get the first platform from collision list
       if sprite is moving right
         set right side of sprite to equal left side of platform
       else if sprite is moving left
         set left side of sprite to equal right side of platform
  */

  if(col_list.size() > 0){
    Sprite collided = col_list.get(0);
    if(s.change_x > 0){
        s.setRight(collided.getLeft());
    }
    else if(s.change_x < 0){
        s.setLeft(collided.getRight());
    }
  }  

}

boolean checkCollision(Sprite s1, Sprite s2){
  boolean noXOverlap = s1.getRight() <= s2.getLeft() || s1.getLeft() >= s2.getRight();
  boolean noYOverlap = s1.getBottom() <= s2.getTop() || s1.getTop() >= s2.getBottom();
  if(noXOverlap || noYOverlap){
    return false;
  }
  else{
    return true;
  }
}

public ArrayList<Sprite> checkCollisionList(Sprite s, ArrayList<Sprite> list){
  ArrayList<Sprite> collision_list = new ArrayList<Sprite>();
  for(Sprite p: list){
    if(checkCollision(s, p))
      collision_list.add(p);
  }
  return collision_list;
}


void createPlatforms(String file_name) {
  
  String[] lines = loadStrings(file_name);

  for (int row = 0; row < lines.length; row++) {
    String[] values = split(lines[row], ",");
    for (int col = 0; col < values.length; col++) {
      switch (values[col]) {
        case "1": {
            Sprite s = new Sprite(grave, SPRITE_SCALE);
            s.center_x = ((float) (SPRITE_SIZE / 2 + col * SPRITE_SIZE));
            s.center_y = ((float) (SPRITE_SIZE / 2 + row * SPRITE_SIZE));
            platforms.add(s);
        }
      }
    }
  }
}

void keyPressed() {
  switch (keyCode) {
    case RIGHT:
      player.change_x = MOVE_SPEED;
      break;
    case LEFT:
      player.change_x = -MOVE_SPEED;
      break;
    case UP:
      if (isOnPlatforms(player, platforms)) {
         player.change_y = -JUMP_SPEED;
      }  
      break;
    case DOWN:
      player.change_y = MOVE_SPEED;
      break;
  }
}

public void keyReleased() {
  player.change_x = 0;
  player.change_y = 0;
}
