require 'calabash-android/calabash_steps'
class WebViewActions

  @car
  @user_name

  def self.set_name
    @user_name = User.get_user_name
    enter_text(query("webView css:'*'")[1], @user_name)
  end


  def self.select_car
    @car = w(volvo mercedes audi).sample
    touch(WebViewPage.select_dropdown)
    case car
      when "volvo"
        touch(WebViewPage.select_car_volvo)
      when "mercedes"
        touch(WebViewPage.select_car_mercedes)
      when "audi"
        touch(WebViewPage.select_car_audi)
      else
        "You gave me #{a} -- I have no idea what to do with that."
    end
  end


  def self.verify_name_and_car_shown
    wait_for_text(@car)
    wait_for_text(@user_name)
  end
end