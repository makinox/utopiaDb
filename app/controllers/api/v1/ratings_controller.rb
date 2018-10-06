module Api
    module V1
        class RatingsController < ApplicationController

            def index 
                ratings = Rating.order('id ASC')
                render json: {status: 200, data:ratings}, status: :ok
            end

            def show
                rating = Rating.find(params[:id])
                render json: {status: 200, data:rating}, status: :ok
            end

            def create
                rating = Rating.new(ref_params)

                if rating.save
                    render json: {status: 200, data:rating}, status: :ok
                else
                    render json: {status: 505, data:rating.errors}, status: :unprocessable_entity
                end
            end

            def update
                rating = Rating.find(params[:id])
                if rating.update_attributes(ref_params)
                    render json: {status: 200, data:rating}, status: :updated
                else 
                    render json: {status: 505, data:rating.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                rating = Rating.find(params[:id])
                rating.destroy
                render json: {status: 200, data:rating}, status: :deleted
            end
            
            private

            def ref_params
                params.permit(:title, :value, :user_id)
            end
            
        end
    end
end