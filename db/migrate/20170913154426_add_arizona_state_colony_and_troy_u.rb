class AddArizonaStateColonyAndTroyU < ActiveRecord::Migration[5.0]
  def change
    o = Organization.by_name('aoii')
    l1 = Location.new
    l1.name = 'Troy University'
    l1.save

    l2 = Location.new
    l2.name = 'Arizona State Colony'
    l2.save

    o.locations.push l1
    o.locations.push l2
    o.save
  end
end
