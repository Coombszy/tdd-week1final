require 'c1'

describe AnimalGreeter do
    it 'responds to greet' do
        expect(subject).to respond_to(:greet)
    end
    it 'returns users name' do
        name = "Liam"
        expect(subject.greet("Cow", name)).to include(name)
    end
    describe 'correct animal from #greet' do
        it 'cow' do
            animal = "Cow"
            expect(subject.greet(animal, "Liam")).to include("Moo")
        end
        it 'chicken' do
            animal = "cHiCkeN"
            expect(subject.greet(animal, "Liam")).to include("Squawk")
        end
        it 'alien' do
            animal = "Alien"
            expect(subject.greet(animal, "Liam")).to include("Errr")
        end
        it 'horse' do
            animal = "Horse"
            expect(subject.greet(animal, "Liam")).to include("Neeey")
        end
        
    end
end