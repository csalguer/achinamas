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
