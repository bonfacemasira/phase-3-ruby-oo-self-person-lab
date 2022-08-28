# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @name = name
    end
    def happiness=(num)
        if num > 10
            @happiness = 10 
        elsif num < 0
            @happiness = 0
        else
            @happiness= num
        end           
    end

    def hygiene=(num)
       if num > 10
        @hygiene = 10
       elsif num < 0
        @hygiene = 0
       else
        @hygiene = num
       end     
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        if hygiene <= 6
            self.hygiene += 4
        else
            self.hygiene += 4 
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when 'politics'
            [self, friend].each { |person| person.happiness -=2}
            return "blah blah partisan blah lobbyist"
        when 'weather'
            [self, friend].each { |person| person.happiness +=1}
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end