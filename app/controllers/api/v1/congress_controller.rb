class Api::V1::CongressController < ApplicationController
  def zip_code
    VoteSmartFacade.all_ratings_for_candidates_in_zip(params[:zipcode])
  end
  
  def zip_code_with_quiz
    quiz = {
              aclu: params[:Q1], 
              americans_for_prosperity: params[:Q2], 
              end_citizens_united: params[:Q3], 
              national_assocation_of_police: params[:Q4], 
              national_education_assocation: params[:Q5], 
              national_parks_conservation: params[:Q6], 
              norml: params[:Q7], 
              nra: params[:Q8], 
              numbers_usa: params[:Q9], 
              planned_parenthood: params[:Q10]
           }
            render json: {
              politicians: politicians, 
              summary_statistics: VoteSmartFacade.zip_with_quiz(params[:zipcode], quiz)
            }   
  end
          
  def state_with_quiz 
    quiz = {
              aclu: params[:Q1], 
              americans_for_prosperity: params[:Q2], 
              end_citizens_united: params[:Q3], 
              national_assocation_of_police: params[:Q4], 
              national_education_assocation: params[:Q5], 
              national_parks_conservation: params[:Q6], 
              norml: params[:Q7], 
              nra: params[:Q8], 
              numbers_usa: params[:Q9], 
              planned_parenthood: params[:Q10]
            }
            politicians = VoteSmartFacade.state_with_quiz('CO', quiz)
            render json: {
              politicians: politicians, 
              summary_statistics: VoteSmartFacade.summary_statistics(politicians, quiz)
            }
    end
end