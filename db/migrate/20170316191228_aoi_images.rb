class AoiImages < ActiveRecord::Migration[5.0]
  def change
    o = Organization.by_name('aoii')
    o.icon = 'Alpha-Omicron-Pi-Rose.png'
    o.logo = 'aoii_logo.png'
    o.save
  end
end
