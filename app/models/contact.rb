class Contact < ActiveRecord::Base
  def self.all_cached
    Rails.cache.fetch('Contact.all') { all }
  end
end
