include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::Capturing

def link href, text = false, br = false
  %~ <a href="#{href}" style="color:#338AC4; line-height:24px;">#{text ? text : href}</a> #{"<br />" if br }~
end