module MoreOptimizedAnnouncer
  def self.goal(excitement = 50)
    'G' + o(excitement) + 'al'
  end

  private

  def self.o(excitement)
    'o' * excitement
  end
end
