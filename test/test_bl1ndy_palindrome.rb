# frozen_string_literal: true

require 'test_helper'

class TestBl1ndyPalindrome < Minitest::Test
  def test_not_palindrome
    refute 'train'.palindrome?
  end

  def test_palindrome
    assert 'racecar'.palindrome?
  end

  def test_mixed_case_palindrome
    assert 'Racecar'.palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_numeric_not_palindrome
    refute 123_432.palindrome?
  end

  def test_numeric_palindrome
    assert 12_321.palindrome?
  end

  def test_empty_string
    refute '   '.palindrome?
    refute ''.palindrome?
  end
end
