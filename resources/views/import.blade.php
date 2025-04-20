@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h2>Import Data Vote dari Excel</h2>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <form action="{{ route('import-db_vote.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="excel_file" class="form-label">Upload File Excel</label>
            <input type="file" name="excel_file" id="excel_file" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Import</button>
    </form>
</div>
@endsection
