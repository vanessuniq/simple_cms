module ApplicationHelper
    def display_form_errors(object)
        render(partial: "application/form_errors", locals: {object: object})
    end

    def display_message
        flash.map do |k, v|
            content_tag(:p, v, class: k)
        end
        .join(" ").html_safe
    end

    def visible_options
        [{value: true, name: "yes"}, {value: false, name: "no"}]
    end
end
