class MoreHouses < ActiveRecord::Migration[5.0]
  def change
    o = Organization.where(name: 'AOII').first
    l = Location.new
    l.name = 'Alpha Sigma'
    l.save

    o.locations.push l
    o.save
  end
end
