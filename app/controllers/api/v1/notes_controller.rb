class Api::V1::NotesController < ApplicationController
  ALLOWED_DATA = %w[title body]
  def index
    notes = Note.all
    render json: notes
  end
  def show
    note = Note.find(params[:id])
  end
  def create
    data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
    note = Note.new(data)
    if note.save
      render json: note
    else
      render json: {"error": "Could not create it"}
    end
  end
  def update
    note = Note.find(params[:id])
    data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
    if note.update
      render json: note
    else
      render json: {"error": "Could not update it"}
    end
  end
end
