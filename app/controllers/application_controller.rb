class ApplicationController < ActionController::API
  include Knock::Authenticable

  private

  # Define unauthorized access json response
  def unauthorized_entity(entity_name)
    render json: { error: "Unauthorized request" }, status:     
    :unauthorized
  end
  
  #only admin or owner got permission
  def check_permission
    unless current_user.admin? || (current_user == @user)
      render json: { status: 404, error: "Not Found" }, status: 404
    end
  end
  
end
