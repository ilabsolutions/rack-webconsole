# encoding: utf-8
module Rack
  class Webconsole
    # {AssetsInjector} is a Rack middleware responsible for injecting the webconsole code asynchronously
    #
    class AssetsInjector
      include Webconsole::AssetHelpers

      # Honor the Rack contract by saving the passed Rack application in an ivar.
      #
      # @param [Rack::Application] app the previous Rack application in the
      #   middleware chain.
      def initialize(app)
        @app = app
      end

      
      # @param [Hash] env a Rack request environment.
      def call(env)

        #status, headers, response = (@app.call(env) rescue [200, {}, ""])

        #req = Rack::Request.new(env)
        #params = req.params

        #return [status, headers, response] unless check_legitimate(req)

        response_body = MultiJson.encode({:value => "#{code(env)}"})
        headers = {}
        headers['Content-Type'] = 'application/json'
        headers['Content-Length'] = response_body.bytesize.to_s
        [200, headers, [response_body]]
      end

      # Returns a string with all the HTML, CSS and JavaScript code needed for
      # the view.
      #
      # It puts the security token inside the JavaScript to make AJAX calls
      # secure.
      #
      # @return [String] the injectable code.
      def code(env)
        html_code <<
          css_code <<
          render(js_code,
                 :TOKEN => Webconsole::Repl.token,
                 :KEY_CODE => Webconsole.key_code,
                 :CONTEXT => env['SCRIPT_NAME'] || "")
      end

    end
  end
end
