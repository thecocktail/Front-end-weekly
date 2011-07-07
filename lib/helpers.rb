include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::Capturing

def current? id, wrap = nil
  if @item[:nav_id] == id || @item[:sub_nav_id] == id
    wrap.nil? ? 'active' : %~#{wrap}="active"~
  end
end

def select_month_options
  index = 0
  ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"].inject("") do |output,member|
    output << %~<option value="#{index = index + 1}">#{member}</option>~
  end
end

def select_days_options
  (1..31).inject("") do |output,member|
    output << %~<option value="#{member}">#{member}</option>~
  end
end

def select_years_options
  initial_year = 2010
  (0..10).inject("") do |output,member|
    output << %~<option value="#{initial_year = initial_year + 1}">#{initial_year}</option>~
  end
end