class Bike

  attr_reader :working

  def working?
    @working = true
  end

  def broken?
    @broken
  end

  def report_broken
    @broken = true
  end
  
end
