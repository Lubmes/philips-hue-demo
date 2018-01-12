class LightsController < ApplicationController

  require 'hue'

  def index
    @lights = Light.all
  end

  def new
    @light = Light.new
  end

  def create
    @light = Light.new(light_params)

    if @light.save
      redirect_to 'index'
    end
  end

  def adjust
    client = Hue::Client.new
    light_in_db = Light.find(params[:id])
    light_in_db.update(light_params)
    light_in_db.save

    light = client.light(light_in_db.id)
    light.on!
    light.hue = light_in_db.hue
    redirect_to [:lights]
  end

  def turn_off
    client = Hue::Client.new
    light_in_db = Light.find(params[:id])
    light_in_db.on = false
    light_in_db.save

    light = client.light(light_in_db.id)
    light.off!

    redirect_to [:lights]
  end


  private

  def light_params
    params.require(:light).permit(:name, :hue, :color_temperature, :transistion_time)
  end
end
