class UsersController < ApplicationController
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |t|
      t.html {redirect_to blogs_home_url, notice: "user is destroyed!"}
      t.js {head :no_content}
      t.json {render :layout => false}
    end
  end

end
