def icon_classes(*names)
    final = ""
    names[0].each do |n|
    	final = final + "icon-" + n.to_s + " "
    end
    return final
  end

names = [:remove, :white]
puts icon_classes(names)