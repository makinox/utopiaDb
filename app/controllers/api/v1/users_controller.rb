module Api
    module V1
        class UsersController < ApplicationController

            def index 
                users = User.order('id ASC')
                render json: {status: 200, data:users}, status: :ok
            end

            def show
                user = User.find(params[:id])
                render json: {status: 200, data:user}, status: :ok
            end

            def create
                user = User.new(ref_params)

                if user.save
                    render json: {status: 200, data:user}, status: :ok
                else
                    render json: {status: 505, data:user.errors}, status: :unprocessable_entity
                end
            end

            def update
                user = User.find(params[:id])
                if user.update_attributes(ref_params)
                    render json: {status: 200, data:user}, status: :updated
                else 
                    render json: {status: 505, data:user.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                user = User.find(params[:id])
                user.destroy
                render json: {status: 200, data:user}, status: :deleted
            end
            
            private

            def ref_params
                params.permit(:name, :user, :identity, :age, :rol, :grade, :entity_id)
            end
            
        end
    end
end