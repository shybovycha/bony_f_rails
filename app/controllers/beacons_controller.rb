class BeaconsController < ApplicationController
  def index
    @beacons = Beacon.all

    respond_to do |format|
      format.json { render json: @beacons.to_json }
    end
  end

  def import_page
  end

  def import
    if params.include? :beacons_csv
      csv_file = params.delete :beacons_csv
      @beacons = CSV.parse(csv_file.read, { col_sep: ';' })
      @beacons.shift # remove header
    end

    prev_count = Beacon.count

    @beacons.each do |beacon|
      Beacon.find_or_create_by(owner: beacon[0], uuid: beacon[1])
    end

    current_count = Beacon.count
    imported = current_count - prev_count

    @message = "Imported #{imported} beacons"

    respond_to do |format|
      format.html { render :import_page }
    end
  end
end
