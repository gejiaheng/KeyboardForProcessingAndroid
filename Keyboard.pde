// keyboard parameters
private static final char[] KEYS = new char[] {'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p',
                                               'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', '#',
                                               'z', 'x', 'c', 'v', 'b', 'n', 'm', '#', '#', '#'};
private static final int ROW = 3;     // keyboard rows
private static final int COL = 10;    // keyboard columns
private static final int PADDING = 2; // button padding
// Google Pixel 3a: 441
// Nexus 6P: 518
private static final int DPI = 441; 
private static final int SIZE = DPI * 2; 
private static final int kw = (int) (SIZE / COL); // key's width, doesn't take padding into account
private static final float RATIO = 3f / 4f; // key width / key height
private static final int kh = (int) (kw / RATIO); // key's height, doesn't take padding into account
private int originX;  // top left of keyboard
private int originY;  // top left of keyboard
private static final int KEY_TEXT = 20;

void setup()
{
  size(1000, 1000); 
  originX = 0;
  originY = 0;
}

void draw()
{
  background(0); 
  drawKeyboard();
}

void scaledTextSize(int dp) {
  textSize((int) (1.5 * dp));
}

void drawKeyboard() {
  for (int i = 0; i < KEYS.length; i++) {
    int r = i / COL;  // row index from 0
    int c = i % COL;  // col index from 0
    float x = originX + c * kw;
    float y = originY + r * kh;
    fill(52, 115, 208);
    rect(x + PADDING, y + PADDING, kw - PADDING * 2, kh - PADDING * 2);
    if(KEYS[i] != '#') {
      fill(255);
      textAlign(CENTER);
      scaledTextSize(KEY_TEXT);
      text(KEYS[i], x + kw / 2, y + kh / 2);
    }
  }
}

private int touchStartX = 0;
private int touchStartY = 0;
private static final int THRESHOLD = 10;
void touchStarted() {
  println("touch started");
  touchStartX = mouseX;
  touchStartY = mouseY;
}

void touchMoved() {
  println("touch moved"); 
}

void touchEnded() {
  println("touch ended");  
  if (Math.abs(mouseX - touchStartX) <= THRESHOLD 
     && Math.abs(mouseY - touchStartY) <= THRESHOLD) {
    dispatchClick();
  } 
  touchStartX = 0;
  touchStartY = 0;
}

boolean touchInKeyboard() {
  return mouseX >= originX && mouseX <= originX + SIZE
      && mouseY >= originY && mouseY <= originY + SIZE * RATIO;
}

void dispatchClick() {
  println("dispatchClick");
  if (!touchInKeyboard()) {
    return;
  }

  int row = (mouseY - originY) / kh;
  int col = (mouseX - originX) / kw;
  int index = row * COL + col;
  if (KEYS[index] != '#') {
    println("---> " + KEYS[index] + " <--- pressed");
  }
}

void mousePressed() {}
