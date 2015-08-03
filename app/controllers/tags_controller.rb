class TagsController < ApplicationController
  def create
  	@tag.create(tag_params)
  end

  private
  	def tag_params
 			params.require(:name).permit(:name)		
  	end

end
