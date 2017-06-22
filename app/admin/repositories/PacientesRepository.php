<?php
namespace App\admin\repositories;

use App\Paciente;
use Eloquent;

class PacientesRepository 
{
    function __construct()
    {
		new Eloquent();
    }

    public function store($data)
    {
    	$paciente = Paciente::create($data);

    	if ($paciente->id) 
    	{
    		return $paciente->id;
    	} 
    	else 
    	{
    		return 'Error al guardar paciente.';
    	}
    }

    public function show($id)
    {

    }

    public function update($id,$data)
    {

    }

    public function destroy($id)
    {

    }
}