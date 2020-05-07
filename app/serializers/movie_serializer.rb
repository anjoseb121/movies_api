class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :actors, :directors

  # def cover_url
  #   return '' if self.object.cover.nil?

  #   Rails.application.routes.url_helpers.rails_blob_path(self.object.cover)
  # end

  def actors
    movie = self.object

    movie.movie_person.actors.map{|movie_p|
      movie_p.person.name
    }
  end

  def directors
    movie = self.object

    movie.movie_person.where(role: 'director').map{|movie_p|
      movie_p.person.name
    }
  end
end
