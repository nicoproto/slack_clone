class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
    # stream for chatroom_1
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
