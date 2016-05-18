class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :fname, :lname, :street, :city, :province, :postal, :phone)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :fname, :lname, :street, :city, :province, :postal, :phone)
  end
end 