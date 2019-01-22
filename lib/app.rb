class App
  def parse_input(list)
    fail if validate(list)
    p "the list passed parse_input: #{list}"
    if list.end_with?(".txt")
      @user_list = File.open(list).read.split("\n")
    else
      @user_list = list.split(" ")
    end
  end

  private

  def validate list
    !list.is_a?(String)
  end
end
