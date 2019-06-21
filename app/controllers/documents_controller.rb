# frozen_string_literal: true

# main logic for documents in the app
class DocumentsController < ApplicationController
  before_action :find_document, only: %i[edit update destroy]

  # before_action :authenticate_user!

  def index
    @documents = current_user.documents
  end

  def show
    doc_user_id = Document.find(params[:id]).user_id

    if doc_user_id == current_user.id
      @document = current_user.documents.find(params[:id])
      @tags = @document.tags
    else
      flash[:error] = "Unauthorized for #{current_user.name}"
      redirect_to documents_path
    end
  end

  def new
    @document = Document.new
  end

  def edit; end

  def create
    @document = current_user.documents.create(document_params)

    tag_names = params[:document][:tag_names].split(',')
    tag_names.each do |tag_name|
      tag = Tag.find_by(name: tag_name) || Tag.create(name: tag_name)
      @document.document_tags.create(tag_id: tag.id)
    end

    if @document.persisted?
      flash[:success] = "#{current_user.name} your note was created successfully"
      redirect_to @document
    else
      render 'new'
    end
  end

  def update
    tag_names = params[:document][:tag_names].split(',').map { |name| name.gsub(' ', '') }

    @document.document_tags.joins(:tag).where('tags.name not in (?)', tag_names).destroy_all

    tag_names.each do |tag_name|
      next if @document.tags.find_by(name: tag_name)

      tag = Tag.find_or_create_by(name: tag_name)
      @document.document_tags.create(tag_id: tag.id)
    end
    if @document.update(document_params)
      flash[:success] = "#{current_user.name} your edit was great!"
      redirect_to @document
    else
      render 'edit'
    end
  end

  def destroy
    @document.destroy
    flash[:alert] = "#{current_user.name}'s note has been removed"
    redirect_to documents_path
  end

  private

  def find_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:title, :body, :tags)
  end
end
