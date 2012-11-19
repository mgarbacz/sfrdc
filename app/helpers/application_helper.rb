module ApplicationHelper
  # Returns the Twitter Bootstrap class for a particular message level
  def get_msg_class(msg_level)
    case msg_level
      when :notice  then 'alert-success'
      when :error   then 'alert-error'
      when :alert   then 'alert-info'
    end
  end
end
