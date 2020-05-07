# frozen_string_literal: true

class Movie < ApplicationRecord
  validates :title, presence: true

  has_many :movie_person
  has_many :people, through: :movie_person

  has_one_attached :cover
end
