module Authorizer
  # @arg permissions :: hash
  # eg: {admin: true, manager: true, edit_user: false}
  def self.authorize(permissions)
    permissions[:admin] && permissions[:manager] && permissions[:edit_user]
  end
end
