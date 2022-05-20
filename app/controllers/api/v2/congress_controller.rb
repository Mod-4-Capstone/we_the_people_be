class Api::V2::CongressController < ApplicationController

  def zipcode_with_quiz
    representatives = Representative.from_zip(params[:zipcode])
    quiz = parse_quiz(params)
    render json: {
                    politicians: RepresentativeSerializer.new(representatives, {params: quiz}),
                    summary_statistics: SummaryStatisticsSerializer.new(VoteSmartFacade.summary_statistics(representatives, quiz))
                  }
  end

  def state_with_quiz
    representatives = Representative.from_state(params[:state])
    quiz = parse_quiz(params)
    render json: {
                    politicians: RepresentativeSerializer.new(representatives, {params: quiz}),
                    summary_statistics: SummaryStatisticsSerializer.new(VoteSmartFacade.summary_statistics(representatives, quiz))
                  }
  end

  private 
  
  def parse_quiz(quiz)
    {
      aclu: quiz[:aclu].to_i,
      americans_for_prosperity: quiz[:americans_for_prosperity].to_i,
      end_citizens_united: quiz[:end_citizens_united].to_i,
      national_association_of_police: quiz[:national_association_of_police].to_i,
      national_education_association: quiz[:national_education_association].to_i,
      national_parks_conservation: quiz[:national_parks_conservation].to_i,
      norml: quiz[:norml].to_i,
      nra: quiz[:nra].to_i,
      numbers_usa: quiz[:numbers_usa].to_i,
      planned_parenthood: quiz[:planned_parenthood].to_i
    }
  end
  
end