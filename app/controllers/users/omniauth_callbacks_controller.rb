class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    callback_for(:facebook)
  end

  def google_oauth2
    callback_for(:google)
  end


  def callback_for(provider)
    @omniauth = request.env['omniauth.auth']
    info = User.find_oauth(@omniauth)
    @user = info[:user]
    if @user.persisted? 
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
    
    else 
      @sns = info[:sns]
      session[:nickname] = @user.nickname
      session[:email] = @user.email
      session[:password] = @user.password
      # session[:provider] = @user.provider
      # session[:uid] = @user.uid
      redirect_to registration_signup_index_path
  
    end
  end

  def failure
    redirect_to root_path and return
  end
end