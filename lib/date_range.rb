require 'date_range/version'
require 'date'

class DateRange
  attr_reader :start_date
  attr_reader :end_date

  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
  end

  def include?(other)
    if other.is_a?(DateRange)
      include?(other.start_date) && include?(other.end_date)
    else
      start_date <= other && end_date >= other
    end
  end

  def overlaps?(other)
    return unless other.is_a?(DateRange)
    other.include?(start_date) || other.include?(end_date) || include?(other)
  end

  def overlap(other)
    return unless overlaps?(other)
    dates = [start_date, end_date, other.start_date, other.end_date].sort[1, 2]
    DateRange.new(*dates)
  end
end
