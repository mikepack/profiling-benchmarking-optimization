module OptimizedAuthorizer
  # @arg permissions :: binary int
  # eg: 110
  def self.authorize(permissions)
    0b110 & 0b111 == 0b111
  end
end
