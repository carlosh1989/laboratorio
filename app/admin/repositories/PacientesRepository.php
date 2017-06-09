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

    public function ingresar($data)
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
}