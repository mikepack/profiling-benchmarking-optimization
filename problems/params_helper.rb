require 'ostruct'

module ParamsHelper
  # @arg params :: hash
  #
  # params[:stuff] #=> 'ok'
  # better_params = ParamHelper.betterize(params)
  # better_params.stuff #=> 'ok'
  def self.betterize(params)
    OpenStruct.new(params)
  end
end
