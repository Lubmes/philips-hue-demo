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

  def adjust_light
    client = Hue::Client.new
    light = client.lights.first
    light.on!
    # light.hue = 46920
    light.hue = 10000
    light.color_temperature = 100
    transition_time = 10*5 # Hue transition times are in 1/10 of a second.
    light.set_state({:color_temperature => 400}, transition_time)
    redirect_to [:lights]
  end

  private

  def light_params
    params.require(:light).permit(:name, :hue, :color_temperature, :transistion_time)
  end
end
