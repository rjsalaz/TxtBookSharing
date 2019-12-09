module Api
    class CoursesController < ApplicationController
        def index
            courses = Course.select([:id, :name]).order(:name);
            render json: {courses: courses}
        end
    end
end
