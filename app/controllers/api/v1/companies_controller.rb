module Api
  module V1
    class CompaniesController < ApplicationController
      def index
        render json: {message: "hello"}
      end

      def create
      end

      def update
      end

      def destroy
      end
    end
  end
end

