class PagesController < ApplicationController
  def home
    @events = Event.where(status: "approved")
      .where(date: Date.today.beginning_of_week..Date.today.end_of_week)
  end
  
  def food
    @organizations = Organization.where(category: 'Food')
  end

  def housing
    @organizations = Organization.where(category: 'Housing')
  end

  def healthcare
    @organizations = Organization.where(category: 'Healthcare')
  end

  def education
    @organizations = Organization.where(category: 'Education')
  end

  def childcare
    @organizations = Organization.where(category: 'Childcare')
  end

  def legal_resources
    @organizations = Organization.where(category: 'Legal Resources')
  end
end
