class HomeController < ApplicationController
  def index
    @first_campaign_url = if user_signed_in?
                            if current_user.organization.blank?
                                new_organization_path
                            else
                                new_promotion_path
                            end
                        else
                            new_user_registration_path
                        end
  end
end
