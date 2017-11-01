module RSocial
  class Utils
    def human_to_number(human)
      result = human.gsub(/likes/,"")
      if result.upcase.include? "K"
        result = result.upcase.gsub("K","").gsub(/\D/,"").to_f*1000
      elsif result.upcase.include? "M"
        result = result.upcase.gsub("M","").gsub(/\D/,"").to_f*1000000
      else
        result = result.gsub(/\D/,"")
      end
      result.to_i
    end
    alias_method :h2n, :human_to_number
  end
end
