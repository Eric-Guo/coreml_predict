#include "coreml_predict.h"

VALUE rb_mCoreMLPredict;

RUBY_FUNC_EXPORTED void
Init_coreml_predict(void)
{
  rb_mCoreMLPredict = rb_define_module("CoreMLPredict");
}
