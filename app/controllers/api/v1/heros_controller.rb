module Api
  module V1
    class HerosController < ApplicationController
      def index
        render json: Hero.all
      end
    end
  end
end