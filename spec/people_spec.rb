require_relative "../models/people"

describe "People" do
  before :each do 
    @people = People.new("Queen", 22)
  end

  it 'People class should create an instance' do 
    peopel = People.new("Queen", 22)
    expect(peopel).to be_instance_of(People)
  end
end
