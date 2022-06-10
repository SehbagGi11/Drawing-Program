//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates "Play List" variable dholding extensions WAV, AIFF, AU, SND, and MP3
int currentSong = numberOfSongs-numberOfSongs; //Current Song is 0
String musicText = "Music Controls", rewindText = "Rewind", playText = "Play", pauseText = "Pause", nextText = "Next", skipBText = "<10", stopText = "Stop", skipFText = "10>";
float musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight;
float rewindButtonX, rewindButtonY, rewindButtonWidth, rewindButtonHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight;
float skipBButtonX, skipBButtonY, skipBButtonWidth, skipBButtonHeight;
float stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight;
float skipFButtonX, skipFButtonY, skipFButtonWidth, skipFButtonHeight;
float resetMusicButtonX, resetMusicButtonY, resetMusicButtonWidth, resetMusicButtonHeight;
Boolean isMusicButton = false, isPlay = false, isPause = false, isResetMusicButton = false;

void musicButtonSetup () {
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("DownLoaded/- Built to Last (Instrumental) - NEFFEX.mp3");
  song[currentSong+1] = minim.loadFile("Downloaded/Danger Snow - Dan Henig.mp3");
  song[currentSong+2] = minim.loadFile("DownLoaded/It's Only Worth It if You Work for It - NEFFEX.mp3");
  song[currentSong+3] = minim.loadFile("DownLoaded/Tell Me That I Can't - NEFFEX.mp3");
  song[currentSong+4] = minim.loadFile("DownLoaded/Tropical Thunder - RKVC.mp3");
} //End MusicButtonSetup

void musicButtonDraw() {
  fill(white);
  stroke(black);
  strokeWeight(1);
  rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  musicButtonTextCode(musicText, 75, musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  //
  if ( song[currentSong].position() >= song[currentSong].length()-500 ) {
    song[currentSong].pause();
    song[currentSong].rewind();
    currentSong++;
    if ( currentSong < numberOfSongs ) song[currentSong].play();
  }
  if ( currentSong == numberOfSongs ) {
    currentSong = numberOfSongs - numberOfSongs;
    song[currentSong].play();
  }
  //
  if ( isMusicButton == true ) {
    fill(white);
    stroke(black);
    strokeWeight(1);
    rect(rewindButtonX, rewindButtonY, rewindButtonWidth, rewindButtonHeight);
    rewindButtonTextCode(rewindText, 30, rewindButtonX, rewindButtonY, rewindButtonWidth, rewindButtonHeight);
    rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    playButtonTextCode(playText, 30, playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    rect(nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight);
    nextButtonTextCode(nextText, 30, nextButtonX, nextButtonY, nextButtonWidth, nextButtonHeight);
    rect(skipBButtonX, skipBButtonY, skipBButtonWidth, skipBButtonHeight);
    skipBButtonTextCode(skipBText, 30, skipBButtonX, skipBButtonY, skipBButtonWidth, skipBButtonHeight);
    rect(stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);
    stopButtonTextCode(stopText, 30, stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);
    rect(skipFButtonX, skipFButtonY, skipFButtonWidth, skipFButtonHeight);
    skipFButtonTextCode(skipFText, 30, skipFButtonX, skipFButtonY, skipFButtonWidth, skipFButtonHeight);
    strokeWeight(strokeSize);
    stroke(sketchColour);
    fill(backgroundColour);
  } //End Button
  if ( isPlay == true ) {
    fill(white);
    stroke(black);
    strokeWeight(1);
    rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    playButtonTextCode(playText, 30, playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    strokeWeight(strokeSize);
    stroke(sketchColour);
    fill(backgroundColour);
  } //End Button
  if ( isPause == true ) {
    fill(white);
    stroke(black);
    strokeWeight(1);
    rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    pauseButtonTextCode(pauseText, 30, playButtonX, playButtonY, playButtonWidth, playButtonHeight);
    strokeWeight(strokeSize);
    stroke(sketchColour);
    fill(backgroundColour);
  } //End Button
  if ( isResetMusicButton == true ) {
    noStroke();
    fill(background);
    rect(resetMusicButtonX, resetMusicButtonY, resetMusicButtonWidth, resetMusicButtonHeight);
    fill(white);
    stroke(1);
  } //End ResetMenuButton
  strokeWeight(strokeSize);
  stroke(sketchColour);
  fill(backgroundColour);
} // End MusicButtonDraw

void musicButtonMousePressed () {
  if ( mouseX > musicButtonX && mouseY > musicButtonY && mouseX < musicButtonX+musicButtonWidth && mouseY < musicButtonY+musicButtonHeight ) {
    if ( isMusicButton == false ) {
      isMusicButton = true;
      isResetMusicButton = false;
      } else {
      isMusicButton = false;
      isResetMusicButton = true;
    }
  } //End Music Button
} //End MusicButtonMousePressed

void rewindButtonMousePressed () {
  if ( isMusicButton == true && mouseX > rewindButtonX && mouseY > rewindButtonY && mouseX < rewindButtonX+rewindButtonWidth && mouseY < rewindButtonY+rewindButtonHeight ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      previous();
      song[currentSong].play();
      } else {
        song[currentSong].rewind();
        previous();
      }
  } //End Rewind Button
} //End RewindButtonMousePressed

void playButtonMousePressed () {
  if ( isMusicButton == true && mouseX > playButtonX && mouseY > playButtonY && mouseX < playButtonX+playButtonWidth && mouseY < playButtonY+playButtonHeight ) {
   if ( song[currentSong].isPlaying() ) {
     song[currentSong].pause();
     isPause = false;
     isPlay = true;
     } else {
       song[currentSong].play();
       isPlay = false;
       isPause = true;
     }
   } //End Play Button
} //End PlayButtonMousePressed

void nextButtonMousePressed () {
  if ( isMusicButton == true && mouseX > nextButtonX && mouseY > nextButtonY && mouseX < nextButtonX+nextButtonWidth && mouseY < nextButtonY+nextButtonHeight ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      next();
      song[currentSong].play();
      } else {
        song[currentSong].rewind();
        next();
      }
    } //End Next Button
} //End NextButtonMousePressed

void skipBButtonMousePressed () {
  if ( isMusicButton == true && mouseX > skipBButtonX && mouseY > skipBButtonY && mouseX < skipBButtonX+skipBButtonWidth && mouseY < skipFButtonY+skipFButtonHeight ) {
   song[currentSong].skip(-10000);
 }
} //End SkipBButtonMousePressed

void stopButtonMousePressed () {
  if ( isMusicButton == true && mouseX > stopButtonX && mouseY > stopButtonY && mouseX < stopButtonX+stopButtonWidth && mouseY < stopButtonY+stopButtonHeight ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      isPlay = true;
      isPause = false;
      } else {
        song[currentSong].rewind();
      }
    }
} //End StopButtonMousePressed

void skipFButtonMousePressed () {
  if ( isMusicButton == true && mouseX > skipFButtonX && mouseY > skipFButtonY && mouseX < skipFButtonX+skipFButtonWidth && mouseY < skipFButtonY+skipFButtonWidth ) {
    song[currentSong].skip(10000);
  }
} //End SkipFButtonMousePressed
