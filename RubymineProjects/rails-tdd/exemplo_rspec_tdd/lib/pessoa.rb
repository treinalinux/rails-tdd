class Pessoa
  attr_accessor :nome, :idade
  attr_reader :status

  def happy!
    @status = 'Very Happy!'
  end

  def unhappy!
    @status = 'Very Unhappy!'
  end

  def smiling!
    @status = 'Very Smiling!'
  end
end