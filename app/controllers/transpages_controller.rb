class TranspagesController < ApplicationController

  def remit_offer_types
	   @title = "Remittance Offering Types"
  end

  def monthly_remit
	   @title = "Monthly Remittance"
  end

  def wkly_incmome
	   @title = "Weekly Income"
  end

  def wkly_inc_types
	   @title = "Weekly Income Types"
  end
end
