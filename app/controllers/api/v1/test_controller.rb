class Api::V1::TestController < ApplicationController
    def show 
        render json: {data: 'this works'}
    end
end