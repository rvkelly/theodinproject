def  stock_picker(stocks)
  trade_on = []
  buy_on = stocks.slice(0..7).min { |first, second| first <=> second }
  sell_on = stocks.slice(stocks.index(buy_on)..7).max { |first, second| first <=> second }
  trade_on << stocks.index(buy_on) << stocks.index(sell_on)
end
