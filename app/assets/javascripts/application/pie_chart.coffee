class window.PieChart
  constructor: (@$el) ->
    @percent = parseInt(@$el.attr('data-pie-percent'))

  draw: ->
    url = "https://chart.googleapis.com/chart?cht=p&chs=400x400&chd=t:#{@percent},#{100-@percent}"
    @$el.html("<img src=#{url}>")

$ ->
  $("[data-pie-chart=true]").each (index, el) ->
    console.log(el)
    pieChart = new PieChart($(el))
    pieChart.draw()
