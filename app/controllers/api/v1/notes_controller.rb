module Api
    module V1
        class NotesController < ApplicationController

            def index 
                notes = Note.order('id ASC')
                render json: {status: 200, data:notes}, status: :ok
            end

            def show
                note = Note.where(user_id: params[:id])
                render json: {status: 200, data:note}, status: :ok
            end

            def create
                note = Note.new(ref_params)

                if note.save
                    render json: {status: 200, data:note}, status: :ok
                else
                    render json: {status: 505, data:note.errors}, status: :unprocessable_entity
                end
            end

            def update
                note = Note.find(params[:id])
                if note.update_attributes(ref_params)
                    render json: {status: 200, data:note}, status: :updated
                else 
                    render json: {status: 505, data:note.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                note = Note.find(params[:id])
                note.destroy
                render json: {status: 200, data:note}, status: :deleted
            end
            
            private

            def ref_params
                params.permit(:title, :value, :observation, :subject_id, :user_id)
            end
            
        end
    end
end