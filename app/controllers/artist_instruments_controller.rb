class ArtistInstrumentsController < ApplicationController


    def new
        @artist_instrument = ArtistInstrument.new
    end

    def create
        @artist_instrument = ArtistInstrument.create(ai_params)
        redirect_to artist_path(ai_params[:artist_id])
    end



    private

    def ai_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

    def set_artist_instruments
        @artist_instruments = ArtistInstruments.find(params[:id])
    end

end
