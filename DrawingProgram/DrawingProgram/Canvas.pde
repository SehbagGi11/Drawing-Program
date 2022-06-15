void reset() {
  strokeWeight(1);
  stroke(black);
  fill(white);
}

void border() {
  strokeWeight(2);
  stroke(darkBlue);
}

void canvas() {
  fill(canvasColour);
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  reset();
}

void canvasPressed() {
  if (mouseX>canvasX  && mouseX<canvasX+canvasWidth && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
    if (drawOn == true) {
      if (draw == false) {
        draw = true;
        println("canvas");
      } else {
        draw = false;
      }
    }
    if (sprayPaintOn == true) {
      if (sprayPaint == false) {
        sprayPaint = true;
      } else {
        sprayPaint = false;
      }
    }
    if (eraserOn == true) {
      if (eraser == false) {
        eraser = true;
        println("eraser");
      } else {
        eraser = false;
      }
    }
    if (circleOn == true) {
      if (circle == false) {
        circle = true;
        println("circles selected");
      } else {
        circle = false;
      }
    }
    if (squareOn == true) {
      if (square == false) {
        square = true;
        println("squares selected");
      } else {
        square = false;
      }
    }
    if (triangleOn == true) {
      if (triangle == false) {
        triangle = true;
        println("triangles selected");
      } else {
        triangle = false;
      }
    }
  }
}

void boxes() {
  fill(backgroundColour);
  stroke(backgroundColour);
  rect(0, 0, width, canvasY);
  rect(0, height-canvasY, width, canvasY);
  rect(0, canvasY, canvasX, canvasHeight);
  rect(width*29/30, canvasY, width*1/30, canvasHeight);
  reset();
  //Canvas Outline
  border();
  line(canvasX, canvasY, canvasX+canvasWidth, canvasY);
  line(canvasX, canvasY+canvasHeight, canvasX+canvasWidth, canvasY+canvasHeight);
  line(canvasX, canvasY, canvasX, canvasY+canvasHeight);
  line(canvasX+canvasWidth, canvasY, canvasX+canvasWidth, canvasY+canvasHeight);
  reset();
}

void inkColourBorder() {
  //rect(leftRowX, inkColoursY, leftRowWidth, leftRowHeight);
  border();
  line(leftRowX, inkColoursY, leftRowX, inkColoursY+leftRowHeight);
  line(leftRowX, inkColoursY+leftRowHeight, leftRowX+leftRowWidth, inkColoursY+leftRowHeight);
  line(leftRowX+leftRowWidth, inkColoursY, leftRowX+leftRowWidth, inkColoursY+leftRowHeight);
  reset();
}
