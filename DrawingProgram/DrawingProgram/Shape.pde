//Global Variables
String shapeText = "Shape", lineText = "Line", circleText = "Circle", squareText = "Square", triangleText = "Triangle";
float shapeButtonX, shapeButtonY, shapeButtonWidth, shapeButtonHeight;
float lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight;
float circleButtonX, circleButtonY, circleButtonWidth, circleButtonHeight;
float squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight;
float triangleButtonX, triangleButtonY, triangleButtonWidth, triangleButtonHeight;
float resetShapeButtonX, resetShapeButtonY, resetShapeButtonWidth, resetShapeButtonHeight;
Boolean isLineButton = false, isCircleButton = false, isSquareButton = false, isTriangleButton = false, isResetShapeButton = false;
Boolean isLine = false, isCircle = false, isSquare = false, isTriangle = false;

void shapeButtonSetup () {
  isLine = true;
} //End ShapeButtonSetup

void shapeButtonDraw () {
  stroke(black);
  strokeWeight(1);
  rect(shapeButtonX, shapeButtonY, shapeButtonWidth, shapeButtonHeight);
  shapeButtonTextCode(shapeText, 75, shapeButtonX, shapeButtonY, shapeButtonWidth, shapeButtonHeight);
  //
  if ( isLineButton == true ) {
    rect(lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight);
    lineButtonTextCode(lineText, 30, lineButtonX, lineButtonY, lineButtonWidth, lineButtonHeight);
  } // End Button
  if ( isCircleButton == true ) {
    rect(circleButtonX, circleButtonY, circleButtonWidth, circleButtonHeight);
    circleButtonTextCode(circleText, 30, circleButtonX, circleButtonY, circleButtonWidth, circleButtonHeight);
  } //End Button
  if ( isSquareButton == true ) {
    rect(squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight);
    squareButtonTextCode(squareText, 30, squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight);
  } //End Button
  if ( isTriangleButton == true ) {
    rect(triangleButtonX, triangleButtonY, triangleButtonWidth, triangleButtonHeight);
    triangleButtonTextCode(triangleText, 30, triangleButtonX, triangleButtonY, triangleButtonWidth, triangleButtonHeight);
  } //End Button
  //
  stroke(sketchColour);
  fill(sketchColour);
  strokeWeight(strokeSize);
  //
  if ( isLine == true && draw == true ) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  } //End Button
  if ( isCircle == true && draw == true ) {
    ellipse(mouseX, mouseY, 50, 50);
  } //End Button
  if ( isSquare == true && draw == true ) {
    rect(mouseX, mouseY, 50, 50);
  } //End Button
  if ( isTriangle == true && draw == true ) {
    triangle(mouseX-25, mouseY+25, mouseX, mouseY-25, mouseX+25, mouseY+25);
  } //End Button
  //
  if ( isResetShapeButton == true ) {
    noStroke();
    fill(background);
    rect(resetShapeButtonX, resetShapeButtonY, resetShapeButtonWidth, resetShapeButtonHeight);
    fill(white);
    stroke(1);
  } //End Button
    fill(white);
} //End Shape Button Drawing

void shapeButtonMousePressed () {
  if ( mouseX > shapeButtonX && mouseY > shapeButtonY && mouseX < shapeButtonX+shapeButtonWidth && mouseY < shapeButtonY+shapeButtonHeight ) {
    if ( isLineButton == false && isCircleButton == false && isSquareButton == false && isTriangleButton == false ) {
      isLineButton = true;
      isCircleButton = true;
      isSquareButton = true;
      isTriangleButton = true;
      isResetShapeButton = false;
      } else {
        isLineButton = false;
        isCircleButton = false;
        isSquareButton = false;
        isTriangleButton = false;
        isResetShapeButton = true;
    }
  } //End Shape Button
} //End Shape Button MousePressed

void lineButtonMousePressed () {
  if ( isLineButton == true && mouseX > lineButtonX && mouseY > lineButtonY && mouseX < lineButtonX+lineButtonWidth && mouseY < lineButtonY+lineButtonHeight ) {
    isLine = true;
    isCircle = false;
    isSquare = false;
    isTriangle = false;
  } //End Line Button
} //End Line Button MousePressed

void circleButtonMousePressed () {
  if ( isCircleButton == true && mouseX > circleButtonX && mouseY > circleButtonY && mouseX < circleButtonX+circleButtonWidth && mouseY < circleButtonY+circleButtonHeight ) {
    isLine = false;
    isCircle = true;
    isSquare = false;
    isTriangle = false;
  } //End Circle Button
} //End Circle Button MousePressed

void squareButtonMousePressed () {
  if ( isSquareButton == true && mouseX > squareButtonX && mouseY > squareButtonY && mouseX < squareButtonX+squareButtonWidth && mouseY < squareButtonY+squareButtonHeight ) {
    isLine = false;
    isCircle = false;
    isSquare = true;
    isTriangle = false;
  } //End Square Button
} //End Square Button MousePressed

void triangleButtonMousePressed () {
  if ( isTriangleButton == true && mouseX > triangleButtonX && mouseY > triangleButtonY && mouseX < triangleButtonX+triangleButtonWidth && mouseY < triangleButtonY+triangleButtonHeight ) {
    isLine = false;
    isCircle = false;
    isSquare = false;
    isTriangle = true;
  } //End Triangle Button
} //End Triangle Button MousePressed
