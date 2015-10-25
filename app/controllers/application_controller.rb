class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    unless current_user.has_entry_for_today?
      current_user.entries.create
    end
    journal_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
