module ApplicationHelper
    def display_form_errors(object)
        object.errors.full_messages.map do |msg|
            content_tag(:p, msg)
        end
        .join(" ").html_safe
    end
end
