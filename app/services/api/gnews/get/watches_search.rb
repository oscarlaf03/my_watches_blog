module Api
  module Gnews
    module Get
      class WatchesSearch < Base
        def call
          url = "#{@base_url}&q=watches&sortby=publishedAt"
          req = HTTParty.get(url, headers: @default_headers)
          response = req.parsed_response.deep_symbolize_keys
          content = parsed_posts(response)
          {status: req.code, content: content, success:req.success?}
        end
        def parsed_posts(response)
          response[:articles].map do |article|
            {
              title: article[:title],
              preview: article[:description].truncate(46, sperator: ' '),
              url: article[:url],
              cover: article[:image],
              source: article[:source][:name],
              created_at: article[:publishedAt]
            }
          end
        end
      end
    end
  end
end
