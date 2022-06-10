void next () {
  if ( currentSong == numberOfSongs - 1 ) {
    currentSong = numberOfSongs - numberOfSongs;
    } else {
    currentSong ++;
  }
} //End ArrayFixError

void previous () {
  if ( currentSong == numberOfSongs - numberOfSongs ) {
    currentSong = numberOfSongs - 1;
    } else {
    currentSong --;
  }
} //End ArrayFixError
