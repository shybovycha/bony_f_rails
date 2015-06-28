class HomeController < ApplicationController
  def index
    @start_campaign_message = "Start your first campaign!"

    if user_signed_in?
        if current_user.organization.blank?
            @first_campaign_url = new_organization_path
        else
            @first_campaign_url = new_promotion_path
            @start_campaign_message = "Start new campaign!"
        end
    else
        @first_campaign_url = new_user_registration_path
    end
  end
end
