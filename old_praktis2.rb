module Notification
  def self.included(base)
    base.extend(ClassMethods)
  end

  def log(path)
    File.open("#{path}.txt", 'w+') do |f|
      f.puts yield if block_given?
    end
  end


  def add_to_log(recepient)
  end

  def send_message(type, recepient)
    puts self.log(type){ "#{type} successful send to #{recepient}" }
  end
end


class Email
  include Notification

  def send_message(obj)
    begin
      raise 'wrong email format' unless /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i =~ obj
    rescue
      Email.log(self.class.name.to_s) {'wrong email format'}
    else
      super(self.class.name.to_s, obj)
    end
  end
end


class Sms
  include Notification

  def send_message(obj)
    begin
      raise 'wrong phone number' unless /\A\+380\d{9}/ =~ obj
    rescue
      self.log(self.class.name) {'wrong phone number'}
    else
      super(self.class.name, obj)
    end
  end
end



send = Email.new.send_message('john45@mail.ru')

send = Sms.new.send_message('+380633220087')