class RegistrationsController < Devise::RegistrationsController
  
  private

  def sign_up_params
  	params.require(:user).permit(:name, :about, :avatar, :date_of_birth, :email, :password, :password_confirmation, :slug, :humanizer_answer, :humanizer_question_id)
  end

  def account_update_params
  	params.require(:user).permit(:name, :about, :avatar, :date_of_birth, :email, :password, :password_confirmation)
  end
  
end 	