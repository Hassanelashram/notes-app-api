# frozen_string_literal: true

module Api
  module V1
    class NotesController < ApplicationController
      ALLOWED_DATA = %w[title body].freeze
      def index
        notes = Note.all.order(created_at: :desc)
        render json: notes
      end

      def show
        render json: Note.find(params[:id])
      end

      def create
        data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
        note = Note.new(data)
        if note.save
          render json: note
        else
          render json: { "error": 'Could not create it' }
        end
      end

      def update
        note = Note.find(params[:id].to_i)
        data = json_payload.select { |k| ALLOWED_DATA.include?(k) }
        if note.update
          render json: note
        else
          render json: { "error": 'Could not update it' }
        end
      end

      def destroy
        note = Note.find(params[:id])
        note.destroy
      end
    end
  end
end
