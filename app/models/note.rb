# frozen_string_literal: true

class Note < ApplicationRecord
  validates :title, :body, presence: true
  has_many :comments
end
