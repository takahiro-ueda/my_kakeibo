window.draw_graph = ->
  ctx = document.getElementById("myChart").getContext('2d')
  barNum = gon.data_incomes.lehgth
  labels = new Array(barNum)
  income_bgColors = new Array(barNum)
  income_bdColors = new Array(barNum)
  fixed_bgColors = new Array(barNum)
  fixed_bdColors = new Array(barNum)
  variable_bgColors = new Array(barNum)
  variable_bdColors = new Array(barNum)
  result_bgColors = new Array(barNum)
  result_bdColors = new Array(barNum)

  for i in [0...gon.data_incomes.length]
    labels[i] = i+1 +'月'
    income_bgColors[i] = 'rgba(135, 201, 164, 0.2)'
    income_bdColors[i] = 'rgba(135, 201, 164, 1)'
    fixed_bgColors[i] = 'rgba(247, 176, 44, 0.2)'
    fixed_bdColors[i] = 'rgba(247, 176, 44, 1)'
    variable_bgColors[i] = 'rgba(233, 77, 55, 0.2)'
    variable_bdColors[i] = 'rgba(233, 77, 55, 1)'
    result_bgColors[i] = 'rgba(0, 134, 186, 0.2)'
    result_bdColors[i] = 'rgba(0, 134, 186, 1)'

  myChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: labels
      datasets: [{
        label: '収入合計金額',
        data: gon.data_incomes,
        backgroundColor: income_bgColors,
        borderColor: income_bdColors,
        borderWidth: 1,
      },{
        label: '固定費合計金額',
        data: gon.data_fixedcosts,
        backgroundColor: fixed_bgColors,
        borderColor: fixed_bdColors,
        borderWidth: 1,
        type: 'bar'
      },{
        label: '変動費合計金額',
        data: gon.data_variablecosts,
        backgroundColor: variable_bgColors,
        borderColor: variable_bdColors,
        borderWidth: 1,
        type: 'bar'
      },{
        label: '収支結果合計金額',
        data: gon.data_results,
        backgroundColor: result_bgColors,
        borderColor: result_bdColors,
        borderWidth: 1,
        type: 'bar'
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero:true
          }
        }]
      }
    }
  })