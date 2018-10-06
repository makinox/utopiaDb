module Api
    module V1
        class EntitiesController < ApplicationController
            def index 
                entities = Entity.order('id ASC')
                render json: {status: 200, data:entities}, status: :ok
            end

            def show
                entitie = Entity.find(params[:id])
                render json: {status: 200, data:entitie}, status: :ok
            end

            def create
                entitie = Entity.new(ref_params)

                if entitie.save
                    render json: {status: 200, data:entitie}, status: :ok
                else
                    render json: {status: 505, data:entitie.errors}, status: :unprocessable_entity
                end
            end

            def update
                entitie = Entity.find(params[:id])
                if entitie.update_attributes(ref_params)
                    render json: {status: 200, data:entitie}, status: :updated
                else 
                    render json: {status: 505, data:entitie.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                entitie = Entity.find(params[:id])
                entitie.destroy
                render json: {status: 200, data:entitie}, status: :deleted
            end
            
            private

            def ref_params
                params.permit(:name, :identity, :max, :responsable, :pass)
            end
        end
    end
end