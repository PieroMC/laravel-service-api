<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .invoice{
            padding: 40px;
        }
        .table{
            padding: 40px;
        }
    </style>
</head>

<body>

    <div class="invoice">

        <div class="invoice-title">
            
                <h2>{{__('TecShop Inc')}}</h2>
   
                <h5>Date: {{$sale->date}}</h5>
            
        </div>

        <div class="invoice-info">
            <div>From
                <address><strong>TecShop Inc.</strong><br>518 Akshar Avenue<br>Gandhi Marg<br>New
                    Delhi<br>Email: tecshop@org.com</address>
            </div>
            <div>To
                <address>
                    <strong>{{$sale->client->name.' '.$sale->client->lastname}}</strong>
                    <br>{{$sale->client->address}}
                    <br>Phone: {{$sale->client->telephone}}
                    {{-- <br>Email: john.doe@example.com --}}
                </address>
            </div>
            <div>
                <b>{{$sale->voucher_type->type}} #{{$sale->code}}</b><br><br>
                <b>Employee :</b> {{$sale->user->employee->name.' '.$sale->user->employee->lastname}}<br>
                <b>Document :</b>{{$sale->user->employee->number_document}}<br>
                <b>Email :</b> {{$sale->user->employee->email}}
            </div>
        </div>

    </div>
    <div class="table">
        <table>
            <thead>
                <tr>
                    <th>Qty</th>
                    <th>Product</th>
                    <th>Description</th>
                    <th>Subtotal</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $i)
                @foreach ($details as $item)
                @if ($item->id == $i->id)
                <tr>
                    <td>{{$item->quantity}}</td>
                    <td>{{$item->product->name}}</td>
                    <td>{{$item->product->description}}</td>
                    <td>${{$item->amount}}</td>
                </tr>
                @endif
                @endforeach
                @endforeach
            </tbody>
        </table>
    </div>

</body>

</html>