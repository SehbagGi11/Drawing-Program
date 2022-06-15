//Global Variables
String song1Text = "Slow Dancing in the Dark", song2Text = "Come Thru", song3Text = "Better";

void minimSetup() {
  minim = new Minim(this);
  song[0] = minim.loadFile("../Sound Effects + Music/Joji - SLOW DANCING IN THE DARK.mp3"); 
  song[1] = minim.loadFile("../Sound Effects + Music/Jeremy Zucker - comethru (Official Video).mp3");
  song[2] = minim.loadFile("../Sound Effects + Music/Khalid - Better (Official Video).mp3");
  //
  click = minim.loadFile("../Sound Effects + Music/Mouse Click.mp3");
}


void playlistButton() { //it automatically playse the next song when current song is done like a playlist would
  if (mouseX>playlistX && mouseX<playlistX+musicButtonWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    border();
    fill(darkBlue);
    rect(playlistX, musicControlsY, musicButtonWidth, musicControlsHeight);
    reset();
    image(playlistIcon2, playlistX+musicButtonWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  } else if (playlistOn == true) {
    border();
    fill(darkBlue);
    rect(playlistX, musicControlsY, musicButtonWidth, musicControlsHeight);
    reset();
    image(playlistIcon2, playlistX+musicButtonWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  } else {
    border();
    fill(salmon);
    rect(playlistX, musicControlsY, musicButtonWidth, musicControlsHeight);
    reset();
    image(playlistIcon, playlistX+musicButtonWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  }
}


void loopButton() {
  if (mouseX>loopX && mouseX<loopX+musicButtonWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    border();
    fill(darkBlue);
    rect(loopX, musicControlsY, musicButtonWidth, musicControlsHeight);
    reset();
    image(loopIcon2, loopX+musicButtonWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  } else if (loopOn == true) {
    border();
    fill(darkBlue);
    rect(loopX, musicControlsY, musicButtonWidth, musicControlsHeight);
    reset();
    image(loopIcon2, loopX+musicButtonWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  } else {
    border();
    fill(salmon);
    rect(loopX, musicControlsY, musicButtonWidth, musicControlsHeight);
    reset();
    image(loopIcon, loopX+musicButtonWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  }
}


void playlistLoop() {
  if ( song[currentSong].position() >= song[currentSong].length()-1000 ) {
    if (playlistOn == true) {
      if (currentSong == numberOfSongs-1) {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong = 0; 
        song[currentSong].play();
      } else {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong ++; 
        song[currentSong].play();
      }
    } else if (loopOn == true) {
      song[currentSong].pause();
      song[currentSong].rewind();
      song[currentSong].play();
    }
  }
}


void playPauseButton() {
  if (mouseX>playPauseX && mouseX<playPauseX+musicButtonWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    if (song[0].isPlaying() | song[1].isPlaying() | song[2].isPlaying()) {
      border();
      fill(darkBlue);
      rect(playPauseX, musicControlsY, musicButtonWidth, musicControlsHeight);
      reset();
      image(pauseIcon2, playPauseX+musicButtonWidth*1/9, musicControlsY+musicControlsHeight*1/16, imageWidth3*1/12, imageHeight3*1/12);
    } else {
      border();
      fill(darkBlue);
      rect(playPauseX, musicControlsY, musicButtonWidth, musicControlsHeight);
      reset();
      image(playIcon2, playPauseX+musicButtonWidth*1/7, musicControlsY+musicControlsHeight*1/16, imageWidth3*1/12, imageHeight3*1/12);
    }
  } else {
    if (song[0].isPlaying() | song[1].isPlaying() | song[2].isPlaying()) {
      border();
      fill(salmon);
      rect(playPauseX, musicControlsY, musicButtonWidth, musicControlsHeight);
      reset();
      image(pauseIcon, playPauseX+musicButtonWidth*1/9, musicControlsY+musicControlsHeight*1/16, imageWidth3*1/12, imageHeight3*1/12);
    } else {
      border();
      fill(salmon);
      rect(playPauseX, musicControlsY, musicButtonWidth, musicControlsHeight);
      reset();
      image(playIcon, playPauseX+musicButtonWidth*1/7, musicControlsY+musicControlsHeight*1/16, imageWidth3*1/12, imageHeight3*1/12);
    }
  }
}


void songOptions() {
  border();
  fill(blue);
  rect(song1X, musicControlsY, songWidth, musicControlsHeight);
  rect(song2X, musicControlsY, songWidth, musicControlsHeight);
  rect(song3X, musicControlsY, songWidth, musicControlsHeight);
  reset();
  fill(darkBlue);
  song1Text();
  song2Text();
  song3Text();
  reset();
}


void restartMusic() {
  if (mouseX>restartMusicX && mouseX<restartMusicX+musicButtonWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    border();
    fill(darkBlue);
    rect(restartMusicX, musicControlsY, musicButtonWidth, musicControlsHeight);
    reset();
    image(rewindIcon2, restartMusicX+musicButtonWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  } else {
    border();
    fill(salmon);
    rect(restartMusicX, musicControlsY, musicButtonWidth, musicControlsHeight);
    reset();
    image(rewindIcon, restartMusicX+musicButtonWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  }
}
