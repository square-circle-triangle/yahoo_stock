module Yahoo
  class Stock
    attr_reader :code
    
    def initialize(stock_code)
      @code = stock_code
    end

    def last_trade_price
      sprintf "%0.2f", get_info.at(".yfnc_tabledata1").inner_text.to_f
    end
    
    def last_trade_time_new
      # 'close of trade' if time not present
      t = Time.parse last_trade_time
      if [t.hour, t.min, t.sec] == [0,0,0]
        'close of trade'
      else
        "#{t.hour}:#{t.min}"
      end
    end
    
    def last_trade_date
      t = Time.parse last_trade_time
      t.strftime "%d %B %Y"
    end
    
    # Deprecated methods
    def last_trade
      get_info.at(".yfnc_tabledata1").inner_text
    end

    def last_trade_time
      get_info.search(".yfnc_tabledata1")[1].inner_text
    end
    
    private
    def get_info
      @get_info ||= Query.new(BASE_URI + @code).execute
    end
  end
end
