class BlogsController < ApplicationController
  
  def home
    @blogs = Blog.all.order("created_at DESC")
    @users = User.all
  end

  def destroy 
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |t|
      t.html {redirect_to blogs_home_url, notice: "blog is destroyed!"}
      t.js { head :no_content}
      t.json {render :layout => false}
    end
  end

  def new 
    @blog = Blog.new
    @user_options = User.all.map{ |u| [ u.name, u.id ] }
    respond_to do |t|
      t.js
      t.json {render :partial => 'form'}
    end
  end

  def create
    @blog = Blog.new(blog_params)
    UserMailer.new_order_email(@blog.author).deliver_now
    respond_to do |format|
      if @blog.save
        format.js
        format.html { redirect_to blogs_home_url, notice: 'blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }

      end
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :body, :author_id)
  end
end
