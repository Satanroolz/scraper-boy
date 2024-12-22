# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def scrape_players
    doc = Nokogiri::HTML(URI.open('https://moose.gg/servers').read)
    players = doc.css('p')[17]

    puts "There are currently #{ players.text } players online"
  end
end

Scraper.new.scrape_players
