module PostsHelper
  def parse_markdown(text)
    sanitize(Commonmarker.to_html(
      text,
      options: {
        parse: {
          smart: true
        }
      }
    ))
  end
end
