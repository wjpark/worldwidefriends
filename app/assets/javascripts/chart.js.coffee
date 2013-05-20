$(document).ready ->
  $.ajax(
    url: '/morris.json'
    method: 'get'
    dataType: 'json'
    success: (data) ->
      Morris.Bar(
        element: 'chart'
        data: data
        xkey: 'title'
        ykeys: ['value']
        labels: ['Cities']
        barColors: ['#ffffff']
        gridTextColor: ['yellow']
        xLabelAngle: 45
        gridTextSize: 10
        hideHover: false
      )
  )