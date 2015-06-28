class CustomersController < ApplicationController
  rescue_from RuntimeError, with: :error_handler

  def sign_up
    customer = Customer.find_or_create_by customer_params

    render json: { success: true }
  end

  def ping_beacon
    ping_params = ping_beacon_params

    customer = Customer.find_by(facebook_id: ping_params[:customer_facebook_id])

    raise Exception.new("No such customer") if customer.blank?

    beacon = Beacon.find_by(uuid: ping_params[:beacon_uuid])

    raise Exception.new("No such beacon") if beacon.blank?

    # customer.eligable_challenges
    customer.beacons << beacon
    customer.save

    render json: { success: true }
  end

  def eligable_challenges
    customer = Customer.find_by(facebook_id: params[:customer_facebook_id])

    raise Exception.new("No such customer") if customer.blank?

    # beacons = customer.beacons_ponged.map { |beacon| Challenge.find_by() }
    @challenges = Challenge.joins(:beacons).where('beacons.uuid IN ?', customer.beacons.pluck(:uuid))

    render json: { challenges: @challenges.to_json }
  end

  protected

  def customer_params
    params.require(:customer).permit(:email, :name, :profile_picture_url, :facebook_id)
  end

  def ping_beacon_params
    params.permit(:customer_id, :beacon_uuid)
  end

  def error_handler(e)
    render json: { success: false, message: e.message }
  end
end
