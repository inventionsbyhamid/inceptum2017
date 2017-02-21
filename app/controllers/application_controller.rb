class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_resource

  before_action :set_days, only: [:index]

  protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :email, :password, :password_confirmation, :contact])
	  end

	  def layout_by_resource
	    if devise_controller? && resource_name == :user
	      "devise"
	    else
	      "application"
	    end
	  end

	  def set_days
	  	@day1 = Event.where(:day => 1)
	  	@day2 = Event.where(:day => 2)
	  	@day3 = Event.where(:day => 3)
	  	if user_signed_in?
	  		@myevents = current_user.events
	  	end
	  end

  def index
  	
  end

end
