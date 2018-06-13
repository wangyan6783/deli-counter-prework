def line(list)
  if list.size != 0
    message = "The line is currently: "
    list.each_with_index {|name, i| message += "#{i+1}. #{name} "}
    return message.chop
  else
    "The line is currently empty."
  end
end

def take_a_number(list, name)
  list << name
  position = list.size
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(list)
  if list.size != 0
    name = list.shift
    puts "Currently serving #{name}."
  end
end


  describe "#now_serving" do
    context "there are no people in line" do
      it "should say that the line is empty" do
        expect($stdout).to receive(:puts).with("There is nobody waiting to be served!")
        now_serving(katz_deli)
      end
    end

    context "there are people in line" do
      it "should serve the first person in line and remove them from the queue" do
        expect($stdout).to receive(:puts).with("Currently serving Logan.")
        now_serving(other_deli)
        expect(other_deli).to eq(%w(Avi Spencer))
      end
    end
  end

end