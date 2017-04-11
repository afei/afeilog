json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :blog_type, :external_link, :content
  json.url blog_url(blog, format: :json)
end
