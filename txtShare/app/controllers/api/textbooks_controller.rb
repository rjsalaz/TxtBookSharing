module Api
    class TextbooksController < ApplicationController
        def show
            textbooks = Textbook.where(course_id: params[:id]).select(:id, :comment, :download_path, :created_at).order(created_at: :desc);
            render json: {textbooks: textbooks}
        end

        def create
            textbook = Textbook.new(textbook_params)
    
            if textbook.save
                Textbook.update(textbook.id, :download_path => rails_blob_path(textbook.textbook_file))

                redirect_to "/submit?success=true"
            else
                redirect_to "/submit?success=false"
            end
        end
    
        private
        def textbook_params
            params.permit(:course_id, :textbook_file, :comment)
        end
    end
end
