require "redcarpet"

class Bongloy::Terms::Renderer
  def terms(country = :kh, locale = :en)
    render_markdown("#{country}_terms", locale)
  end

  def privacy(country = :kh, locale = :en)
    render_markdown("#{country}_privacy", locale)
  end

  private

  def render_markdown(file_id, locale)
    markdown.render(File.read(path_to_root("#{file_id}.#{locale}.md")))
  end

  def html_renderer
    @html_renderer ||= Redcarpet::Render::HTML.new(:with_toc_data => true)
  end

  def markdown
    @markdown ||= Redcarpet::Markdown.new(html_renderer)
  end

  def path_to_root(filename)
    File.join(File.expand_path('../..', File.dirname(__dir__)), filename)
  end
end
