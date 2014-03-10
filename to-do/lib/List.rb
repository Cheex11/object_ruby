class List

  def initialize(name)
    @name = name
    @list =[]
  end

  def list
    @list
  end

  def name
    @name
  end

  def add_task(description)
    a = Task.new(description)
    self.list << a
  end

end
