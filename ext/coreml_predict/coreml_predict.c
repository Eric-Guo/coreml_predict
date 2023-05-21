#include "coreml_predict.h"

VALUE rb_mCoremlPredict;

RUBY_FUNC_EXPORTED void
Init_coreml_predict(void)
{
  rb_mCoremlPredict = rb_define_module("CoremlPredict");
}
