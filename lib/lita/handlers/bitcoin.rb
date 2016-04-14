module Lita
  module Handlers
    class Bitcoin < Handler
      URL = 'https://blockchain.info/ticker'

      route(/bitcoin|btc/i, :reply, command: true, help: { "bitcoin" => "Returns the current BTC/USD exchange rate." })

      def reply(response)
        response.reply "1 BTC is currently worth #{rate}"
      end

      private

        def rate
          if data
            format_rate(data)
          else
            "UNKNOWN"
          end
        end

        def data
          MultiJson.load(ticker_response.body)
        end

        def format_rate(data)
          "$#{data['USD']['15m']} USD"
        end

        def ticker_response
          http.get(URL)
        end

      Lita.register_handler(self)
    end
  end
end
