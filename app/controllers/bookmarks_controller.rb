class BookmarksController < ApplicationController
 layout "bookmarks" 
# GET /bookmarks
  # GET /bookmarks.json
  def index

  @search = Bookmark.search(params[:search])
  @bookmarks = @search.all
    @links = Link.all
 @user=current_user

    @search = Bookmark.search(params[:search])
    @bookmarks = @search.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookmarks }
    end
  end

  # GET /bookmarks/1
  # GET /bookmarks/1.json
  def show
 
    @bookmark = Bookmark.find(params[:id]) 
    @links = Link.all
    @book = Bookmark.find(params[:id]) 
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookmark }
    end
  end

  # GET /bookmarks/new
  # GET /bookmarks/new.json
  def new  

    @bookmark = Bookmark.new
    @links = Link.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookmark }
    end
  end

  # GET /bookmarks/1/edit
  def edit

    @bookmark = Bookmark.find(params[:id])
    @links = Link.all
  end

  # POST /bookmarks
  # POST /bookmarks.json
  def create

    @bookmark = Bookmark.new(params[:bookmark])
    @link = Link.new(params[:link])
    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to bookmarks_path, notice: 'Bookmark was successfully created.' }
        format.json { render json: @bookmark, status: :created, location: @bookmark }
      else
        format.html { render action: "new" }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookmarks/1
  # PUT /bookmarks/1.json

  def update
 
    @bookmark = Bookmark.find(params[:id])
    respond_to do |format|
      if @bookmark.update_attributes(params[:bookmark])
        format.html { redirect_to bookmarks_path, notice: 'Bookmark was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmarks/1
  # DELETE /bookmarks/1.json
  def destroy
   
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    respond_to do |format|
      format.html { redirect_to bookmarks_url }
      format.json { head :ok }
    end
  end


# GET /links/1
def show_links  
 
    @book = Bookmark.find(params[:id]) 
 end

  def show_links  


   @book = Bookmark.find(params[:id])
end

  end


