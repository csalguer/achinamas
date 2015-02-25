# require 'rubygems'
# require 'nokogiri'

module ArticlesHelper
	def markdown(text)
	    options = {
	      filter_html:     true,
	      hard_wrap:       true, 
	      link_attributes: { rel: 'nofollow', target: "_blank" },
	      space_after_headers: true, 
	      fenced_code_blocks: true,
	      strikethrough: true
	    }

	    extensions = {
	      autolink:           true,
	      superscript:        true,
	      disable_indented_code_blocks: true
	    }

	    renderer = Redcarpet::Render::HTML.new(options)
	    markdown = Redcarpet::Markdown.new(renderer, extensions)

	    markdown.render(text).html_safe
	end

	def creole(text)
		html = Creole.creolize(text)
		html.html_safe
	end

	def creole_article_preview(text)
		html = Creole.creolize(text)
		# Nokogiri::HTML(html).text
		html.gsub(/<\/?[^>]*>/, '').gsub(/\n\n+/, "\n").gsub(/^\n|\n$/, '')
	end

end
