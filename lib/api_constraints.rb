class ApiConstraints
  attr_reader :version

    def initialize(options)
      @version = options[:version]
      @default = options[:default]
    end

    def matches?(request)
      @default || req.headers['Accept'].include?("application/vnd.example.v#{@version}")
    end
end