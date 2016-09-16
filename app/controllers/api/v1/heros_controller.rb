module Api
  module V1
    class HerosController < ApplicationController
      def index
        render json: Hero.all
      end

      def show
        render json: Hero.find(params[:id])
      end

      def new
        hero = Hero.new
      end

      def create
        hero = Hero.create(hero_params)
        if hero.save
          render json: hero
        else
          render json: hero.errors, status: 500
        end
      end

    private

    def hero_params
      params.require(:hero).permit(:name, :age, :height, :hometown, :sex)
    end
    end
  end
end
