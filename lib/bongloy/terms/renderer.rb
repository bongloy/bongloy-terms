require "redcarpet"

class Bongloy::Terms::Renderer
  def self.render_terms?
    do_render?(:terms)
  end

  def self.render_privacy?
    do_render?(:privacy)
  end

  def self.render_prohibited_businesses?
    do_render?(:prohibited_businesses)
  end

  def self.render_fees_taxes?
    do_render?(:fees_taxes)
  end

  def terms(country = :kh, locale = :en)
    render_markdown("#{country}_terms", locale)
  end

  def privacy(country = :kh, locale = :en)
    render_markdown("#{country}_privacy", locale)
  end

  def prohibited_businesses(country = :kh, locale = :en)
    render_markdown("#{country}_prohibited_businesses", locale)
  end

  def fees_taxes(country = :kh, locale = :en)
    render_markdown("#{country}_fees_taxes", locale)
  end

  def render_terms?
    self.class.render_terms?
  end

  def render_privacy?
    self.class.render_privacy?
  end

  def render_prohibited_businesses?
    self.class.render_prohibited_businesses?
  end

  def render_fees_taxes?
    self.class.render_fees_taxes?
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

  def self.do_render?(key)
    configuration = ENV["BONGLOY_TERMS_RENDER_#{key.to_s.upcase}"]
    configuration.nil? || configuration.to_i != 0
  end
end
