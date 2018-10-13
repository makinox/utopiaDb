module Api
    module V1
        class SubjectUsersController < ApplicationController

            def index 
                enrollments = SubjectUser.all
                render json: {status: 200, data:enrollments}, status: :ok
            end

            def show
                enrollment = SubjectUser.where(user_id: params[:id])
                render json: {status: 200, data:enrollment}, status: :ok
            end

            def create
                enrollment = SubjectUser.new(ref_params)

                if enrollment.save
                    render json: {status: 200, data:enrollment}, status: :ok
                else
                    render json: {status: 505, data:enrollment.errors}, status: :unprocessable_entity
                end
            end

            def update
                enrollment = SubjectUser.find(params[:id])
                if enrollment.update_attributes(ref_params)
                    render json: {status: 200, data:enrollment}, status: :updated
                else 
                    render json: {status: 505, data:enrollment.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                enrollment = SubjectUser.find(params[:id])
                enrollment.destroy
                render json: {status: 200, data:enrollment}, status: :deleted
            end
            
            private

            def ref_params
                params.permit(:user_id, :subject_id)
            end
            
        end
    end
end