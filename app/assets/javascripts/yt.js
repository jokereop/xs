var tag = document.createElement('script');
      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
      var player;
      function onYouTubeIframeAPIReady() {
        player = new YT.Player('player', {
          height: '100%',
          width: '100%',
		  margin: '0 auto',
          videoId: 'W0LHTWG-UmQ',
		  playerVars : {
			playlist:	'W0LHTWG-UmQ',
			autoplay: 	1,
			loop: 		1,
			controls:	0,
			showinfo:	0,
			start: 		0,
			modestbranding: 1,
			autohide: 	1,
			fs: 		0,
  },
          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }
        });
      }
      function onPlayerReady(event) {
        event.target.playVideo();
      }
      var done = false;
 function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
			player.setPlaybackRate(0.25);
			player.setPlaybackQuality(medium);
			player.mute();		
          done = true;
        }
}
