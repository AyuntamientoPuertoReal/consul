namespace :poll do
  desc "Generate slugs polls"
  task generate_slugs: :environment do
    ApplicationLogger.new.info "Generating poll slugs"

    Poll.find_each do |poll|
      poll.update_columns(slug: poll.generate_slug, updated_at: Time.current) if poll.generate_slug?
    end
  end
end

namespace :polls do
  desc "Adds created_at and updated_at values to existing polls"
  task initialize_timestamps: :environment do
    Poll.update_all(created_at: Time.current, updated_at: Time.current)
  end
end
