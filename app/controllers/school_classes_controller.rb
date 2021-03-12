require 'pry'

class SchoolClassesController < ApplicationController

    def index
    end
    
    def show
        @school_class = SchoolClass.find_by(id: params[:id])
    end
    
    def new
        @school_class = SchoolClass.new
    end
    
    def create
        @school_class = SchoolClass.create(school_class_params)
        redirect_to school_class_path(@school_class)
    end
    
    def edit
        @school_class = SchoolClass.find_by(id: params[:id])
        
    end
    
    def update
        @school_class = SchoolClass.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end
    
    def destroy
    end

    private

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end