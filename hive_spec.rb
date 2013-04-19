require_relative 'hive'

describe Hive do

  context '#get_x' do
    it {Hive.get_x(45).should eq(-4)}
    it {Hive.get_x(2).should eq(0)}
    it {Hive.get_x(39).should eq(2)}
    it {Hive.get_x(62).should eq(4)}
    it {Hive.get_x(21).should eq(1)}
    it {Hive.get_x(48).should eq(-4)}
  end

  context '#get_y' do
    it {Hive.get_y(66).should eq(-5)}
    it {Hive.get_y(34).should eq(2)}
    it {Hive.get_y(57).should eq(2)}
    it {Hive.get_y(25).should eq(-1)}
    it {Hive.get_y(3).should eq(0)}
    it {Hive.get_y(43).should eq(-3)}
  end

  context '#ring_number' do
    it {Hive.ring_number(6).should eq(1)}
    it {Hive.ring_number(70).should eq(5)}
  end

  context '#anchor_cell' do
    it {Hive.anchor_cell(1).should eq(2)}
    it {Hive.anchor_cell(5).should eq(62)}
  end

  context '#anchor_coords' do
    it {Hive.anchor_coords(1).should eq([0, -1])}
    it {Hive.anchor_coords(4).should eq([3, -2])}
  end

  context '#coords' do
    it {Hive.coords(1).should  eq([0, 0])}
    it {Hive.coords(57).should eq([4, 2])}
    it {Hive.coords(67).should  eq([-1, -4])}
  end

  context '#x_travel' do
    it {Hive.x_travel(53, 66).should eq(0)}
    it {Hive.x_travel(70, 58).should eq(8)}
    it {Hive.x_travel(62, 70).should eq(8)}
  end

  context '#y_travel' do
    it {Hive.y_travel(53, 66).should eq(9)}
    it {Hive.y_travel(70, 58).should eq(4)}
    it {Hive.y_travel(62, 70).should eq(0)}
  end

  context '#len_shortest_path' do
    it {Hive.len_shortest_path(53, 66).should eq(9)}
    it {Hive.len_shortest_path(70, 58).should eq(8)}
    it {Hive.len_shortest_path(62, 70).should eq(8)}
    it {Hive.len_shortest_path(66, 53).should eq(9)}
    it {Hive.len_shortest_path(39, 63).should eq(1)}
    it {Hive.len_shortest_path(26, 11).should eq(1)}
  end

  context 'Only 10 billion cells? why stop there?' do
    it {  1000.times do
            Hive.len_shortest_path rand(1000000000000000000), rand(1000000000000000000)
          end
       }
  end

end