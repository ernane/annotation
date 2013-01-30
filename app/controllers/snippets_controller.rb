class SnippetsController < ApplicationController
  def index
    @snippets = current_user.snippets if current_user
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = current_user.snippets.create(params[:snippet])
    if @snippet.save
      redirect_to @snippet, notice: "Snippet was successfully created."
    else
      render :new
    end
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    if @snippet.update_attributes(params[:snippet])
      redirect_to @snippet, notice: "Snippet was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
    redirect_to snippets_url
  end
end