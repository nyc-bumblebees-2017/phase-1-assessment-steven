require_relative 'report'

class IncidentReport < Report
  attr_reader :description, :reporter
  attr_accessor :assigned_employee

  def initialize(args = {})
    @description = args.fetch(:description) { "Unknown damage" }
    @reporter = args.fetch(:reporter) { "anonymous" }
    @resolved = false
  end
end
