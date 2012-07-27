require 'csv'

desc "Import teams from csv file"
task :import => [:environment] do

  file = 'db/rushing-stats.csv'

  CSV.foreach(file) do |row|
    s = RushingStats.create ({
      :name => row[0],
      :rushing_att => row[1],
      :rushing_yards => row[2],
      :rushing_att_avg => row[3],
      :rushing_long => row[4],
      :rushing_td => row[5]
    })
end
  end