class Users::MypagesController < Devise::MypagesController
  def mypage
    @user =  User.find params[:id]
  end
end