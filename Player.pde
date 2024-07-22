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
    
    public void drawLineTo(float mouseX, float mouseY) {
  // 计算直线的长度（5厘米），将其转换为像素（假设屏幕的像素密度为 96 DPI）
  float lineLengthInPixels = 5 * 96 / 2.54;

  // 计算从 sprite 中心到鼠标位置的方向
  float dx = mouseX - change_x;
  float dy = mouseY - change_y;
  float length = sqrt(dx * dx + dy * dy);

  // 如果鼠标位置在 sprite 中心正上方
  if (length > 0) {
    // 归一化方向向量
    dx /= length;
    dy /= length;

    // 计算直线的终点
    float endX = change_x + dx * lineLengthInPixels;
    float endY = change_y + dy * lineLengthInPixels;

    // 绘制直线
    stroke(255, 0, 0); // 红色直线
    line(center_x, center_y, endX, endY);
  }
}

}
