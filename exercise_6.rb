def format_date(date)
  return date if !date.match?(/\-/)
  splits = date.split(/\-/)
  [splits.last, splits[1], splits.first].join(".")
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)