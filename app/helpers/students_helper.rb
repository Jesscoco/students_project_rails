module StudentsHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'create'
            url = confirm_students_path
        elsif action_name == 'edit'
            url = student_path
        end
    end
end
