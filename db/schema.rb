# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_505_003_709) do
  create_table 'dealers', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'movie_people', force: :cascade do |t|
    t.integer 'person_id', null: false
    t.integer 'movie_id', null: false
    t.string 'role', default: 'actor'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['movie_id'], name: 'index_movie_people_on_movie_id'
    t.index ['person_id'], name: 'index_movie_people_on_person_id'
  end

  create_table 'movies', force: :cascade do |t|
    t.string 'title'
    t.date 'year'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'people', force: :cascade do |t|
    t.string 'identification'
    t.string 'name'
    t.string 'last_name'
    t.string 'nickname'
    t.string 'phone'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'snacks', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.integer 'dealer_id'
    t.index ['dealer_id'], name: 'index_snacks_on_dealer_id'
  end

  add_foreign_key 'movie_people', 'movies'
  add_foreign_key 'movie_people', 'people'
  add_foreign_key 'snacks', 'dealers'
end
