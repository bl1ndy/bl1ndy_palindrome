# frozen_string_literal: true

require_relative 'bl1ndy_palindrome/version'

module Bl1ndyPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    return false if processed_content.empty?

    processed_content == processed_content.reverse
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    to_s.scan(/[a-z]|\d/i).join.downcase
  end
end

class String
  include Bl1ndyPalindrome
end

class Integer
  include Bl1ndyPalindrome
end
