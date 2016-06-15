module Announcer
  def self.goal(excitement = 50)
    'G' + o(excitement) + 'al'
  end

  def self.o(excitement)
    excitement.times.inject('') do |memo|
      concat(memo)
    end
  end

  def self.concat(memo)
    memo += 'o'
  end
end
