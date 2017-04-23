namespace :db do
  desc "initialize correct counter_cache for posts user"
  task :do_counter_cache => :environment do
    User.all.size.times do |n|
      User.reset_counters(n+1, :posts)
    end
  end
end
