class PostesController < ApplicationController
  def new
    @poste = Poste.new
    @postes = Hash.new
    Poste.all.each do |poste|
      case poste.name.capitalize
      when "Kitchen" then logo = 'https://maxcdn.icons8.com/Color/PNG/96/Food/hamburger-96.png'
      when "Cashier" then logo = 'https://maxcdn.icons8.com/Color/PNG/96/Ecommerce/check-96.png'
      when "Dishwash" then logo = 'https://maxcdn.icons8.com/Color/PNG/96/Household/broom-96.png'
      when "Bar" then logo = 'https://maxcdn.icons8.com/Color/PNG/96/Food/coffee_to_go-96.png'
      when "Waiter" then logo = 'https://maxcdn.icons8.com/Color/PNG/96/Food/waiter-96.png'
      else logo = 'https://maxcdn.icons8.com/Color/PNG/96/City/restaurant-96.png'
      end
      @postes[poste] = logo
    end
  end

  def create
    @poste = Poste.new(poste_params)
    @poste.save
    redirect_to new_poste_path
  end

  def edit
    @poste = Poste.find(params[:id])
  end

  def update
    @poste = Poste.find(params[:id])
    @poste.update(name: params[:poste][:name])
    redirect_to new_poste_path
  end

  def destroy
    @poste = Poste.find(params[:id])
    @poste.destroy
    redirect_to(:back)
  end

  def poste_params
    params.require(:poste).permit(:name)
  end
end
