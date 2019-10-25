class Course < ApplicationRecord
    has_one :candidato, :class_name => "Course", :foreign_key => "cpf_candidato"


    def course_attributes=(course_attributes)
        course_attributes.each do |attributes|
        courses.build(attributes)
        end
    end
  
  
end
