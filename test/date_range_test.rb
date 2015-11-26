require 'test_helper'

class DateRangeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DateRange::VERSION
  end

  def date_range
    DateRange.new(Date.new(2010), Date.new(2015))
  end

  def date_range2
    DateRange.new(Date.new(2000), Date.new(2012))
  end

  def date_range3
    DateRange.new(Date.new(1986), Date.new(1996))
  end

  def date_range4
    DateRange.new(Date.new(2011), Date.new(2013))
  end

  def test_include
    assert date_range.include?(Date.new(2012))
    refute date_range.include?(Date.new(1066))
  end

  def test_include_with_another_date_range
    assert date_range.include?(date_range4)
    refute date_range.include?(date_range3)
  end

  def test_overlaps
    assert date_range.overlaps?(date_range2)
    refute date_range.overlaps?(date_range3)
  end

  def test_passing_non_date_range_to_overlaps
    assert_nil date_range.overlaps?("")
  end

  def test_overlap
    overlap = date_range.overlap(date_range2)
    assert_equal Date.new(2010), overlap.start_date
    assert_equal Date.new(2012), overlap.end_date
  end

  def test_overlap_returns_nil_for_non_overlaps
    overlap = date_range.overlap(date_range3)
    assert_nil overlap
  end
end
