json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :name, :comment, :address
  json.url testimonial_url(testimonial, format: :json)
end
