module CoreMLPredict
  class MLModel
    def self.from_mlpackage(model_path)
      @@model = MLModelInternal.new()
      new
    end

    def predict(input)
      @@model.predict(input)
    end
  end
end
