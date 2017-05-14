import Charts from './charts';
import colors from 'britecharts/src/charts/helpers/colors';
import _ from 'underscore';
import * as d3Selection from 'd3-selection';
import PubSub from 'pubsub-js';


document.addEventListener('DOMContentLoaded', () => {
  let chart = new Charts;
  let dataset = [
      {
      	quantity: 13,
      	percentage: 13,
      	name: 'Blocked',
      	id: 1
      },
      {
      	quantity: 137,
      	percentage: 37,
      	name: 'Active',
      	id: 2
      },
      {
      	quantity: 31,
      	percentage: 31,
      	name: 'Open',
      	id: 3
      },
      {
      	quantity: 19,
      	percentage: 19,
      	name: 'Closed',
      	id: 4
      }
    ]

  // Show charts if container available
  if (d3Selection.select('.js-donut-chart-container').node()) {
    let colorSchema = colors.colorSchemas['extendedBlueColorSchema']
      chart.createDonutChart(dataset, colorSchema);

    let redrawCharts = function(){
      d3Selection.selectAll('.donut-chart').remove();

      chart.createDonutChart(dataset, colorSchema);
    };

    // Redraw charts on window resize
    PubSub.subscribe('resize', redrawCharts);
  }
});
