class TextbooksController < ApplicationController

  def index

    @textbooks = Textbook.all

  end

  def new

    @textbooks = Textbook.new
  
  end

  def create

    @textbooks = Textbook.new(text_param)

    if @textbooks.save
        redirect_to textbooks_path, notice: "The textbook #{@textbooks.title}"
    else
        render "new"
      
    end

  end

  def destroy
  
    @textbooks = Textbook.find(params[:id])

    @textbooks.destroy

    redirect_to textbooks_path, notice: "The textbook #{@textbooks.title} has been deleted"

  end


  private 

    def text_param
    params.require(:textbook).permit(:title, :attachment)

  end 

end
