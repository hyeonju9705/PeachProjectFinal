<%@ page contentType = "text/html;charset=utf-8" %>

<html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          	['Year','가격'],
          	['2000',17318],
          	['2001',17730],
          	['2002',11344],
        	['2003',15110],
        	['2004',16668],
        	['2005',15166],
        	['2006',15412],
        	['2007',12416],
        	['2008',15383],
        	['2009',12380],
        	['2010',22467],
        	['2011',17808],
        	['2012',19390],
        	['2013',26447],
        	['2014',17465],
        	['2015',20925],
        	['2016',16257],
        	['2017',20877],
        	['2018',25854],
        	['2019',21920],
        	['2020',24381]
        ]);

        var options = {
          title: '시세동향'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="chart_div" style="width: 1200px; height: 400px;"></div>
  </body>
</html>
