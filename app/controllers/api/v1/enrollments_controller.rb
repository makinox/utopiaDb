module Api
    module V1
        class EnrollmentsController < ApplicationController

            def index 
                enrollments = Enrollment.order('id ASC')
                render json: {status: 200, data:enrollments}, status: :ok
            end

            def show
                enrollment = Enrollment.find(params[:id])
                render json: {status: 200, data:enrollment}, status: :ok
            end

            def create
                enrollment = Enrollment.new(ref_params)

                if enrollment.save
                    render json: {status: 200, data:enrollment}, status: :ok
                else
                    render json: {status: 505, data:enrollment.errors}, status: :unprocessable_entity
                end
            end

            def update
                enrollment = Enrollment.find(params[:id])
                if enrollment.update_attributes(ref_params)
                    render json: {status: 200, data:enrollment}, status: :updated
                else 
                    render json: {status: 505, data:enrollment.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                enrollment = Enrollment.find(params[:id])
                enrollment.destroy
                render json: {status: 200, data:enrollment}, status: :deleted
            end
            
            private

            def ref_params
                params.permit(:users_id, :subjects_id)
            end
            
        end
    end
end