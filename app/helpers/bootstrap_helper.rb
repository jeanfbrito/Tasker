module BootstrapHelper
  def icon(*names)
    content_tag(:i, nil, :class => icon_classes(names))
  end

  private
  def icon_classes(*names)
    final = ""
    names[0].each do |n|
      final = final + "icon-" + n.to_s + " "
    end
    return final
  end
end



#names.map {|name| "icon-#{name}" }

# content_tag(:p, "Hello world!")
#  # => <p>Hello world!</p>
# content_tag(:div, content_tag(:p, "Hello world!"), :class => "strong")
#  # => <div class="strong"><p>Hello world!</p></div>
# content_tag("select", options, :multiple => true)
#  # => <select multiple="multiple">...options...</select>

# <%= content_tag :div, :class => "strong" do -%>
#   Hello world!
# <% end -%>
#  # => <div class="strong">Hello world!</div>