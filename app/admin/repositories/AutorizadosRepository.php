<?php
namespace App\admin\repositories;

use App\Autorizado;
use App\Pensionado;
use Eloquent;

class AutorizadosRepository 
{
    function __construct()
    {
		new Eloquent();
    }

    public function ingresar($post)
    {
    	extract($post);
    	$existeAutorizado = Pensionado::where('cedula',$cedula)->first();
    	
    	if(!$existeAutorizado)
    	{
    		$autorizado = new Autorizado;
    		$autorizado->id_parentesco = $id_parentesco;
    		$autorizado->id_pensionado = $id_pensionado;
    		$autorizado->nombre = $nombre;
    		$autorizado->apellido = $apellido;
    		$autorizado->cedula = $cedula;
    		$autorizado->nacionalidad = $nacionalidad;
    		$autorizado->telefono = $telefono;
    		$autorizado->direccion = $direccion;
			//$pensionado = Pensionado::create($data);

			if( $autorizado->save())
			{
				//primero busca pensionado con el id para asi actualizar el id_autorizado
				$pensionado = Pensionado::find($id_pensionado);
				$pensionado->id_autorizado = $autorizado->id;
				$pensionado->save();
            	return $autorizado->id;
			}
			else
			{
            	return $id_pensionado.'/Error al guardar datos de pensionado';
			}
    	}
    	else
    	{
            return $id_pensionado.'/El pensionado ya se encuentra en el sistema';
    	}
    }
}