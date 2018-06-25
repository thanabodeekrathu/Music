require 'rails_helper'

describe 'instance of class', :type => :request do

  # HW 2.3
  it 'check length of json ' do
    get '/song/json'
    expect(assigns[:songs].length).to eq(3)
  end

  it 'check instance of class Song ' do
    get '/song/json'

    expect(assigns[:songs][0]).to be_instance_of(Song)
    expect(assigns[:songs][1]).to be_instance_of(Song)
    expect(assigns[:songs][2]).to be_instance_of(Song)
  end
end
