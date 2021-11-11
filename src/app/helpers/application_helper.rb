#Josh Shoenfelt - Developer

#Added one function, current_recipe. Looks in the browser to see if a current
#session exists, if not it creates a new recipe
# frozen_string_literal: true

# Helper functions made here are accessable in all views
# for example, app_name is now accessable to all views
module ApplicationHelper
  def app_name
    conf = app_config
    if conf.nil?
      '?'
    else
      conf.name
    end
  end

  private

  def app_config
    AppConfig.first
  end

  #
  def current_recipe
    if !session[:recipe_id].nil?
      Recipe.find(session[:recipe_id])
    else
      Recipe.new
    end
  end
end
