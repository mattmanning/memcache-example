class TestController < ApplicationController
  def index
    20.times do |i|
      Rails.cache.write i, random_string(10)
    end

    @pairs = (0..19).inject([]) do |pairs, key|
      pairs << [key, Rails.cache.read(key)]
    end
  end

  private

  def random_string(length)
    (1..length).inject('') {|str, i| str += (65 + rand(26)).chr}
  end
end
