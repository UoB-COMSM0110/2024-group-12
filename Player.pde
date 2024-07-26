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
    
    
  public void drawLineTo(float playercenterx,float playercentery,float mouseX1, float mouseY1) {
    int segments = 50; // 线段数量
    float amplitude = 3; // 振幅，可以调整以改变弹簧的宽度
    float frequency = 5; // 频率，可以调整以改变弹簧的紧密程度

    // 计算每段线的长度
    float dx = (mouseX1 - playercenterx) / segments;
    float dy = (mouseY1 - playercentery) / segments;

    for (int i = 0; i < segments; i++) {
        // 切换颜色：奇数段为棕色，偶数段为黑色
        if (i % 2 == 0) {
            stroke(139, 69, 19); // 褐色

        } else {
            stroke(0); // 黑色
        }

        // 计算每段线的起点和终点
        float startX = playercenterx + i * dx;
        float startY = playercentery + i * dy;
        float endX = playercenterx + (i + 1) * dx;
        float endY = playercentery + (i + 1) * dy;

        // 在每段线的起点和终点之间添加正弦波动
        startX += amplitude * sin(TWO_PI * frequency * i / segments);
        startY += amplitude * cos(TWO_PI * frequency * i / segments);
        endX += amplitude * sin(TWO_PI * frequency * (i + 1) / segments);
        endY += amplitude * cos(TWO_PI * frequency * (i + 1) / segments);

        // 绘制线段
        line(startX, startY, endX, endY);
    }
    // 绘制钩子
    
    drawHook(mouseX1, mouseY1, 0.5, angle);
    angle += 1;
}


public void drawHook(float x, float y, float size, float angle) {
    stroke(0); // 钩子的颜色，设置为黑色
    strokeWeight(2); // 设置钩子的线条粗细

    // 根据比例因子计算钩子的长度和弧度
    float lineLength = 20 * size;
    float arcRadius = 10 * size;
    float angleStep = PI / 16;

    // 保存当前坐标系状态
    pushMatrix();

    // 移动到钩子的起始位置并旋转坐标系
    translate(x, y);
    rotate(angle);

    // 绘制钩子的直线部分
    line(0, 0, 0, lineLength);

    // 绘制钩子的弧线部分
    noFill();
    beginShape();
    for (float a = 0; a <= PI; a += angleStep) {
        float hookX = arcRadius * cos(a);
        float hookY = lineLength + arcRadius * sin(a);
        vertex(hookX, hookY);
    }
    endShape();

    // 恢复原来的坐标系状态
    popMatrix();
}



}
