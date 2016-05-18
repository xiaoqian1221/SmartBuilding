class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :fname, :lname, :street, :city, :province, :postal, :phone, :password, :password_confirmation, :role_id)
  end

  def account_update_params
    params.require(:user).permit(:email, :fname, :lname, :street, :city, :province, :postal, :phone, :password, :password_confirmation)
  end
end