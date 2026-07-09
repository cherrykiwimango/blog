Post.find_each do |post|
  slug = post.title.to_s.parameterize + "-#{SecureRandom.alphanumeric(10)}"
  post.update(slug: slug)
end
