public class AnimatedSprite extends Sprite {
    PImage[] currentImg;
    PImage[] stand;
    PImage[] move;
    int facing;
    int index;
    int frame; // counts the frames to control the animation speed

    public AnimatedSprite (PImage image, int size_x, int size_y, float x, float y) {
        super(image, size_x,size_y, x ,y);
        facing = MIDDLE_FACING;
        index = 0;
        frame = 0;
    }
    //updating the animation frame
    public void updateAnimation() {
        frame++;
        if (frame % 9 == 0) {
            selectImg();
            moveToNextImg();
        }
    }
    // selects the appropriate image array (stand or move)
    public void selectImg() {
        if (change_x > 0) {
            currentImg = move;
        }
        else {
            currentImg = stand;
        }
    }
//  by incrementing the index and using modulo to loop back to the
//beginning of the array when reaching the end
    public void moveToNextImg() {
        index = (index + 1) % currentImg.length;
        image = currentImg[index];
    }

    //  populates the stand or move array with these loaded images
    void loadFrames(PImage[] ar, String fname) {
     for (int i=0; i<ar.length; i++) {
        PImage frame=loadImage(fname+(i+1)+".png");
        ar[i]=frame;
      }
    }
    // initializes the stand or move array
    public void setFrames(int size, String name) {
        if (name.equals("stand")) {
            stand = new PImage[size];
        } else if (name.equals("move")) {
            move = new PImage[size];
        }
    }

}
