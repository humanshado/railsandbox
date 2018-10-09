class Population < ApplicationRecord

  def self.search(search)
    if search
      where('country_name LIKE ?', "%#{search}%")
    else
      all
    end
  end

  # def self.upload(file)
  #   CSV.foreach(file.path, headers: true) do |row|
  #     Population.create!(row.to_hash)
  #   end
  # end

end
