# frozen_string_literal: true

require "test_helper"

class TedController < R00lz::Controller
  def think; "Whoah, man..."; end
end

class TestR00lz < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::R00lz::VERSION
  end

  def test_new_controller_action
    env = { "PATH_INFO" => "/ted/think", "QUERY_STRING" => "" }
    assert_equal 200, ::R00lz::App.new.call(env)[0]
  end
end
