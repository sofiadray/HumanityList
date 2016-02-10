class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		@charities = Charity.where(category_id: @category.id)
		@charities.each do |c|
			@posts = Post.where(charity_id: c.id)
		end
	end
end