#include "coreml_predict.h"

VALUE rb_mCoreMLPredict;
VALUE rb_cMLModel;

static VALUE predict(VALUE self, VALUE input) {
  VALUE rb_myhash = rb_hash_new();
  rb_hash_aset(rb_myhash, rb_str_new2("PRICE"), rb_float_new(1.8071459064013677));
  return rb_myhash;
}

RUBY_FUNC_EXPORTED void
Init_coreml_predict(void)
{
  rb_mCoreMLPredict = rb_define_module("CoreMLPredict");
  rb_cMLModel = rb_define_class_under(rb_mCoreMLPredict, "MLModelInternal", rb_cObject); 
  rb_define_method(rb_cMLModel, "predict", predict, 1);  
}
