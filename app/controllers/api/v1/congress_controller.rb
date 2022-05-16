class Api::V1::CongressController < ApplicationController
  def zip_code
    render json: {data: 'zip code!'}
  end

  def state
    render json: {data: 'state'}
  end
end