class PagesController < ApplicationController
  def home
    @members = %W(x y z a)

    if params[:member]
      @members = @members.select { |member| member.start_with? params[:member].downcase }
    end
  end

  def about
  end

  def contact
  end
end
