class StaticPagesController < ApplicationController
  require "#{Rails.root}/lib/connection.rb"
  #include connection

  def runmyscript
  	Net::SSH.start( HOST, USER, :password => PASS ) do| ssh |
    result = ssh.exec! 'ls'
    puts result
    end
  end
end
