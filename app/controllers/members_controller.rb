class MembersController < ApplicationController

  before_action :sign, except: :index

  def index 
    @members = Member.order("created_at DESC").page(params[:page]).per(2)
  end

  def new
    @member = Member.new 
  end
  
  def create 
    @members = Member.create(member_params)
    redirect_to root_path
  end

  def edit
    @member = Member.find(params[:id])
  end

  def destroy
    member = Member.find(params[:id])
    member.destroy
    
  end

  private
  def member_params
    params.require(:member).permit(:id, :name, :birthplace, :birthday, :hobby, :message, :image)
  end

  def sign
    redirect_to action: :index unless user_signed_in?
  end
end
      