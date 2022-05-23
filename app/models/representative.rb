class Representative < ApplicationRecord
    has_one :biography
    has_one :rating
    has_one :representative_social

    def self.from_state(state)
        joins(:biography).where(biographies: {state: state})
    end
    def self.from_zip(zip)
        zipcode_ids = VoteSmartService.candidates_by_zip(zip).map{|i| i[:candidateId]}.uniq
        Representative.where(votesmart_id: zipcode_ids)
    end

    def user_comparison(quiz)
        {
            planned_parenthood: self.rating.planned_parenthood.nil? ? 0 : (quiz[:planned_parenthood] - self.rating.planned_parenthood.to_i ).abs.round(1),
            americans_for_prosperity: self.rating.americans_for_prosperity.nil? ? 0 : (quiz[:americans_for_prosperity] - self.rating.americans_for_prosperity.to_i ).abs.round(1),
            aclu: self.rating.aclu.nil? ? 0 : (quiz[:aclu] - self.rating.aclu.to_i ).abs.round(1),
            end_citizens_united: self.rating.end_citizens_united.nil? ? 0 : (quiz[:end_citizens_united] - self.rating.end_citizens_united.to_i ).abs.round(1),
            national_education_association: self.rating.national_education_association.nil? ? 0 : (quiz[:national_education_association] - self.rating.national_education_association.to_i ).abs.round(1),
            national_association_of_police: self.rating.national_association_of_police.nil? ? 0 : (quiz[:national_association_of_police] - self.rating.national_association_of_police.to_i ).abs.round(1),
            national_education_association: self.rating.national_education_association.nil? ? 0 : (quiz[:national_education_association] - self.rating.national_education_association.to_i ).abs.round(1),
            national_parks_conservation: self.rating.national_parks_conservation.nil? ? 0 : (quiz[:national_parks_conservation] - self.rating.national_parks_conservation.to_i ).abs.round(1),
            norml: self.rating.norml.nil? ? 0 : (quiz[:norml] - self.rating.norml.to_i ).abs.round(1),
            numbers_usa: self.rating.numbers_usa.nil? ? 0 : (quiz[:numbers_usa] - self.rating.numbers_usa.to_i ).abs.round(1)
        }
    end
    def compatibility(quiz)
        user_score = self.user_comparison(quiz).values.sum
        politician_score = self.politician_score
        ((politician_score.to_f - user_score)/politician_score).abs.round(3)*100
    end
    def politician_score 
        self.rating.aclu.to_i + self.rating.americans_for_prosperity.to_i + self.rating.end_citizens_united.to_i + self.rating.national_association_of_police.to_i + self.rating.national_association_of_police.to_i + self.rating.national_education_association.to_i+ self.rating.norml.to_i + self.rating.nra.to_i+ self.rating.numbers_usa.to_i + self.rating.planned_parenthood.to_i
    end
end