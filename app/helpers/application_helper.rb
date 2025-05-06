module ApplicationHelper
  def field_error(resource, field)
    return unless resource.errors[field].any?

    tag.p resource.errors[field].first,
      class: "text-sm text-red-600 mt-1"
  end
end
