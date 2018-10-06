module Api
    module V1
        class SubjectsController < ApplicationController

            def index 
                subjects = Subject.order('id ASC')
                render json: {status: 200, data:subjects}, status: :ok
            end

            def show
                subject = Subject.find(params[:id])
                render json: {status: 200, data:subject}, status: :ok
            end

            def create
                subject = Subject.new(ref_params)

                if subject.save
                    render json: {status: 200, data:subject}, status: :ok
                else
                    render json: {status: 505, data:subject.errors}, status: :unprocessable_entity
                end
            end

            def update
                subject = Subject.find(params[:id])
                if subject.update_attributes(ref_params)
                    render json: {status: 200, data:subject}, status: :updated
                else 
                    render json: {status: 505, data:subject.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                subject = Subject.find(params[:id])
                subject.destroy
                render json: {status: 200, data:subject}, status: :deleted
            end
            
            private

            def ref_params
                params.permit(:name, :grade)
            end
            
        end
    end
end