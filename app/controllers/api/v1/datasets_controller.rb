module Api
  module V1
    class DatasetsController < ApplicationController
      before_action :set_dataset, only: %i[update show destroy]

      def index
        @datasets = Dataset.all
        render json: @datasets
      end

      def show
        render json: @dataset
      end

      def create
        @body = params[:dataset]

        @body.each do |data|
          dataset = Dataset.new(data_id: data[:id], name: data[:name], timestamp: data[:timestamp])
        end
      end

      def update; end

      def destroy; end

      private

      def data_params
        params.permit(:dataset)
      end

      def set_dataset
        @dataset = Dataset.find(params[:id])
      end
    end
  end
end

