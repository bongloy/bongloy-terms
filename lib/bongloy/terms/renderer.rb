require 'redcarpet'

class Bongloy::Terms::Renderer
  def render(page, country: :kh, locale: :en)
    markdown.render(File.read(path_to_root("#{country}_#{page}.#{locale}.md")))
  end
  
  private

  def markdown
    @markdown ||= Redcarpet::Markdown.new(html_renderer, tables: true)
  end

  def html_renderer
    @html_renderer ||= Redcarpet::Render::HTML.new(with_toc_data: true)
  end

  def path_to_root(filename)
    File.join(File.expand_path('../..', File.dirname(__dir__)), filename)
  end
end
