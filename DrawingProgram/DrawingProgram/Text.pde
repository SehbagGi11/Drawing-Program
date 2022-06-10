//Global Variables
PFont font;
int initialFontSize = 55;
int size;
String quitButtonString = "QUIT";
String secondTextString = "Paper";
//
void textSetup() {
   font = createFont ("Leelawadee UI Semilight", initialFontSize);
}//End textSetup
//
void textDraw() {
//Text, Quit Button
fill(white);
textAlign (CENTER, CENTER);
size = 40; //Change until fit
textFont(font, size);
text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
fill(resetColour);
//
//New paper Button
if(backgroundColour==black){
fill(white); 
} else { 
fill(black);
}
textAlign (CENTER, CENTER);
size = 20; //Change until fit
textFont(font, size);
text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
fill(resetColour);
}//End textDraw
