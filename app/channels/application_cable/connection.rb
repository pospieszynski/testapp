module ApplicationCable
  class Connection < ActionCable::Connection::Base
    def connect
      p "Current shard in ApplicationCable::Connection#connect"
      p AnimalsRecord.current_shard
    end
  end
end
