class HomeController < ApplicationController
  def search
    if params[:search].blank?
      flash[:notice] = "Please Supply a Search term"
    elsif params[:search].present?
      @board_results = Board.search_board(params[:search])
      @pin_results = Pin.search_pin(params[:search])
      if @board_results.nil? && @pin_results.nil?
        flash[:notice] = "No Results Found matching your query"
      else
        flash[:notice] = "Following are the search results"
        @search = @board_results + @pin_results
      end
    end
  end
end
