class Api::AuthenticationController < ApplicationController
    before_action :authorize_request, except: :create

    def new
    end 
  
    # POST /auth/login
    def create
      @user = User.find_by_email(params[:email])

      if @user&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        # response.headers['Set-Cookie'] = "access_token=#{token}"
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                       email: @user.email }, status: :ok
                       
      else
        render json: { error: 'unauthorized' }, status: :unauthorized
      end
    end
  
    private
  
    def login_params
      params.permit(:email, :password)
    end
  end