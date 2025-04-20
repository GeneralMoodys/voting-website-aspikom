<?php

namespace App\Imports;

use App\Models\VoteSession;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class DBVoteImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
{
    // Lewati baris kosong (semua kolom kosong)
    if (
        empty($row['universitas']) &&
        empty($row['prodi']) &&
        empty($row['pin_sesi_1']) &&
        empty($row['pin_sesi_2'])
    ) {
        return null;
    }

    return new VoteSession([
        'universitas' => $row['universitas'],
        'prodi'       => $row['prodi'],
        'pin_sesi_1'  => $row['pin_sesi_1'],
        'pin_sesi_2'  => $row['pin_sesi_2'],
    ]);
}

}

