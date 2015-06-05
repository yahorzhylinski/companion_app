class ItinerariesController < ApplicationController

  ITINERARIES_PER_PAGE = 10

  def find
    @itineraries = Itinerary.where(from_id: params[:itineraries][:from], to: params[:itineraries][:to])
        .paginate(page: params[:page], per_page: ITINERARIES_PER_PAGE)
  end



end