#frozen_string_literal: true

# == Schema Information
#
#Table name: users
#
# email                   :string   not null
# encrypted_password      :string   not null
# reset_password_token    :string
# reset_password_sent_at  :datetime
# remember_created_at     :datetime
# created_at              :datetime not null
# updated_at              :datetime not null
# cpf                     :string
# tipoUser                :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
