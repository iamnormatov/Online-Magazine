class PagesController < ApplicationController
  def home
    @categoriys = Categoriy.all
    @categoriys2 = Categoriy.all

    @products = Product.all

  end
end
 