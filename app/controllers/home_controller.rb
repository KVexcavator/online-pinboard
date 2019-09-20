class HomeController < ApplicationController

  def index
  end

  def search
    respond_to do |format|
      if params[:search].blank?
        format.html { redirect_to index_url, notice: "Please Supply a Search term" }
      elsif params[:search].present?
        @board_res = Board.search_board(params[:search])
        @pin_res = Pin.search_pin(params[:search])
        if @board_res.nil? && @pin_res.nil?
          format.html { redirect_to index_url, notice: "No Results Found matching your query" }
        else
          @search = @board_res + @pin_res
          format.html { redirect_to index_url(@search), notice: "Following are the search results" }
        end
      end
    end
  end
end
