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



	#Takes any text and processes the text according to Creole Markup language
	def creole(text)
		html = Creole.creolize(text)
		html.html_safe
	end

	#Updated to have multiple language support embedded in the actual content 
	#of the article. This is to avoid db clutter by having another column
	#and redundancy cross checking for titles to match them
	def article_lang_display(text)

		text.split("$$").each_cons(2) do |lang, content|

			if lang.eql?('en') and I18n.locale == :en
				en_text = content
				return creole(en_text)
			elsif lang.eql?('es') and I18n.locale == :es
				es_text = content
				return creole(es_text)
			end
		end
	end

	#Wrapper function to make code more legible, to be used 
	#when the title needs to be displayed in current I18n locale
	def article_title_lang_display(text)
		article_lang_display(text)
	end


	def creole_article_preview(text)
		html = Creole.creolize(text)
		#Note that Nokogiri method works, keeping code commented in case
		#Dyno load too slow with regex implementation
		# Nokogiri::HTML(html).text
		html.gsub(/<\/?[^>]*>/, '').gsub(/\n\n+/, "\n").gsub(/^\n|\n$/, '')
	end

end
