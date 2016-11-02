class ApiConstraints
  attr_reader :version

    def initialize(options)
      @version = options.fetch(:version)
      @default = options.fetch(:default)
    end

    def matches?(request)
      @default || req.headers['Accept'].include?("application/vnd.example.v#{@version}")
    end
end