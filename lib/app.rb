class App
  def get_list(list = Kernel.gets.chomp)
    if list.end_with?(".txt")
      @user_list = File.open(list).read().split("\n")
    else
      @user_list = list.split(" ")
    end
    p @user_list
  end

end
