# frozen_string_literal: true

require_relative "r00lz/version"

module R00lz
  class Error < StandardError; end

  class App
    def call(env) # Like proc#call
      [200,
      { 'Content-Type' => 'text/html' },
      ["Hello from R00lz!"]]
    end
  end
end
