class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def record_invalid(exception)
        render json: {errors: exception.record.errors.full_messages}
    end

    def record_not_found(exception)
        render json: {error: "#{exception.model} not found!"}
    end

end
