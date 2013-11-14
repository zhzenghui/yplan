class SessionsController < ApplicationController
  def new 
  end
  
  def login 
    @user = User.authentication(params[:user_login], params[:password])

    if @user
      session[:user_id] = @user.id
      logger.info(@user)
      
      flash[:notice] = "Weclome #{@user.user_login}"
      redirect_to users_path
    else
      flash[:notice] = "The login or password is not correct."
      redirect_to new_session_path
    end
  
  end
  
  def create 
    @user = User.create(:user_login => params[:user_login], :user_email => params[:user_email],:password => params[:password])
    
    
    if @user
      redirect_to users_path
    end
  end
  
end
