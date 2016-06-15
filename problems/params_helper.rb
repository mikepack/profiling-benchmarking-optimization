require 'ostruct'

module ParamsHelper
  # @arg params :: hash
  #
  # params[:stuff] #=> 'ok'
  # better_params = ParamHelper.objectify(params)
  # better_params.stuff #=> 'ok'
  def self.objectify(params)
    OpenStruct.new(params)
  end
end
