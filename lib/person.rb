class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    # @happiness = 8
    if num > 10
      @happiness = 10
    elsif num < 1
      @happiness = 0
    else
      @happiness = num
    end
  end

  def hygiene=(num)
    # @happiness = 8
    if num > 10
      @hygiene = 10
    elsif num < 1
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    # @hygiene += 4 #13
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    # hygiene
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    @person = person
    @person.happiness += 3
    self.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end


end
