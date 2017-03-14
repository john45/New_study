module Notification
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def log(path)
      puts '*-----------------------*'
      File.readlines("#{path}.log").each { |line| puts line }
      puts '*-----------------------*'
    end
  end

  def add_to_log(recepient)
    File.open("#{recepient}.log", 'a') do |f|
      f.puts "The #{recepient} not send #{yield if block_given?} have wrong format"
    end
    puts "The #{recepient} not send #{yield if block_given?} have wrong format"
  end

  def send_message(recepient)
    puts "Sending #{yield if block_given?} to #{recepient}"
  end
end


class Email
  include Notification

  def send_message(obj)
    begin
      raise 'wrong email format' unless /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i =~ obj
    rescue
      add_to_log(self.class.name.to_s) { obj }
    else
      super(self.class.name.to_s) { obj }
    end
  end

  def Email.log
    super(Email.name.to_s)
  end
end

class Sms
  include Notification

  def send_message(obj)
    begin
      raise 'wrong phone number' unless /\A\+380\d{9}\z/ =~ obj.to_s
    rescue
      add_to_log(self.class.name.to_s) { obj }
    else
      super(self.class.name.to_s) { obj }
    end
  end

  def Sms.log
    super(Sms.name.to_s)
  end
end



send1 = Email.new.send_message('john45@mail.ru')
Email.log

send2 = Sms.new.send_message('+380633220087')
Sms.log