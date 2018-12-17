module ApplicationHelper

  def custom_bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error'   if type == 'alert'
      text = "<script>new Noty({ type: '#{type}', text: '#{message}' }).show();</script>"
      flash_messages << text.html_safe if message
    end
    flash_messages.join("\n").html_safe
  end

  def links_partial_path
    if user_signed_in?
    else
    end
  end

end
