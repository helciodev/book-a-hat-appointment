module Api
  module V1
    class AppointmentsController < ApplicationController
      before_action :set_appointment, only: [:show, :update, :destroy]

      # GET /appointments
      def index
        @appointments = current_user.appointments

        json_response(@appointments)
      end

      # GET /appointments/1
      def show
        render json: @appointment
      end

      # POST /appointments
      def create
        @appointment = current_user.appointments.create!(appointment_params)
        json_response(@appointment, :created)
      end

      # PATCH/PUT /appointments/1
      def update
        if @appointment.update(appointment_params)
          render json: @appointment
        else
          render json: @appointment.errors, status: :unprocessable_entity
        end
      end

      # DELETE /appointments/1
      def destroy
        @appointment.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_appointment
        @appointment = Appointment.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def appointment_params
        params.require(:appointment).permit(:appointment_date, :city, :hat_id)
      end
    end
  end
end
