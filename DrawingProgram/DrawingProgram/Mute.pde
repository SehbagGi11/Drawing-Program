//Global Variables
String muteText = "Mute", unmuteText = "Unmute";
float muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight;
Boolean isMute = false, isUnmute = false;

void muteButtonDraw () {
  fill(white);
  stroke(black);
  strokeWeight(1);
  rect(muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
  muteButtonTextCode(muteText, 50, muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
  //
  if ( isMute == true ) {
    fill(white);
    stroke(black);
    strokeWeight(1);
    rect(muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
    muteButtonTextCode(muteText, 50, muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
    strokeWeight(strokeSize);
    stroke(sketchColour);
    fill(backgroundColour);
  } //End Button
  if ( isUnmute == true ) {
    fill(white);
    stroke(black);
    strokeWeight(1);
    rect(muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
    unmuteButtonTextCode(unmuteText, 50, muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
    strokeWeight(strokeSize);
    stroke(sketchColour);
    fill(backgroundColour);
  } //End Button
  //
  strokeWeight(strokeSize);
  stroke(sketchColour);
  fill(backgroundColour);
} //End MuteButtonDraw

void muteButtonMousePressed() {
  if ( mouseX > muteButtonX && mouseY > muteButtonY && mouseX < muteButtonX+muteButtonWidth && mouseY < muteButtonY+muteButtonHeight ) {
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
      isMute = true;
      isUnmute = false;
      } else {
        song[currentSong].mute();
        isUnmute = true;
        isMute = false;
      }
    } //End Mute Button
} //End MuteButtonMousePressed
