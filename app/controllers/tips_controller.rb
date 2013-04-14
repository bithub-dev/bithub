class TipsController < ApplicationController

  before_filter :load_tips, only: [:index, :create]
  before_filter :require_login, except: [:index]

  def index
    if logged_in?
      @tip = current_user.tips.build
    end
  end

  def create
    @tip = current_user.tips.build params[:tip]
    if @tip.save
      redirect_to tips_path, :notice => "Thanks for contributing! Your tip has been added below."
    else
      render :index
    end
  end

  def edit
    @tip = current_user.tips.find(params[:id])
  end

  def update
    @tip = current_user.tips.build(params[:tip])
    if @tip.save
      redirect_to tips_path, :notice => "Your changes have been saved."
    else
      render :edit
    end
  end

  def load_tips
    @tips = Tip.order('created_at DESC')
  end

  def show
    @tip = current_user.tips.find(params[:id])
    @json = @tip.to_gmaps4rails
  end

end