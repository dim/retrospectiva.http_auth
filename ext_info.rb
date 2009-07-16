ApplicationController.class_eval do
  protected          
    
    def authenticate_user_via_http_basic
      authenticate_with_http_basic do |identifier, password|
        User.authenticate(:username => identifier, :password => password)
      end
    end

end