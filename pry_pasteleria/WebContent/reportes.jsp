<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
		<title>Reportes</title>
        <link href="css/bootstrap.min.css" media="all" rel="stylesheet">
        <link href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" media="all" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css" media="all" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Raleway:300,500" rel="stylesheet" type="text/css">
        <link href="css/styles.css" media="all" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://bootswatch.com/yeti/bootstrap.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.1/modernizr.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


		<style type="text/css">
            ${demo.css}
            #reportes{
              border-radius: 20px 20px 20px 20px;
            }
		</style>




	<script type="text/javascript">
        $(function () {

            // Radialize the colors
            Highcharts.getOptions().colors = Highcharts.map(Highcharts.getOptions().colors, function (color) {
                return {
                    radialGradient: { cx: 0.5, cy: 0.3, r: 0.7 },
                    stops: [
                        [0, color],
                        [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                    ]
                };
            });

/*
            // Make monochrome colors and set them as default for all pies
    Highcharts.getOptions().plotOptions.pie.colors = (function () {
        var colors = [],
            base = Highcharts.getOptions().colors[0],
            i;

        for (i = 0; i < 10; i += 1) {
            // Start out with a darkened base color (negative brighten), and end
            // up with a much brighter color
            colors.push(Highcharts.Color(base).brighten((i - 3) / 7).get());
        }
        return colors;
    }());  */

                // Build the chart
                $('#chart1').highcharts({
                    chart: {
                        plotBackgroundColor: null,
                        plotBorderWidth: null,
                       // backgroundColor:'rgba(255, 255, 255, 0.1)',
                        plotShadow: false
                    },
                    title: {
                        text: 'Reporte de Pedidos por Estado, 2015'
                    },
                    tooltip: {
                        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                    },
                    plotOptions: {
                        pie: {
                            allowPointSelect: true,
                            cursor: 'pointer',
                            dataLabels: {
                                enabled: true,
                                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                style: {
                                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                },
                                connectorColor: 'silver'
                            },
                            showInLegend: true
                        }
                    },
                    series: [{
                        type: 'pie',
                        name: 'Browser share',
                        data: [
                            ['Firefox',   45.0],
                            ['IE',       26.8],
                            {
                                name: 'Chrome',
                                y: 12.8,
                                sliced: true,
                                selected: true
                            },
                            ['Safari',    8.5],
                            ['Opera',     6.2],
                            ['Others',   0.7]
                        ]
                    }]
                });

          ///////////////////////////////////////////////////////////777
  // Build the chart
                $('#chart2').highcharts({
                    chart: {
                        plotBackgroundColor: null,
                        plotBorderWidth: null,
                        //backgroundColor:'rgba(255, 255, 255, 0.1)',
                        plotShadow: false
                    },
                    title: {
                        text: 'Browser market shares at a specific website, 2014'
                    },
                    tooltip: {
                        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                    },
                    plotOptions: {
                        pie: {
                            allowPointSelect: true,
                            cursor: 'pointer',
                            dataLabels: {
                                enabled: true,
                                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                style: {
                                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                },
                                connectorColor: 'silver'
                            }
                        }
                    },
                    series: [{
                        type: 'bar',
                        name: 'Browser share',
                        data: [
                            ['Firefox',   45.0],
                            ['IE',       26.8],
                            {
                                name: 'Chrome',
                                y: 12.8,
                                sliced: true,
                                selected: true
                            },
                            ['Safari',    8.5],
                            ['Opera',     6.2],
                            ['Others',   0.7]
                        ]
                    }]
                });
      
      $('#chart3').highcharts({

        chart: {
            polar: true,
            type: 'line',
            //backgroundColor:'rgba(255, 255, 255, 0.1)',
            plotShadow:false
        },

        title: {
            text: 'Budget vs spending',
            x: -80
        },

        pane: {
            size: '80%'
        },

        xAxis: {
            categories: ['Sales', 'Marketing', 'Development', 'Customer Support',
                    'Information Technology', 'Administration'],
            tickmarkPlacement: 'on',
            lineWidth: 0
        },

        yAxis: {
            gridLineInterpolation: 'polygon',
            lineWidth: 0,
            min: 0
        },

        tooltip: {
            shared: true,
            pointFormat: '<span style="color:{series.color}">{series.name}: <b>${point.y:,.0f}</b><br/>'
        },

        legend: {
            align: 'right',
            verticalAlign: 'top',
            y: 70,
            layout: 'vertical'
        },

        series: [{
            name: 'Allocated Budget',
            data: [43000, 19000, 60000, 35000, 17000, 10000],
            pointPlacement: 'on'
        }, {
            name: 'Actual Spending',
            data: [50000, 39000, 42000, 31000, 26000, 14000],
            pointPlacement: 'on'
        }]

    });
            
     $('#chart5').highcharts({
        title: {
            text: 'Combination chart'
        },
        xAxis: {
            categories: ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
        },
        labels: {
            items: [{
                html: 'Total fruit consumption',
                style: {
                    left: '50px',
                    top: '18px',
                    color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
                }
            }]
        },
        series: [{
            type: 'column',
            name: 'Jane',
            data: [3, 2, 1, 3, 4]
        }, {
            type: 'column',
            name: 'John',
            data: [2, 3, 5, 7, 6]
        }, {
            type: 'column',
            name: 'Joe',
            data: [4, 3, 3, 9, 0]
        }, {
            type: 'spline',
            name: 'Average',
            data: [3, 2.67, 3, 6.33, 3.33],
            marker: {
                lineWidth: 2,
                lineColor: Highcharts.getOptions().colors[3],
                fillColor: 'white'
            }
        }, {
            type: 'pie',
            name: 'Total consumption',
            data: [{
                name: 'Jane',
                y: 13,
                color: Highcharts.getOptions().colors[0] // Jane's color
            }, {
                name: 'John',
                y: 23,
                color: Highcharts.getOptions().colors[1] // John's color
            }, {
                name: 'Joe',
                y: 19,
                color: Highcharts.getOptions().colors[2] // Joe's color
            }],
            center: [100, 80],
            size: 100,
            showInLegend: false,
            dataLabels: {
                enabled: false
            }
        }]
    });

});

  

		</script>
	</head>
	<body>
<script src="js/charts/highcharts.js"></script>
<script src="js/charts/exporting.js"></script>


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/baner1.jpg" alt="200x100" width="100%">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="img/baner2.jpg" alt="200x100" width="100%">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="img/baner3.jpeg" alt="200x100" width="100%">
      <div class="carousel-caption">
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>






<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Home</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav">
        <li class=""><a href="catalogo.html">Catalogo de Productos<span class="sr-only">(current)</span></a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tortas Especiales<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Bautizo</a></li>
            <li><a href="#">Primera Comunión</a></li>
            <li><a href="#">Graduación</a></li>
            <li class="divider"></li>
            <li><a href="#">Matrimonio</a></li>
            <li class="divider"></li>
            <li><a href="#">Cumpleaños</a></li>
          </ul>
        </li>
        <li><a href="armatutorta.html">Arma tu Torta</a></li>
        <li><a href="#">Ofertas</a></li>
        <li><a href="seguimiento.html">Seguimiento Pedidos</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li class="active">
          <a href="carrito.html"><strong>Mi Carrito</strong>&nbsp;<span class="glyphicon glyphicon-shopping-cart"/></a>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Mi Cuenta&nbsp;<span class="glyphicon glyphicon-cog"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Mi Perfil</a></li>
            <li><a href="#">Cambiar Clave</a></li>
            <li class="divider"></li>
            <li><a href="#">Cerrar Sesión</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>


<!-- ------------------------------------------------------------- -->

<div  id="reportes"style="margin:5%;background-color:white;">


  <table width="100%">
    <tr>
      <td>
        <div id="chart1" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
      </td>
       <td>
         <div id="chart2" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
      </td>
    </tr>
    <tr>
      </br>
    </tr>
    <tr>
      <td colspan="2">
        <div id="chart5"style="min-width: 310px; height: 400px; margin: 0 auto"></div>
      </td>
    </tr>

  <tr>
    <td colspan="2">
        <div id="chart3" style="min-width: 310px; height: 400px;margin: 0 auto"></div>
      </td>
    </tr>

  </table>


</div>
    
   

    <script src="js/jquery-1.11.2.js"></script>
    <script src="js/jquery.validation.js"></script>
    <script src="js/messages_es.js"></script>
    <script src="js/main.js"></script>
    <script src="js/bootstrap.min.js"></script>
	</body>
</html>