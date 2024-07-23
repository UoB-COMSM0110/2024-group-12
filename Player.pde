public class Player extends AnimatedSprite {

    int lives;
    boolean onGround, inPlace;
    PImage[] stand; 
    PImage[] jump;
    PImage[] walk;
    
    public Player (PImage img, int size_x, int size_y, float x, float y) {
        super(img, size_x,size_y,x,y);
        lives = PlayerSprite_LIVES;
        facing = RIGHT_FACING;
        onGround = true;
        inPlace = true;
        stand = new PImage[8];
        jump = new PImage[3];
        walk = new PImage[4];
        currentImg = stand;
        loadFrames(stand, "./data/Player/stand");
        loadFrames(walk, "./data/Player/walk");
        loadFrames(jump, "./data/Player/jump");
    }

    @Override
    public void updateAnimation(){
        onGround = isOnGround(this, gw.platforms);
        if (change_x == 0 && change_y == 0) {
            inPlace = true;
        } else {
            inPlace = false;
        }
        super.updateAnimation();
    }

    @Override
    public void selectImg(){
            if (inPlace) {
                currentImg = stand;
            } else if (!onGround) {
                currentImg = jump;
            } else {
                currentImg = walk;
            } 
    }
    
    
    public void drawLineTo(float mouseX1, float mouseY1) {
  
    // 绘制直线
    stroke(255, 0, 0); // 红色直线
    line(center_x, center_y, mouseX1, mouseY1);
  
    }

}
