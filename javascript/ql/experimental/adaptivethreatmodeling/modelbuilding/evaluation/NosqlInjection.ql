/**
 * NosqlInjection.ql
 *
 * Version of the standard NoSQL injection query with an output relation ready to plug into the
 * evaluation pipeline.
 */

import javascript
import semmle.javascript.security.dataflow.NosqlInjectionQuery as NosqlInjection
import EndToEndEvaluation as EndToEndEvaluation

from
  DataFlow::Configuration cfg, DataFlow::Node source, DataFlow::Node sink, string filePathSink,
  int startLineSink, int endLineSink, int startColumnSink, int endColumnSink, string filePathSource,
  int startLineSource, int endLineSource, int startColumnSource, int endColumnSource
where
  cfg instanceof NosqlInjection::Configuration and
  cfg.hasFlow(source, sink) and
  not EndToEndEvaluation::isFlowExcluded(source, sink) and
  sink.hasLocationInfo(filePathSink, startLineSink, startColumnSink, endLineSink, endColumnSink) and
  source
      .hasLocationInfo(filePathSource, startLineSource, startColumnSource, endLineSource,
        endColumnSource)
select source, startLineSource, startColumnSource, endLineSource, endColumnSource, filePathSource,
  sink, startLineSink, startColumnSink, endLineSink, endColumnSink, filePathSink
