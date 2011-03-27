require 'spec_helper'

describe 'gmaps.rb' do
  include Gmaps
  context 'country search' do
    it 'should return the correct country' do
      Gmaps.country('London').should == 'United Kingdom'
    end
  
    it 'should set the address to unknown country if address not found' do
      Gmaps.country('faowjiefoijawe faweofmn awoiejaw').should == 'unknown'
    end
  end
  
  context 'distance search' do
    it 'should return a distance greater than 0' do
      Gmaps.distance('New York', 'Boston').should > 0
    end
  end

  context 'city_search' do
    it 'should return the correct city' do
      Gmaps.city('Barcelona, Paradis 3, 2 1').should == 'Barcelona'
      Gmaps.city('Barcelona').should == 'Barcelona'
    end
  end

  context 'city_search' do
    it 'should route distance to country' do
      countries = Gmaps.countries('Lisbon', 'Paris')
      countries[0][0].should == 'Portugal'
      countries[0][1].should > 5000
      countries[1][0].should == 'Spain'
      countries[1][1].should > 5000
      countries[2][0].should == 'France'
      countries[2][1].should > 5000
    end
  end
end
