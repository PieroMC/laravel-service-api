@extends('layout.template') 

@section('content')
<div class="row d-flex justify-content-center">
    @if ($user->workstation->work == "ADMINISTRATOR")
        <div class="col-md-10">
            <div class="tile">
                <h3 class="tile-title">Monthly Sales</h3>
                <div class="embed-responsive embed-responsive-16by9">
                    <canvas class="embed-responsive-item" id="Monthly_Sales"></canvas>
                </div>
            </div>
        </div>
        <div class="col-md-10">
            <div class="tile">
                <h3 class="tile-title">Bar Chart</h3>
                <div class="embed-responsive embed-responsive-16by9">
                    <canvas class="embed-responsive-item" id="barChartDemo"></canvas>
                </div>
            </div>
        </div>
    @else
        
    @endif
   <form action="/home/dashboard" method="post" id="form-request">
        @csrf
        <input type="hidden" name="id" value="{{$user->id}}">
    </form>
</div>
@endsection
@section('script')
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
<script type="text/javascript">
    function monthlySales(ctx) {
        new Chart(ctx, {
            type: 'line',
            data:{
                labels: ["January", "February", "March", "April", "May","June", "July", "August", "October", "November", "December"],
                datasets:[
                    { 
                        label: 'Sales',
                        data: [1125, 1150, 1140, 1170, 1160, 1140, 1180 , 1160, 1170, 1150 , 1170],
                        borderColor: 'green',
                    }
                ]
            },
            options:{
                scales:{
                    xAxes:[{
                        gridLines:{
                            display: false,
                        }
                    }]
                },
                legend:{
                    position: 'bottom',
                    labels:{
                        padding: 20,
                        boxWidth: 25,
                        fontColor: 'black'
                    }
                },
                tooltips:{
                    backgroundColor: '#26518C',
                    xPadding: 10,
                    yPadding: 10
                },
                elements:{
                    line:{
                        borderWidth: 4,
                        fill: false,
                    },
                    point:{
                        radius: 4,
                        borderWidth: 2,
                        backgroundColor: 'white',
                        hoverRadius: 6,
                        hoverBorderWidth:2,
                    }
                }
                
            }
        })
    }

    function renderChart() {
        const ctx = document.querySelector('#Monthly_Sales').getContext('2d')
        monthlySales(ctx)
    }

    renderChart()
</script>
{{-- <script type="text/javascript">
    var ctxl = $("#Monthly_Sales").get(0).getContext("2d");
    var lineChart = new Chart(ctxl).Line(data);
    
    var ctxp = $("#barChartDemo").get(0).getContext("2d");
    var pieChart = new Chart(ctxp).Bar(data);
  </script> --}}
@endsection