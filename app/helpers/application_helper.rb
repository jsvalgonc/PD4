module ApplicationHelper
    def link_to_add_fields(name, f, association)
        #byebug
        new_object = f.object.class.reflect_on_association(association).klass.new  
        fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|  
            render(association.to_s.singularize+"s", :f => builder)  
        end  
        link_to_function(name, h('add_fields(this,\"#{association}\"'))
    end 
    
    def link_to_add_fields2(name, f, association)
        #byebug
        new_object = f.object.class.reflect_on_association(association).klass.new
        fields =f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
            render(association.to_s.singularize+"s", :f => builder)  
        end 
        link_to name , 'javascript:void();', id: 'add_fields2', association: h(association), fields: '{'+h(fields)+'}', link: 'this'
        #link_to "teste3" , 'javascript:void();', id: 'add_fields2', association: h(association), fields: h(escape_javascript(fields)), link: 'this'
    end 
end