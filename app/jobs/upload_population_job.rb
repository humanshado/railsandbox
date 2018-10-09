class UploadPopulationJob < ApplicationJob
  queue_as :default
  # rescue_from(ErrorLoadingSite) do
  #   retry_job wait: 5.minutes, queue: :default
  # end

  def perform(file)
    # Do something later
    CSV.foreach(file.path, headers: true) do |row|
      Population.create!(row.to_hash)
    end
  end
end
