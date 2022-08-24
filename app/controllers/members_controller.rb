class MembersController < ApplicationController
  before_action :set_member, only: %I[show edit update destroy]

  def index
    @members = Member.all
  end

  def show
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    @member.save
    redirect_to member_path(@member)
  end

  def edit
  end

  def update
    @member.update(member_params)
    redirect_to member_path(@member)
  end

  def destroy
    @member.destroy
    redirect_to members_path, status: :see_other
  end

  def top
    @members = Member.where(points: Member.maximum(:points))
  end

  private

  def member_params
    params.require(:member).permit(:name, :points)
  end

  def set_member
    @member = Member.find(params[:id])
  end
end
