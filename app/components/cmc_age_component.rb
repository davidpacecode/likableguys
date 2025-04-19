class CmcAgeComponent < ViewComponent::Base
  attr_reader :cmc_birthday

  def initialize
    @cmc_birthday = Date.new(2012, 1, 21)
  end

  def age
    today = Date.today

    age = today.year - @cmc_birthday.year

    if today.month < @cmc_birthday.month || (today.month == @cmc_birthday.month && today.day < @cmc_birthday.day)
      age -= 1
    end

    age
  end
end
