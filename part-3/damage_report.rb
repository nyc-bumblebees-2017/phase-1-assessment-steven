require_relative 'report'

class DamageReport < Report 
  attr_reader :description
  attr_accessor :assigned_employee

  def initialize(args = {})
    @description = args.fetch(:description) { "Unknown damage" }
    @resolved = false
  end
end
