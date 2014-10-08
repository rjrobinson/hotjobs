class SampleWorker
  # @queue = :the_que

  def self.perform sample.id
    sample = Sample.find(sample.id)
    # INSERT CODE
  end

end
