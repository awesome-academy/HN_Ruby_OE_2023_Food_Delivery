class Users::ConfirmationsController < Devise::ConfirmationsController
  protected
  def after_confirmation_path_for resource_name, _resource
    new_session_path(resource_name)
  end
end
