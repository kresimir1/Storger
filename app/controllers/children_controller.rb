class ChildrenController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @children = @user.children
  end

  def show
    @user = User.find(current_user.id)
    @child = Child.find(params[:id])
    @age = @child.age(@child.dob)
  end

  def new
      @child = Child.new
  end

  def edit
    @child = Child.find(params[:id])
  end

  def create
    @child = Child.new(child_params)
    @child.user_id = current_user.id

     if @child.save
       redirect_to @child, notice: "Successfully added account."
     else
       render 'new'
     end
   end


  def destroy
    @child = Child.find(params[:id])
    @child.destroy

    redirect_to children_path
  end

   def update
     @child = Child.find(params[:id])

     if @child.update(child_params)
       redirect_to @child
     else
       render 'edit'
     end
   end



  private
    def child_params
      params.require(:child).permit(:first_name, :last_name, :dob, :gender)
    end

end
