# frozen_string_literal: true

class Note < ApplicationRecord
  validates :title, :body, presence: true
end
