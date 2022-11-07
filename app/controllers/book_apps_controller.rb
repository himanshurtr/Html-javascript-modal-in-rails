class BookAppsController < ApplicationController
  before_action :set_book_app, only: %i[ show edit update destroy ]

  # GET /book_apps or /book_apps.json
  def index
    @book_apps = BookApp.all
  end

  # GET /book_apps/1 or /book_apps/1.json
  def show
    respond_to do |format|
      format.js
    end
  end

  # GET /book_apps/new
  def new
    @book_app = BookApp.new
    respond_to do |format|
      format.js
    end  
  end

  # GET /book_apps/1/edit
  def edit
    respond_to do |format|
      format.js
    end     
  end

  # POST /book_apps or /book_apps.json
  def create
    @book_app = BookApp.create(book_app_params)

    respond_to do |format|
      format.js
    end
  end

  # PATCH/PUT /book_apps/1 or /book_apps/1.json
  def update
    respond_to do |format|
      if @book_app.update(book_app_params)
        format.js
      else
        format.js
      end
    end
  end

  # DELETE /book_apps/1 or /book_apps/1.json
  def destroy
    @book_app.destroy

    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_app
      @book_app = BookApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_app_params
      params.require(:book_app).permit(:title, :price)
    end
end
