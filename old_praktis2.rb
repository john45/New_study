module Service
  class Deliver
    def sms; end

    def email; end
  end
end

module Notification
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def log
      puts '*-----------------------*'
      File.readlines("#{name}.log").each { |line| puts line }
      puts '*-----------------------*'
    end
  end

  def add_to_log(recepient)
    File.open("#{recepient}.log", 'a') do |f|
      f.puts "The #{self.class.name} not send #{recepient} have wrong format"
    end
    puts "The #{self.class.name} not send #{recepient} have wrong format"
  end

  def send_message(recepient)
    puts "Sending #{recepient} to #{self.class.name}"
  end
end

class Email
  include Notification

  def send_message(obj)
    raise 'wrong email format' unless /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i =~ obj
  rescue
    add_to_log(obj)
  else
    super
  end

  def self.log
    super
  end
end

class Sms
  include Notification

  def send_message(obj)
    raise 'wrong phone number' unless /\A\+380\d{9}\z/ =~ obj.to_s
  rescue
    add_to_log(obj)
  else
    super
  end

  def self.log
    super
  end
end

send1 = Email.new.send_message('john45@mail.ru')
Email.log

send2 = Sms.new.send_message('+380633220087')
Sms.log
