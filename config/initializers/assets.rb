# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


#Added when trying to make CSS work
Rails.application.config.assets.precompile += %w( style.css ) 
Rails.application.config.assets.precompile += %w( theme-colors/default.css )

#Added when trying to make Revolution-Slider plugin to work
Rails.application.config.assets.precompile += %w( plugins/revolution-slider/settings.css )
Rails.application.config.assets.precompile += %w( plugins/revolution-slider/settings-ie8.css ) 
#Added when trying to make Revolution-Slider javascript to work
Rails.application.config.assets.precompile += %w( custom.js )
Rails.application.config.assets.precompile += %w( app.js )
Rails.application.config.assets.precompile += %w( plugins/jquery/jquery.min.js )
Rails.application.config.assets.precompile += %w( plugins/jquery/jquery-migrate.min.js )
Rails.application.config.assets.precompile += %w( plugins/revolution-slider/jquery.themepunch.tools.min.js )
Rails.application.config.assets.precompile += %w( plugins/revolution-slider/jquery.themepunch.revolution.min.js )
Rails.application.config.assets.precompile += %w( plugins/bootstrap/js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( plugins/back-to-top.js )
Rails.application.config.assets.precompile += %w( plugins/revolution-slider.js )
#Added when trying to get icons to work
Rails.application.config.assets.precompile += %w( plugins/line-icons/line-icons.css ) 
Rails.application.config.assets.precompile += %w( plugins/font-awesome/font-awesome.css ) 

#Added when trying to get login page to work
Rails.application.config.assets.precompile += %w( pages/page_log_reg_v2.css ) 
Rails.application.config.assets.precompile += %w( plugins/countdown/jquery.countdown.js ) 
Rails.application.config.assets.precompile += %w( plugins/backstretch/jquery.backstretch.min.js )

#Added when trying to get basic blog functionality to work
Rails.application.config.assets.precompile += %w( pages/blog.css ) 

#Added when trying to get about us page to work
Rails.application.config.assets.precompile += %w( pages/page_about.css )
Rails.application.config.assets.precompile += %w( plugins/jquery.parallax.js )
Rails.application.config.assets.precompile += %w( pages/page_contacts.js )
Rails.application.config.assets.precompile += %w( plugins/gmap/gmap.js )