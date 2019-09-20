class HomeController < ApplicationController

  def index
  end

  def search
    if params[:search].blank?
      format.html { redirect_to home_url, notice: "Please Supply a Search term" }
      format.json { head :no_content }
    elsif params[:search].present?
      @board_results = Board.search_board(params[:search])
      @pin = Pin.search_pin(params[:search])
      if @board_results.nil? && @pin_results.nil?
        format.html { redirect_to @search, notice: "No Results Found matching your query" }
      else
        @search = @board_results + @pin_results
        format.html { redirect_to home_url, notice: "Following are the search results" }
      end
    end
  end
end
