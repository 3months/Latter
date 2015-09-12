class ApplicationController < ActionController::Base
  before_filter :set_locale
  protect_from_forgery


  # Public: Override default_url_options to automatically mixin the current
  # locale. This ensures that links always have the correct locale set,
  # regardless of whether the actual link_to has it or not.
  def default_url_options(options = {})
    {:locale => I18n.locale}
  end

  private

  # Private: Save the locale that is passed in the URL to the
  # current request.
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

end
