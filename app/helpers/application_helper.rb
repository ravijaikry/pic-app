module ApplicationHelper

  def link_to_add_dynamic_form(name, f, association, partial)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(partial, :f => builder)
    end
    link_to_function( image_tag( "addInfo.png", :title => "Add One More") + " " + name , "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function("Remove" + name , "remove_fields(this)")
  end

end
