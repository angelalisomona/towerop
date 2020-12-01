@extends('layout')
@section('title', 'footer')
@section('content')
<p>This footer page is supposed to be something else.</p>
<div id="map-container" class="z-depth-1-half map-container" style="height: 500px">
  <iframe src="https://maps.google.com/maps?q=manhatan&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
    style="border:0" allowfullscreen></iframe>
</div>
<style>
.container{
  padding:15px;
  background:#ddd;
  margin:20px auto;
}

.nogap > .col{ padding-left:7.5px; padding-right: 7.5px}
.nogap > .col:first-child{ padding-left: 15px; }
.nogap > .col:last-child{ padding-right: 15px; }
</style>
<div class="container">
  <div class="text-center">
  Just add "nogap" class to 'row' container to prevent double padding between columns <br><br>
  </div>
  <div class="row nogap">
    <div class="col col-4">
        <div class="card text-center">
            <div class="card-header">
                <ul class="nav nav-tabs card-header-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Active</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
            </div>
            <div class="card-body">
                <h4 class="card-title">Special title treatment</h4>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>


    <div class="col col-4">
            <div class="card text-center">
                <div class="card-body">
                    <h4 class="card-title">Special title treatment</h4>
                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
    </div>

    <div class="col col-4">
            
        <div class="card text-center">
            <div class="card-header">
                    <ul class="nav nav-pills card-header-pills">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Active</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>
                    </ul>
            </div>
            <div class="card-body">
                <h4 class="card-title">Special title treatment</h4>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>
</div>
  
  </div>


 @endsection
