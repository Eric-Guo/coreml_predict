# frozen_string_literal: true

require "test_helper"

class TestCoreMLPredict < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CoreMLPredict::VERSION
  end

  def test_it_does_something_useful
    model = CoreMLPredict::MLModel.from_mlpackage("california.mlpackage")
    result = model.predict({AveBedrms: 3, HouseAge: 20, AveOccup: 3})
    assert result == {PRICE: 1.8071459064013677}
  end
end
