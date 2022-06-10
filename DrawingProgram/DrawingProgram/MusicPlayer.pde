import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Minim minim; 
Boolean pauseTrue=false, stopTrue = false;
int numberOfSongs=5;
int trueNumberOfSongs=numberOfSongs-1;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; 
int currentSong = numberOfSongs - numberOfSongs;
void musicSetup () {
   minim = new Minim(this);
  song[currentSong] = minim.loadFile("DownLoaded/SomebodyThatIUsedToKnow.mp3");
  song[currentSong+=1] = minim.loadFile("DownLoaded/Without Me.mp3");
  song[currentSong+=1] = minim.loadFile("DownLoadedr/Jetpack Joyride Theme.mp3");
  song[currentSong+=1] = minim.loadFile("DownLoaded/[Electro] - Laszlo - Supernova [Monstercat Release].mp3");
  song[currentSong+=1] = minim.loadFile("DownLoaded/Megalovania BASS BOOSTED.mp3");
  //
  currentSong-=currentSong; 
  for (int i=currentSong; i<song.length; i++) {
  }
}//End musicSetup
//
void musicDraw () {
  if (song[currentSong].isLooping()) println("There are", song[currentSong].loopCount(), "loops left");
  if (song[currentSong].isPlaying() && !song[currentSong].isLooping()) println("Play Once");
  if (song[currentSong].isPlaying()) println("Time elapsed", song[currentSong].position()/1000, "Song Length", song[currentSong].length()/1000 ); //value in milliseconds
  if (!song[currentSong].isPlaying()) {
  if(!song[currentSong].isPlaying() && currentSong <=trueNumberOfSongs && pauseTrue == false && stopTrue == false) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong+=1;
  song[currentSong].play();
  } else if (currentSong == trueNumberOfSongs && !song[currentSong].isPlaying() && pauseTrue==false && stopTrue == false) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong -= currentSong;
  song[currentSong].play();
  } 
  } 
  println(newTime);
}//End musicDraw
//
void musicKeyPressed () {
  if (key=='1' || key=='2' || key=='3' || key=='4' || key=='5' || key=='6' || key=='7' || key=='8' || key=='9') {//looping functions
  String keystr = String.valueOf(key);
  println("Looping", keystr, "times");
  println("Number of Repeats is", keystr);
  int num = int(keystr);
  song[currentSong].loop(num);
  }
  //
  //
  if (key=='l' || key=='L' ) song[currentSong].loop();
  //Alternate Play button
  if ( key=='p' || key=='P' ){ 
  if(song[currentSong].isPlaying()){
  song[currentSong].pause();
  pauseTrue=true;
  } else if (song[currentSong].position()>=song[currentSong].length()-song[currentSong].length()*1/10){ 
  //End of Song Calculation: hardcode 1000 or use formula
  //Alternate formula:song1.length-song1,position <= 3500
  song[currentSong].rewind();
  song[currentSong].play();
  }else {
  song[currentSong].play();
  pauseTrue=false;
  stopTrue=false;
  };//Parameter is in milliseconds from start of audio file to start of playing
  }
  //End play-pause button
  //
  //Forward and reverse button
  if (key=='f' || key=='F') song[currentSong].skip(5000); //Skip forward 3 second
  if (key=='r' || key=='R') song[currentSong].skip(-5000); //Skip backward, or reverse forward 3 second
  //Mute button
  if (key=='m' ||key=='M') {
  if(song[currentSong].isMuted() ) {
  song[currentSong].unmute();
  } else {
    song[currentSong].mute();
  }
}
//
  if(key=='s' || key=='S'){
  if(song[currentSong].isPlaying()) {//Stop Button
  song[currentSong].pause();
  song[currentSong].rewind();
  stopTrue=true;
  }else{
  song[currentSong].rewind();
  }
  }//End stop button
  //
  if (key=='n'|| key=='N') {
  if(song[currentSong].isPlaying() && currentSong < trueNumberOfSongs) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong++;
  song[currentSong].play();
  } else if (currentSong == trueNumberOfSongs && song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong -= currentSong;
  song[currentSong].play();
  } else if (currentSong == trueNumberOfSongs && !song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong -= currentSong;
  }else {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong++;
  }
  }
  //
  if (key=='b'|| key=='B') {
  if(song[currentSong].isPlaying() && currentSong >=1) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong-=1;
  song[currentSong].play();
  } else if (currentSong == 0 && song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong+=numberOfSongs-1;
  song[currentSong].play();
  } else if (currentSong == 0 && !song[currentSong].isPlaying()) {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong+=numberOfSongs-1;
  }
  else {
  song[currentSong].pause();
  song[currentSong].rewind();
  currentSong-=1;
  }
  }
  
}//End musicKeyPressed
//
void musicMousePressed () {
  
  
}//End musicMousePressed
