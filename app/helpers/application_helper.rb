module ApplicationHelper

def parrafo text
  lis = "<li>1 - #{text}</li><li>2 - #{text}</li>"
  content_tag :ul, lis, {style: 'color:red; font-size:20px'}
end
end
