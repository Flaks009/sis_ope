# frozen_string_literal: true

# == Schema Information
#
# Table name:candidatos
#  cpf           :string
#  nome          :string
#  created_at    :datetime not null
#  updated_at    :datetime not null
#  data_nasc     :date
#  cep           :string
#  logradouro    :string
#  numero        :string
#  bairro        :string
#  cidade        :string
#  uf            :string
#  user_id       :integer
#

require 'test_helper'

class CandidatoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
