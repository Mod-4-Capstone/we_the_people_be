# typed: true
class Social
    extend T::Sig
    attr_reader :website, :twitter, :contact_page
    def initialize(data)
        @data = data
        @website = get_info(3)
        @twitter = get_info(7)
        @contact_page = get_info(2)
    end

    sig { params(type_id: Integer).returns(T.nilable(String)) }
    def get_info(type_id)
        begin
        @data.select{|json| json[:webAddressTypeId] == type_id.to_s}.first[:webAddress]
        rescue NoMethodError
            nil
        rescue TypeError
            nil
        end
    end
end
