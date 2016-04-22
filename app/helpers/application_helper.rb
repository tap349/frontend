module ApplicationHelper
  def octicon code, classes = ''
    content_tag :div,
      nil,
      class: "octicon octicon-#{code.to_s.dasherize} #{classes}"
  end

  def mega_octicon code, classes = ''
    content_tag :div,
      nil,
      class: "mega-octicon octicon-#{code.to_s.dasherize} #{classes}"
  end
end
