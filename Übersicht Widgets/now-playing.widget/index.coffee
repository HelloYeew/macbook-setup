options =
  # Enable or disable the widget.
  widgetEnable : true                   # true | false

  # Choose where the widget should sit on your screen.
  verticalPosition    : "bottom"        # top | bottom | center
  horizontalPosition    : "right"        # left | right | center

command: "osascript 'now-playing.widget/lib/getMusicData.applescript'"
refreshFrequency: '1s'
style: """

// setup
// --------------------------------------------------
display: none
font-family system, -apple-system, "Helvetica Neue"
font-size: 8px
margin = 10px
position: absolute

// variables
// --------------------------------------------------
widgetWidth 300px
borderRadius 6px
infoHeight 55px
infoWidth @widgetWidth - 82

// screen positioning calculations
// --------------------------------------------------
if #{options.verticalPosition} == center
    top 50%
    transform translateY(-50%)
else
    #{options.verticalPosition} margin

if #{options.horizontalPosition} == center
    left 50%
    transform translateX(-50%)
else
    #{options.horizontalPosition} margin

// styles
// --------------------------------------------------
.container
    width: @widgetWidth
    height: @infoHeight
    bottom: 2px
    right : 1px
    text-align: left
    position: absolute
    clear: both
    color #fff
    background rgba(#000, .5)
    padding 10px
    border-radius @borderRadius

.album-art
    width: @infoHeight
    height: @width
    border-radius @borderRadius
    background-image: url(now-playing.widget/lib/default.png)
    background-size: cover
    float: left

.track-info
    width: @infoWidth
    height: @infoHeight
    margin-left: 10px
    position: relative
    float: left

.artist-name
    font-weight: bold
    text-transform: uppercase
    margin-top: 3px
    margin-bottom: 5px
    overflow: hidden
    white-space: nowrap
    text-overflow: ellipsis
    float: left
    width: 185px

.song-year
    font-weight: bold
    text-transform: uppercase
    margin-top: 3px
    margin-bottom: 5px
    text-align: right
    overflow: hidden
    white-space: nowrap
    text-overflow: ellipsis
    float: right
    width: 28px

.is-loved
    display: none
    font-weight: bold
    text-transform: uppercase
    margin-top: 3px
    margin-left: 5px
    overflow: hidden
    white-space: nowrap
    text-overflow: ellipsis
    width: 10px

.song-name
    font-size: 14px
    text-transform: uppercase
    margin-bottom: 5px
    overflow: hidden
    white-space: nowrap
    text-overflow: ellipsis
    float: left
    width: 218px

.album-name
    font-weight: bold
    text-transform: uppercase
    margin-right: 5px
    overflow: hidden
    white-space: nowrap
    text-overflow: ellipsis
    float: left
    width: 218px

.bar-container
    width: 100%
    height: @borderRadius
    border-radius: @borderRadius
    background: rgba(#fff, .5)
    position: absolute
    bottom: 0px

.bar
    height: @borderRadius
    transition: width .2s ease-in-out

.bar-progress
    background: rgba(#fff, .35)
"""

options : options

render: () -> """
<div class="container">
    <div class="album-art"><div class="is-loved">&hearts;</div></div>
    <div class="track-info">
        <div class="artist-name"></div><div class="song-year"></div>
        <div class="song-name"></div>
        <div class="album-name"></div>
        <div class="bar-container">
            <div class="bar bar-progress"></div>
        </div>
        <div class="console"></div>
    </div>
</div>
"""

# Update the rendered output.
update: (output, domEl) ->

  div = $(domEl)

  # if widget enabled
  if @options.widgetEnable

    # if not output then hide the widget
    if !output
      div.animate({opacity: 0}, 250, 'swing').hide(1)

    # if output then show
    else
      # gather script values
      values = output.slice(0,-1).split(" @ ")
      div.find('.artist-name').html(values[0])
      div.find('.song-name').html(values[1])
      div.find('.album-name').html(values[2])
      div.find('.song-year').html(values[3])
      songDuration = values[4]
      currentPosition = values[5]
      coverURL = values[6]
      songChanged = values[7]
      isLoved = values[8]

      # set progress bar width
      barWidth = 218
      # figure out current position
      songProgress = (currentPosition / songDuration) * barWidth
      # set progress bar width
      div.find('.bar-progress').css width: songProgress

      # get current cover art
      currentCoverURL = "/" + div.find('.album-art').css('background-image').split('/').slice(-3).join().replace(/\,/g, '/').slice(0,-1)

      # if the art changed then update it
      if currentCoverURL isnt coverURL and coverURL isnt 'NA' and coverURL isnt ''
        artwork = div.find('.album-art')
        artwork.css('background-image', 'url('+coverURL+')')

      # if no cover art then show default image
      # else if coverURL is 'NA'
      else
        artwork = div.find('.album-art')
        artwork.css('background-image', 'url(now-playing.widget/lib/default.png)')

      # if song isLoved then show heart
      if isLoved == 'true'
        div.find('.is-loved').css('display', 'block')
      # else hide heart
      else
        div.find('.is-loved').css('display', 'none')

      # show the widget
      div.show(1).animate({opacity: 1}, 250, 'swing')

  # hide widget if disabled
  else
    div.hide()
