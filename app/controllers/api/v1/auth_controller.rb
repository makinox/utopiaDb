module Api
    module V1
        class AuthController < ApplicationController
            def create
                user = User.where(user: params[:user]).first

                if user.password == params[:password]
                    render json: {status: 200, data:{id:user.id, entity:user.entity_id} }, status: :ok
                else
                    render json: {status: 401, data:false}, status: :unauthorized
                end
            end
        end
    end
end