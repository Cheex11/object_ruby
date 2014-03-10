require "rspec"
require "triangles"

describe Triangle do
  it 'should know what type of triangle it is based on the length of its sides' do
    test_triangle = Triangle.new(5,5,5)
    test_triangle.type.should eq 'equilateral'
  end

  it 'should know what type of triangle it is based on the length of its sides' do
    test_triangle = Triangle.new(3,5,5)
    test_triangle2 = Triangle.new(5,3,5)
    test_triangle3 = Triangle.new(5,5,3)
    test_triangle.type.should eq 'isosceles'
    test_triangle2.type.should eq 'isosceles'
    test_triangle3.type.should eq 'isosceles'
  end

    it 'should know what type of triangle it is based on the length of its sides' do
    test_triangle = Triangle.new(3,4,5)
    test_triangle.type.should eq 'scalene'
  end
  describe 'fake_triangle'
  it 'should tell if it is a real triangle' do
    test_triangle = Triangle.new(2,2,90)
    test_triangle1 = Triangle.new(2,90,2)
    test_triangle.fake_triangle.should eq true
    test_triangle1.fake_triangle.should eq true
  end
end
