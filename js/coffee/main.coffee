window.sliderHidden = true
slideOn = ->
  $("#slideout-ascii").off('mouseenter mouseleave')
  $("#slideout-ascii").removeClass()
  $("#slideout-ascii").addClass("slide")
slideOff = ->
  $("#slideout-ascii").removeClass()
  addInchOutListener()
slideToggle = ->
  if window.sliderHidden
    slideOn()
    window.sliderHidden = false
  else 
    slideOff()
    window.sliderHidden = true
addInchOutListener = ->
  $("#slideout-ascii").on 'mouseenter', ->
    $(@).addClass 'inchOut'
  $("#slideout-ascii").on 'mouseleave', ->
    $(@).removeClass 'inchOut'
$ ->
  $("#slideout_background").on('click', slideToggle)
  addInchOutListener()

  

