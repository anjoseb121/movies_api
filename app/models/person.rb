# frozen_string_literal: true

class Person < ApplicationRecord
  validates :name, presence: true

  has_one_attached :photo
  has_many :movie_person
  has_many :movies, through: :movie_person

end
