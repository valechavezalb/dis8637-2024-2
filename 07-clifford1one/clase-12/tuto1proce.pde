/*Hola hoy es sábado 2 de noviembre y éste es mi primer tutorial para aprender a usar processing.
 El objetivo es usarlo para mi exámen de taller UX, un sistema de votación, donde queremos hacer interfcaes compicadas,
 que favorezcan a ciertos candidatos sobre otros,a través de su interfaz e interacción.
 Éste es el tutorial que estaré siguendo https://processing.org/examples/storinginput.html
 */

/** (Éstos son los comentarios que tenía el archivo original)
 * Storing Input.
 *
 * Move the mouse across the screen to change the position
 * of the circles. The positions of the mouse are recorded
 * into an array and played back every frame. Between each
 * frame, the newest value are added to the end of each array
 * and the oldest value is deleted.
 */

int num = 60;
float mx [] = new float [num];
float my [] = new float [num];

void setup() {
  size(640, 360);
  noStroke();
  fill(255, 153);
}

void draw() {
  background(51);

  //los siguientes comentarios son de el archivo original
  // Cycle through the array, using a different entry on each frame.
  // Using modulo (%) like this is faster than moving all the values over.

 int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;

  for (int i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;
    ellipse(mx[index], my [index], i, i);
  }
}
