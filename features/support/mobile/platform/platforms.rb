module Mobile
  module Platform
    def android(&block)
      yield block if ENV['PLATFORM'] == 'android'
    end

    def ios(&block)
      yield block if ENV['PLATFORM'] == 'ios'
    end

    def web(&block)
      puts 'executing web block'
      yield block if ENV['PLATFORM'] == 'web'
    end
  end
end