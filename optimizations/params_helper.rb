module OptimizedParamsHelper
  Schema = Struct.new(:user_id, :deep_link)

  # @arg params :: hash
  def self.objectify(params)
    Schema.new(params[:user_id], params[:deep_link])
  end
end
