namespace :sample do
  desc 'sample output log'
  task :output_log => :environment do
    File.open("#{Rails.root}/log/output.log", 'a') do |f|
      f.puts "This is written from sample:output_log task at #{Time.now}"
    end
  end
end
