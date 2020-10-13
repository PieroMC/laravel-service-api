@extends('layout.template')

@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="tile">
            <section class="invoice">
                <div class="row mb-4">
                    <div class="col-6">
                        <h2 class="page-header"><i class="fa fa-globe"></i>{{__('TecShop Inc')}}</h2>
                    </div>
                    <div class="col-6">
                        <h5 class="text-right">Date: {{$sale->date}}</h5>
                    </div>
                </div>
                <div class="row invoice-info">
                    <div class="col-4">From
                        <address><strong>TecShop Inc.</strong><br>518 Akshar Avenue<br>Gandhi Marg<br>New
                            Delhi<br>Email: tecshop@org.com</address>
                    </div>
                    <div class="col-4">To
                        <address>
                            <strong>{{$sale->client->name.' '.$sale->client->lastname}}</strong>
                            <br>{{$sale->client->address}}
                            <br>Phone: {{$sale->client->telephone}}
                            {{-- <br>Email: john.doe@example.com --}}
                        </address>
                    </div>
                    <div class="col-4">
                        <b>{{$sale->voucher_type->type}} #{{$sale->code}}</b><br><br>
                        <b>Employee :</b> {{$sale->user->employee->name.' '.$sale->user->employee->lastname}}<br>
                        <b>Document :</b>{{$sale->user->employee->number_document}}<br>
                        <b>Email :</b> {{$sale->user->employee->email}}
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 table-responsive">
                        <table class="table table-striped">
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
                </div>
                <div class="row d-print-none mt-2">
                    <div class="col-12 text-right">
                        <a class="btn btn-primary" href="{{route('print', $sale)}}" target="_blank"{{-- onclick="event.preventDefault(); document.getElementById('print').submit();"--}}>
                            <i class="fa fa-print"></i> Print
                        </a>
                        {{-- <form id="print" action="{{ route('print', $sale) }}" method="get" class="d-none">
                            @csrf
                        </form> --}}
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
@endsection

@section('script')

@endsection