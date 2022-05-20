class Api::V1::CongressController < ApplicationController
  def zipcode
    VoteSmartFacade.all_ratings_for_candidates_in_zip(params[:zipcode])
  end

  def zipcode_with_quiz
           politicians = VoteSmartFacade.zip_with_quiz(params[:zipcode], parse_quiz(params))
           render json: {
             politicians: PoliticianSerializer.new(politicians), 
             summary_statistics: SummaryStatisticsSerializer.new(VoteSmartFacade.summary_statistics(politicians, parse_quiz(params))
           }
    end

  def state_with_quiz
    politicians = VoteSmartFacade.state_with_quiz(params[:state], parse_quiz(params[:congress]))
    render json: {
                    politicians: PoliticianSerializer.new(politicians), 
                    summary_statistics: SummaryStatisticsSerializer.new(VoteSmartFacade.summary_statistics(politicians, parse_quiz(params[:congress])))
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