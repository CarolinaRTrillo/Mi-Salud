class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home nosotros mi_salud]
  # layout "layout_aplication", only: [:home]

  def index
  end

  def home
  end

  def contacto
  end

  def nosotros
  end

  def mi_salud
  end

  def home2
  end
end
