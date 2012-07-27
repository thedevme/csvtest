class RushingStats < ActiveRecord::Base
  attr_accessible :name, :rushing_att, :rushing_att_avg, :rushing_long, :rushing_td, :rushing_yards
end
