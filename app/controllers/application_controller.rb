class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! #追記することで、ログインしていない場合はログイン画面に遷移する。
  before_action :configure_permitted_parameters, if: :devise_controller? #deviseコントローラが動いたら、configure_permitted_parametersを処理する。
  

  private

    def set_time_zone
      Time.zone = current_user.time_zone
    end

  protected

  def configure_permitted_parameters #deviseでNameを登録するのに必要な記述
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  
end
