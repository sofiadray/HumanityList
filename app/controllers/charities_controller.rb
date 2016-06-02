class CharitiesController < ApplicationController

  def index
    if params[:search]
      @charities = Charity.search(params[:search]).order("created_at DESC")
    else
      @charities = Charity.all.order('created_at DESC')
    end
  end

  def show
    @charity = Charity.find(params[:id])
  end

  def new
    @user = User.find(current_user.id)
    @charity = @user.charities.new
    @charity.geocharitables.build
  end

  def create
    @user = User.find(current_user.id)
    @charity = @user.charities.new(charity_params)
    @charity.geocharitables.build

    if @charity.save 
      # && @geo.save
      flash[:message] = "Here is your charity's page!"
      redirect_to charity_path(id: @charity.id)
    else
      render :new
    end
  end

  def edit
    @charity = Charity.find(params[:id])
  end

  def update
    @charity = Charity.find(params[:id])
    @charity.update_attributes(charity_params)

    if @charity.update_attributes(charity_params)
      redirect_to charity_path(@charity.id)
    else
      render :new
    end
  end

  def destroy
    @charity = Charity.find(params[:charity_id])
    @charity.destroy

    if @charity.destroy
      redirect_to charities_path
    else
      render :new
    end
  end

  def manage
    @user = User.find(current_user.id)
  end

  private

  def charity_params
    params.require(:charity).permit(:name, :image, :website, :overview, :real, 
                                    :category_id, :user_id, :cities => [], geocharitables_attributes: [:id, :charity_id, :city_id])
  end

  
end
