$(function(){
  $('.play').on('click', function(ev){
    ev.preventDefault();
    var source = new EventSource(this.href);
    var tts = new GoogleTTS('la');
    var audios = [], current_audio = 0;
    var $audio = $('#audio');

    source.addEventListener('message', function(e) {
      var $line = $('<p class="story-line">' + e.data + '</p>');
      $line.appendTo('#chat').hide().fadeIn(200, function(){
        $("html, body").animate({ scrollTop: $(document).height() }, "slow");
        var url = tts.urls(e.data)[0];
        $audio.attr('src', url);
        $audio.trigger('play');
      })
    }, false);
  });
});
