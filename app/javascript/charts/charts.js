import donut from 'britecharts/src/charts/donut';
import legend from 'britecharts/src/charts/legend';
import * as d3Selection from 'd3-selection';
import * as d3Format from 'd3-format';

var charts = {
  getLegendChart(dataset, optionalColorSchema) {
    var legendChart = legend(),
    legendContainer = d3Selection.select('.js-legend-chart-container'),
    containerWidth = legendContainer.node() ? legendContainer.node().getBoundingClientRect().width : false;

    if (containerWidth) {
      d3Selection.select('.js-legend-chart-container .britechart-legend').remove();

      legendChart
        .width(containerWidth*0.8)
        .height(100)

      if (optionalColorSchema) {
        legendChart.colorSchema(optionalColorSchema);
      }

      // FIXME: Change the legend number format
      legendChart.numberFormat = function() {
        var p = d3Format.precisionFixed(1);
        this.numberFormat = d3Format.format("." + p + "f");
      }
      legendChart.numberFormat();

      legendContainer.datum(dataset).call(legendChart);

      return legendChart;
    }
  },

  createDonutChart(dataset, optionalColorSchema) {
    var legendChart = this.getLegendChart(dataset, optionalColorSchema),
    donutChart = donut(),
    donutContainer = d3Selection.select('.js-donut-chart-container'),
    containerWidth = donutContainer.node() ? donutContainer.node().getBoundingClientRect().width : false;

    if (containerWidth) {
      d3Selection.select('#button').on('click', function() {
        donutChart.exportChart();
      });

      donutChart
        .width(containerWidth)
        .height(containerWidth)
        .externalRadius(containerWidth/2.5)
        .internalRadius(containerWidth/5)
        .on('customMouseOver', function(data) {
          legendChart.highlight(data.data.id);
        })
      .on('customMouseOut', function() {
        legendChart.clearHighlight();
      });

      if (optionalColorSchema) {
        donutChart.colorSchema(optionalColorSchema);
      }

      donutContainer.datum(dataset).call(donutChart);

      d3Selection.select('#button').on('click', function() {
        donutChart.exportChart('informative-chart.png', 'Informative Chart');
      });
    }
  }
};

export default charts
