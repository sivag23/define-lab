class Api::V1::AuthorsController < ApplicationController

    
    def show
        @author = Author.find(params[:id])
        if @author.present?
            @data = { author_details: @author , books: @author.books}
            render json: @data
        else
            render json: {message: "no author found..."}, status: 200
        end
    end
end
