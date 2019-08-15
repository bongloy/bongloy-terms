require "redcarpet"

module Bongloy
  module Terms
    class Renderer
      def render(page_name, locale: :en)
        filepath = path_to_file("#{page_name}.#{locale}.md")
        filepath = path_to_file("#{page_name}.en.md") unless filepath.exist?
        markdown.render(filepath.read)
      end

      private

      def path_to_file(filename)
        Pathname(File.join(File.expand_path("../../pages", File.dirname(__dir__)), filename))
      end

      def find_page(page_name, locale)
        Terms.pages.find { |p| p.page_name == page_name.to_s && p.locale == locale.to_s }
      end

      def markdown
        @markdown ||= Redcarpet::Markdown.new(html_renderer, tables: true)
      end

      def html_renderer
        @html_renderer ||= Redcarpet::Render::HTML.new(with_toc_data: true)
      end
    end
  end
end
