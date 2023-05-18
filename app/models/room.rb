# frozen_string_literal: true

class Room < ApplicationRecord
  has_many :messages, dependent: :delete_all
  broadcasts
  after_create_commit { broadcast_append_to "rooms" }
end
