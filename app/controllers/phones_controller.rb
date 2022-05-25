class PhonesController < ApplicationController
    def index
        render json: Phone.all, adapter: nil,
        except: [:created_at, :updated_at], status: :ok
    end

    def show
        phone = Phone.find(params[:id])
        render json: phone, status: :ok
    end

    def create
        phone = Phone.create!(phone_params)
        render json: phone, status: :created
    end

    def update
        phone = Phone.find(params[:id])
        phone.update!(phone_params)
        render json: phone, status: :ok
    end

    def destroy
        phone = Phone.find(params[:id])
        phone.destroy
        head :no_content
    end

    private

    def phone_params
        params.permit(:maker, :student_id, :app_id)
    end
end
