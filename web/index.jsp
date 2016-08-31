<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Test</title>
    <link href='/css/main.css' rel='stylesheet' type='text/css'>
  </head>
  <body>
  <body class="nav-md">
  <div class="container body">
    <div class="main_container">
      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">
          <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentellela Alela!</span></a>
          </div>

          <div class="clearfix"></div>

          <!-- menu profile quick info -->
          <div class="profile">
            <div class="profile_pic">
              <img src="images/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Welcome,</span>
              <h2>John Doe</h2>
            </div>
          </div>
          <!-- /menu profile quick info -->

          <br>

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section active">
              <h3>General</h3>
              <ul class="nav side-menu" style="">
                <li class="active"><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: block;">
                    <li class="current-page"><a href="index.html">Dashboard</a></li>
                    <li><a href="index2.html">Dashboard2</a></li>
                    <li><a href="index3.html">Dashboard3</a></li>
                  </ul>
                </li>
                <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="form.html">General Form</a></li>
                    <li><a href="form_advanced.html">Advanced Components</a></li>
                    <li><a href="form_validation.html">Form Validation</a></li>
                    <li><a href="form_wizards.html">Form Wizard</a></li>
                    <li><a href="form_upload.html">Form Upload</a></li>
                    <li><a href="form_buttons.html">Form Buttons</a></li>
                  </ul>
                </li>
                <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="general_elements.html">General Elements</a></li>
                    <li><a href="media_gallery.html">Media Gallery</a></li>
                    <li><a href="typography.html">Typography</a></li>
                    <li><a href="icons.html">Icons</a></li>
                    <li><a href="glyphicons.html">Glyphicons</a></li>
                    <li><a href="widgets.html">Widgets</a></li>
                    <li><a href="invoice.html">Invoice</a></li>
                    <li><a href="inbox.html">Inbox</a></li>
                    <li><a href="calendar.html">Calendar</a></li>
                  </ul>
                </li>
                <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="tables.html">Tables</a></li>
                    <li><a href="tables_dynamic.html">Table Dynamic</a></li>
                  </ul>
                </li>
                <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="chartjs.html">Chart JS</a></li>
                    <li><a href="chartjs2.html">Chart JS2</a></li>
                    <li><a href="morisjs.html">Moris JS</a></li>
                    <li><a href="echarts.html">ECharts</a></li>
                    <li><a href="other_charts.html">Other Charts</a></li>
                  </ul>
                </li>
                <li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                    <li><a href="fixed_footer.html">Fixed Footer</a></li>
                  </ul>
                </li>
              </ul>
            </div>
            <div class="menu_section">
              <h3>Live On</h3>
              <ul class="nav side-menu">
                <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="e_commerce.html">E-commerce</a></li>
                    <li><a href="projects.html">Projects</a></li>
                    <li><a href="project_detail.html">Project Detail</a></li>
                    <li><a href="contacts.html">Contacts</a></li>
                    <li><a href="profile.html">Profile</a></li>
                  </ul>
                </li>
                <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="page_403.html">403 Error</a></li>
                    <li><a href="page_404.html">404 Error</a></li>
                    <li><a href="page_500.html">500 Error</a></li>
                    <li><a href="plain_page.html">Plain Page</a></li>
                    <li><a href="login.html">Login Page</a></li>
                    <li><a href="pricing_tables.html">Pricing Tables</a></li>
                  </ul>
                </li>
                <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="#level1_1">Level One</a>
                    </li><li><a>Level One<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li class="sub_menu"><a href="level2.html">Level Two</a>
                      </li>
                      <li><a href="#level2_1">Level Two</a>
                      </li>
                      <li><a href="#level2_2">Level Two</a>
                      </li>
                    </ul>
                  </li>
                    <li><a href="#level1_2">Level One</a>
                    </li>
                  </ul>
                </li>
                <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
              </ul>
            </div>

          </div>
          <!-- /sidebar menu -->

          <!-- /menu footer buttons -->
          <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Settings">
              <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="" data-original-title="FullScreen">
              <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Lock">
              <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Logout">
              <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
          </div>
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">
        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <img src="images/img.jpg" alt="">John Doe
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu pull-right">
                  <li><a href="javascript:;"> Profile</a></li>
                  <li>
                    <a href="javascript:;">
                      <span class="badge bg-red pull-right">50%</span>
                      <span>Settings</span>
                    </a>
                  </li>
                  <li><a href="javascript:;">Help</a></li>
                  <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                </ul>
              </li>

              <li role="presentation" class="dropdown">
                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                  <i class="fa fa-envelope-o"></i>
                  <span class="badge bg-green">6</span>
                </a>
                <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                  <li>
                    <a>
                      <span class="image"><img src="images/img.jpg" alt="Profile Image"></span>
                      <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                      <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                    </a>
                  </li>
                  <li>
                    <a>
                      <span class="image"><img src="images/img.jpg" alt="Profile Image"></span>
                      <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                      <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                    </a>
                  </li>
                  <li>
                    <a>
                      <span class="image"><img src="images/img.jpg" alt="Profile Image"></span>
                      <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                      <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                    </a>
                  </li>
                  <li>
                    <a>
                      <span class="image"><img src="images/img.jpg" alt="Profile Image"></span>
                      <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                      <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                    </a>
                  </li>
                  <li>
                    <div class="text-center">
                      <a>
                        <strong>See All Alerts</strong>
                        <i class="fa fa-angle-right"></i>
                      </a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>
      </div>
      <!-- /top navigation -->

      <!-- page content -->
      <div class="right_col" role="main" style="min-height: 2084px;">
        <!-- top tiles -->

        <!-- /top tiles -->


        <br>


      </div>
      <!-- /page content -->

      <!-- footer content -->
      <footer>
        <div class="pull-right">
          Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
        </div>
        <div class="clearfix"></div>
      </footer>
      <!-- /footer content -->
    </div>
  </div>

  <!-- jQuery -->
  <script async="" src="https://www.google-analytics.com/analytics.js"></script><script src="../vendors/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- FastClick -->
  <script src="../vendors/fastclick/lib/fastclick.js"></script>
  <!-- NProgress -->
  <script src="../vendors/nprogress/nprogress.js"></script>
  <!-- Chart.js -->
  <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
  <!-- gauge.js -->
  <script src="../vendors/bernii/gauge.js/dist/gauge.min.js"></script>
  <!-- bootstrap-progressbar -->
  <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
  <!-- iCheck -->
  <script src="../vendors/iCheck/icheck.min.js"></script>
  <!-- Skycons -->
  <script src="../vendors/skycons/skycons.js"></script>
  <!-- Flot -->
  <script src="../vendors/Flot/jquery.flot.js"></script>
  <script src="../vendors/Flot/jquery.flot.pie.js"></script>
  <script src="../vendors/Flot/jquery.flot.time.js"></script>
  <script src="../vendors/Flot/jquery.flot.stack.js"></script>
  <script src="../vendors/Flot/jquery.flot.resize.js"></script>
  <!-- Flot plugins -->
  <script src="js/flot/jquery.flot.orderBars.js"></script>
  <script src="js/flot/date.js"></script>
  <script src="js/flot/jquery.flot.spline.js"></script>
  <script src="js/flot/curvedLines.js"></script>
  <!-- jVectorMap -->
  <script src="js/maps/jquery-jvectormap-2.0.3.min.js"></script>
  <!-- bootstrap-daterangepicker -->
  <script src="js/moment/moment.min.js"></script>
  <script src="js/datepicker/daterangepicker.js"></script>

  <!-- Custom Theme Scripts -->
  <script src="../build/js/custom.min.js"></script>

  <!-- Flot -->
  <script>
    $(document).ready(function() {
      var data1 = [
        [gd(2012, 1, 1), 17],
        [gd(2012, 1, 2), 74],
        [gd(2012, 1, 3), 6],
        [gd(2012, 1, 4), 39],
        [gd(2012, 1, 5), 20],
        [gd(2012, 1, 6), 85],
        [gd(2012, 1, 7), 7]
      ];

      var data2 = [
        [gd(2012, 1, 1), 82],
        [gd(2012, 1, 2), 23],
        [gd(2012, 1, 3), 66],
        [gd(2012, 1, 4), 9],
        [gd(2012, 1, 5), 119],
        [gd(2012, 1, 6), 6],
        [gd(2012, 1, 7), 9]
      ];
      $("#canvas_dahs").length && $.plot($("#canvas_dahs"), [
        data1, data2
      ], {
        series: {
          lines: {
            show: false,
            fill: true
          },
          splines: {
            show: true,
            tension: 0.4,
            lineWidth: 1,
            fill: 0.4
          },
          points: {
            radius: 0,
            show: true
          },
          shadowSize: 2
        },
        grid: {
          verticalLines: true,
          hoverable: true,
          clickable: true,
          tickColor: "#d5d5d5",
          borderWidth: 1,
          color: '#fff'
        },
        colors: ["rgba(38, 185, 154, 0.38)", "rgba(3, 88, 106, 0.38)"],
        xaxis: {
          tickColor: "rgba(51, 51, 51, 0.06)",
          mode: "time",
          tickSize: [1, "day"],
          //tickLength: 10,
          axisLabel: "Date",
          axisLabelUseCanvas: true,
          axisLabelFontSizePixels: 12,
          axisLabelFontFamily: 'Verdana, Arial',
          axisLabelPadding: 10
        },
        yaxis: {
          ticks: 8,
          tickColor: "rgba(51, 51, 51, 0.06)",
        },
        tooltip: false
      });

      function gd(year, month, day) {
        return new Date(year, month - 1, day).getTime();
      }
    });
  </script>
  <!-- /Flot -->

  <!-- jVectorMap -->
  <script src="js/maps/jquery-jvectormap-world-mill-en.js"></script>
  <script src="js/maps/jquery-jvectormap-us-aea-en.js"></script>
  <script src="js/maps/gdp-data.js"></script>
  <script>
    $(document).ready(function(){
      $('#world-map-gdp').vectorMap({
        map: 'world_mill_en',
        backgroundColor: 'transparent',
        zoomOnScroll: false,
        series: {
          regions: [{
            values: gdpData,
            scale: ['#E6F2F0', '#149B7E'],
            normalizeFunction: 'polynomial'
          }]
        },
        onRegionTipShow: function(e, el, code) {
          el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
        }
      });
    });
  </script>
  <!-- /jVectorMap -->

  <!-- Skycons -->
  <script>
    $(document).ready(function() {
      var icons = new Skycons({
                "color": "#73879C"
              }),
              list = [
                "clear-day", "clear-night", "partly-cloudy-day",
                "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                "fog"
              ],
              i;

      for (i = list.length; i--;)
        icons.set(list[i], list[i]);

      icons.play();
    });
  </script>
  <!-- /Skycons -->

  <!-- Doughnut Chart -->
  <script>
    $(document).ready(function(){
      var options = {
        legend: false,
        responsive: false
      };

      new Chart(document.getElementById("canvas1"), {
        type: 'doughnut',
        tooltipFillColor: "rgba(51, 51, 51, 0.55)",
        data: {
          labels: [
            "Symbian",
            "Blackberry",
            "Other",
            "Android",
            "IOS"
          ],
          datasets: [{
            data: [15, 20, 30, 10, 30],
            backgroundColor: [
              "#BDC3C7",
              "#9B59B6",
              "#E74C3C",
              "#26B99A",
              "#3498DB"
            ],
            hoverBackgroundColor: [
              "#CFD4D8",
              "#B370CF",
              "#E95E4F",
              "#36CAAB",
              "#49A9EA"
            ]
          }]
        },
        options: options
      });
    });
  </script>
  <!-- /Doughnut Chart -->

  <!-- bootstrap-daterangepicker -->
  <script>
    $(document).ready(function() {

      var cb = function(start, end, label) {
        console.log(start.toISOString(), end.toISOString(), label);
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
      };

      var optionSet1 = {
        startDate: moment().subtract(29, 'days'),
        endDate: moment(),
        minDate: '01/01/2012',
        maxDate: '12/31/2015',
        dateLimit: {
          days: 60
        },
        showDropdowns: true,
        showWeekNumbers: true,
        timePicker: false,
        timePickerIncrement: 1,
        timePicker12Hour: true,
        ranges: {
          'Today': [moment(), moment()],
          'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days': [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month': [moment().startOf('month'), moment().endOf('month')],
          'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        opens: 'left',
        buttonClasses: ['btn btn-default'],
        applyClass: 'btn-small btn-primary',
        cancelClass: 'btn-small',
        format: 'MM/DD/YYYY',
        separator: ' to ',
        locale: {
          applyLabel: 'Submit',
          cancelLabel: 'Clear',
          fromLabel: 'From',
          toLabel: 'To',
          customRangeLabel: 'Custom',
          daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
          monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
          firstDay: 1
        }
      };
      $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
      $('#reportrange').daterangepicker(optionSet1, cb);
      $('#reportrange').on('show.daterangepicker', function() {
        console.log("show event fired");
      });
      $('#reportrange').on('hide.daterangepicker', function() {
        console.log("hide event fired");
      });
      $('#reportrange').on('apply.daterangepicker', function(ev, picker) {
        console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
      });
      $('#reportrange').on('cancel.daterangepicker', function(ev, picker) {
        console.log("cancel event fired");
      });
      $('#options1').click(function() {
        $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
      });
      $('#options2').click(function() {
        $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
      });
      $('#destroy').click(function() {
        $('#reportrange').data('daterangepicker').remove();
      });
    });
  </script>
  <!-- /bootstrap-daterangepicker -->

  <!-- gauge.js -->
  <script>
    var opts = {
      lines: 12,
      angle: 0,
      lineWidth: 0.4,
      pointer: {
        length: 0.75,
        strokeWidth: 0.042,
        color: '#1D212A'
      },
      limitMax: 'false',
      colorStart: '#1ABC9C',
      colorStop: '#1ABC9C',
      strokeColor: '#F0F3F3',
      generateGradient: true
    };
    var target = document.getElementById('foo'),
            gauge = new Gauge(target).setOptions(opts);

    gauge.maxValue = 6000;
    gauge.animationSpeed = 32;
    gauge.set(3200);
    gauge.setTextField(document.getElementById("gauge-text"));
  </script>
  <!-- /gauge.js -->

  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-23581568-13', 'auto');
    ga('send', 'pageview');

  </script>

  <div class="jvectormap-tip"></div><div class="daterangepicker dropdown-menu opensleft show-calendar" style="top: 236px; right: 35.0781px; left: auto;"><div class="calendar first left"><div class="calendar-date"><table class="table-condensed"><thead><tr><th></th><th class="prev available"><i class="fa fa-arrow-left icon icon-arrow-left glyphicon glyphicon-arrow-left"></i></th><th colspan="5" class="month"><select class="monthselect"><option value="0">January</option><option value="1">February</option><option value="2">March</option><option value="3">April</option><option value="4">May</option><option value="5">June</option><option value="6">July</option><option value="7" selected="selected">August</option><option value="8">September</option><option value="9">October</option><option value="10">November</option><option value="11">December</option></select><select class="yearselect"><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option></select></th><th></th></tr><tr><th class="week">W</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th><th>Su</th></tr></thead><tbody><tr><td class="week">31</td><td class="off disabled" data-title="r0c0">25</td><td class="off disabled" data-title="r0c1">26</td><td class="off disabled" data-title="r0c2">27</td><td class="off disabled" data-title="r0c3">28</td><td class="off disabled" data-title="r0c4">29</td><td class="off disabled" data-title="r0c5">30</td><td class="off disabled" data-title="r0c6">31</td></tr><tr><td class="week">32</td><td class="off disabled" data-title="r1c0">1</td><td class="off disabled" data-title="r1c1">2</td><td class="off disabled" data-title="r1c2">3</td><td class="off disabled" data-title="r1c3">4</td><td class="off disabled" data-title="r1c4">5</td><td class="off disabled" data-title="r1c5">6</td><td class="off disabled" data-title="r1c6">7</td></tr><tr><td class="week">33</td><td class="off disabled" data-title="r2c0">8</td><td class="off disabled" data-title="r2c1">9</td><td class="off disabled" data-title="r2c2">10</td><td class="off disabled" data-title="r2c3">11</td><td class="off disabled" data-title="r2c4">12</td><td class="off disabled" data-title="r2c5">13</td><td class="off disabled" data-title="r2c6">14</td></tr><tr><td class="week">34</td><td class="off disabled" data-title="r3c0">15</td><td class="off disabled" data-title="r3c1">16</td><td class="off disabled" data-title="r3c2">17</td><td class="off disabled" data-title="r3c3">18</td><td class="off disabled" data-title="r3c4">19</td><td class="off disabled" data-title="r3c5">20</td><td class="off disabled" data-title="r3c6">21</td></tr><tr><td class="week">35</td><td class="off disabled" data-title="r4c0">22</td><td class="off disabled" data-title="r4c1">23</td><td class="off disabled" data-title="r4c2">24</td><td class="off disabled" data-title="r4c3">25</td><td class="off disabled" data-title="r4c4">26</td><td class="off disabled" data-title="r4c5">27</td><td class="off disabled" data-title="r4c6">28</td></tr><tr><td class="week">36</td><td class="off disabled" data-title="r5c0">29</td><td class="off disabled" data-title="r5c1">30</td><td class="off disabled" data-title="r5c2">31</td><td class="off disabled" data-title="r5c3">1</td><td class="off disabled" data-title="r5c4">2</td><td class="off disabled" data-title="r5c5">3</td><td class="off disabled" data-title="r5c6">4</td></tr></tbody></table></div></div><div class="calendar second right"><div class="calendar-date"><table class="table-condensed"><thead><tr><th></th><th></th><th colspan="5" class="month"><select class="monthselect"><option value="7" selected="selected">August</option><option value="8">September</option><option value="9">October</option><option value="10">November</option><option value="11">December</option></select><select class="yearselect"></select></th><th></th></tr><tr><th class="week">W</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th><th>Su</th></tr></thead><tbody><tr><td class="week">31</td><td class="off disabled" data-title="r0c0">25</td><td class="off disabled" data-title="r0c1">26</td><td class="off disabled" data-title="r0c2">27</td><td class="off disabled" data-title="r0c3">28</td><td class="off disabled" data-title="r0c4">29</td><td class="off disabled" data-title="r0c5">30</td><td class="off disabled" data-title="r0c6">31</td></tr><tr><td class="week">32</td><td class="off disabled" data-title="r1c0">1</td><td class="off disabled" data-title="r1c1">2</td><td class="off disabled" data-title="r1c2">3</td><td class="off disabled" data-title="r1c3">4</td><td class="off disabled" data-title="r1c4">5</td><td class="off disabled" data-title="r1c5">6</td><td class="off disabled" data-title="r1c6">7</td></tr><tr><td class="week">33</td><td class="off disabled" data-title="r2c0">8</td><td class="off disabled" data-title="r2c1">9</td><td class="off disabled" data-title="r2c2">10</td><td class="off disabled" data-title="r2c3">11</td><td class="off disabled" data-title="r2c4">12</td><td class="off disabled" data-title="r2c5">13</td><td class="off disabled" data-title="r2c6">14</td></tr><tr><td class="week">34</td><td class="off disabled" data-title="r3c0">15</td><td class="off disabled" data-title="r3c1">16</td><td class="off disabled" data-title="r3c2">17</td><td class="off disabled" data-title="r3c3">18</td><td class="off disabled" data-title="r3c4">19</td><td class="off disabled" data-title="r3c5">20</td><td class="off disabled" data-title="r3c6">21</td></tr><tr><td class="week">35</td><td class="off disabled" data-title="r4c0">22</td><td class="off disabled" data-title="r4c1">23</td><td class="off disabled" data-title="r4c2">24</td><td class="off disabled" data-title="r4c3">25</td><td class="off disabled" data-title="r4c4">26</td><td class="off disabled" data-title="r4c5">27</td><td class="off disabled" data-title="r4c6">28</td></tr><tr><td class="week">36</td><td class="off disabled" data-title="r5c0">29</td><td class="off disabled" data-title="r5c1">30</td><td class="off disabled" data-title="r5c2">31</td><td class="off disabled" data-title="r5c3">1</td><td class="off disabled" data-title="r5c4">2</td><td class="off disabled" data-title="r5c5">3</td><td class="off disabled" data-title="r5c6">4</td></tr></tbody></table></div></div><div class="ranges"><ul><li class="active">Custom</li></ul><div class="range_inputs"><div class="daterangepicker_start_input"><label for="daterangepicker_start">From</label><input class="input-mini" type="text" name="daterangepicker_start" value=""></div><div class="daterangepicker_end_input"><label for="daterangepicker_end">To</label><input class="input-mini" type="text" name="daterangepicker_end" value=""></div><button class="applyBtn btn btn-default btn-small btn-primary">Submit</button>&nbsp;<button class="cancelBtn btn btn-default btn-small">Clear</button></div></div></div></body>
  </body>
</html>