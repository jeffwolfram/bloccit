module ApplicationHelper
  # define a method called form_group_tag which take 2 args
def form_group_tag(errors, &block)
  css_class = 'form_group'
  css_class << ' has-error' if errors.any?
  #this method is used to gukld the html and css to display the form element and any associated errors
  content_tag :div, capture(&block), class: css_class

end
end
