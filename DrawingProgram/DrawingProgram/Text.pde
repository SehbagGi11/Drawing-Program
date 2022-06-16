//Global Variables
PFont font;
int initialFontSize=55, size=25;
String quitButtonText = "QUIT";
String paperButtonText = "Reset Paper";
String ellipseButtonText = "Ellipse Pattern";
String lineButtonText = "Pencil Tool";
String squareButtonText = "Square Pattern";
String eraser = "Eraser";
String textBox = "Hover over the colour button for a few seconds until it becomes darker to activate them, then proceed to click the tools to change the colour. Deactivate a colour by hovering over it before selecting another colour.";
String textBox1 = "mouseClick anytime to cancel a tool!";
//
void textSetup()
{
    font = createFont("Arial", initialFontSize);
}
//End textSetup
