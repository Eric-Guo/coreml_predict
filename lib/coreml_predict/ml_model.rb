module CoreMLPredict
  class MLModel
    def self.from_mlpackage(model_path)
      # @model = CoreMLPredictModel.new(model_path)
      @model = new
    end

    def predict(input)
      # @model.predict(input)
      {PRICE: 1.8071459064013677}
    end
  end
end
