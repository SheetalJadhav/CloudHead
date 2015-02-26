#!/usr/bin/env ruby
 require 'rubygems'
 require 'net/ssh'


HOST = '172.22.51.60'
USER = 'root'
PASS = 'Pa55w0rd'

Net::SSH.start( HOST, USER, :password => PASS ) do| ssh |
   result = ssh.exec! 'ls'
   puts result
end