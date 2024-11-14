# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def scrape_players
    doc = Nokogiri::HTML(URI.open('https://moose.gg/servers').read)
    servers = doc.css('#contentArea_ssm')

    servers.each do |server|
      puts server.text.strip
    end
  end
end

Scraper.new.scrape_players
