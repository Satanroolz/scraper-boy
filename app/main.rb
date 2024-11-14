# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def scrape_players
    moose = URI.open('https://moose.gg/servers').read
    doc = Nokogiri::HTML(moose)
    players = doc.css('.ipsType_sectionTitle')
    binding.pry
  end
end

Scraper.new.scrape_players
