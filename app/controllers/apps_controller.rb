class AppsController < ApplicationController
    def index
        render json: App.all, adapter: nil,
        except: [:created_at, :updated_at], status: :ok
    end

    def show
        app = App.find(params[:id])
        render json: app,
        status: :ok
    end

    def create
        app = App.create!(app_params)
        render json: app, status: :created
    end

    def update
        app = App.find(params[:id])
        app.update!(app_params)
        render json: app, status: :ok
    end

    def destroy
        app = App.find(params[:id])
        app.destroy
        head :no_content
    end

    private

    def app_params
        params.permit(:name, :price)
    end
end
