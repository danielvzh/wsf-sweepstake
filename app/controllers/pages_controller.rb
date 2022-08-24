class PagesController < ApplicationController
  def home
    @members = Member.all

    if params[:member]
      @members = @members.select { |member| member.name.downcase.start_with? params[:member].downcase }
    end
  end

  def about
  end

  def contact
  end
end
