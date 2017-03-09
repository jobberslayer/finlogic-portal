string = "      t.string :keyx\n"\
"      t.decimal :amountx, precision: 10, scale: 2\n"\
"      t.integer :colx\n"

(1..300).each do |n|
  puts string.gsub('x', n.to_s)
end
