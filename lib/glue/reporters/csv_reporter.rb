require 'glue/finding'
require 'glue/reporters/base_reporter'

class Glue::CSVReporter < Glue::BaseReporter

  Glue::Reporters.add self

  attr_accessor :name, :format

  def initialize()
    @name = "CSVReporter"
    @format = :to_csv
  end

  def out(finding)
    finding.to_csv
  end

end
