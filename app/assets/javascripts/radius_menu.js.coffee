@Menues ||= {}
class @Menues.Radius
  constructor: (@radius, @child_width, @container, @show = false)->
    @disableDefault()
    @open_menu = ''
    @buildOpenLink()
    @buildRadialMenu()
    @bindEvents()
    @container.radmenu 'show'

  disableDefault: ()->
    document.ontouchmove = (event) ->
      event.preventDefault()

  buildOpenLink: ()=>
    @container.prepend '<div class="open_menu"></div>'
    @open_menu = @container.find '.open_menu'
    @open_menu.css
      width: "#{@radius}px"
      height: "#{@radius}px"
      'border-radius': "#{@radius/2}px"
      left: "#{-(@radius/2 - @child_width)}px"
      top: "#{-(@radius/2 -@child_width)}px"

  buildRadialMenu: ()=>
    @container.radmenu
      listClass: "list"
      itemClass: "item"
      radius: @radius
      initialScale: 0.5
      animSpeed: 400 # animation speed in millis
      centerX: 0 # the center x axis offset
      centerY: 0 # the center y axis offset
      scaleAnimSpeed: 300
      animEasing: "swing"
      angleOffset: -90

  nestedSelection: ()->

  bindEvents: ()->
    $(@open_menu).bind 'tapone', ()=>
      unless @show
        @container.radmenu 'scale', 2
        @show = true
      else
        @container.radmenu 'scale', 0.5
        @show = false

    $('body').bind 'swipeone', ()=>
      @container.radmenu 'next'

      #$('body').bind 'swipeLeft', ()=>
      #@container.radmenu 'prev'

      #$('body').bind 'orientationchange', ()->
      #alert 'hello'
