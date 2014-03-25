require 'spec_helper'

describe Person do
  let(:person){ Person.new }

  describe 'telephone_number' do
    before do
      person.area_code = '001'
      person.number = '0123456789'
    end
    subject{ person.telephone_number }
    it{ should == '(001) 0123456789'}
  end
end
