include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::Capturing

MONTHS = {
  :January => 'Enero',
  :February => 'Febrero',
  :March => 'Marzo',
  :April => 'Abril',
  :May => 'Mayo',
  :June => 'Junio',
  :July => 'Julio',
  :August => 'Agosto',
  :September => 'Septiembre',
  :October => 'Octubre',
  :November => 'Noviembre',
  :December => 'Diciembre'
}

def link href, text = false, br = false
  %~ <a href="#{href}" style="color:#338AC4; line-height:24px;">#{text ? text : href}</a>#{"<br />" if br }~
end

def localized_date date 
  MONTHS.each do |en,es|
    en_s = en.to_s
    date = date.gsub(en_s,es) if date.match(en_s)
  end  
  date
end