class ProjectValidationPicker
    # Pick validation on API endpoints
    def pick_a_validation(project, api=false)
        if api
           project.instance_variable_set(:@strict_priority_validation, false)
        else
          project.instance_variable_set(:@strict_priority_validation, true)
        end
    end
 end