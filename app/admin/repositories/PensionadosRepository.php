<?php
namespace App\admin\repositories;

use App\Pensionado;
use Carbon\Carbon;
use Eloquent;
use System\tools\rounting\Redirect;
use System\tools\session\Message;

class PensionadosRepository 
{
    function __construct()
    {
		new Eloquent();
    }

    public function ingresar($data)
    {
    	extract($data);
    	$existePensionado = Pensionado::where('cedula',$cedula)->first();
    	
    	if(!$existePensionado)
    	{
    		$pensionado = new Pensionado;
    		$pensionado->nombre = $nombre;
    		$pensionado->apellido = $apellido;
    		$pensionado->cedula = $cedula;
    		$pensionado->direccion = $direccion;
    		$pensionado->fecha_nacimiento = $fecha_nacimiento;
    		$pensionado->nacionalidad = $nacionalidad;
    		$pensionado->estado_civil = $estado_civil;
    		$pensionado->id_discapacidad = $discapacidad;
    		$pensionado->id_parroquia = $id_parroquia;
    		$pensionado->telefono = $telefono;
    		$pensionado->sexo = $sexo;
    		$pensionado->id_municipio = $id_municipio;
    		$pensionado->fecha_registro =  Carbon::now()->format('d-m-Y');
			//$pensionado = Pensionado::create($data);

			if( $pensionado->save())
			{
            	return $pensionado->id;
			}
			else
			{
            	return 'Error al guardar datos de pensionado';
			}
    	}
    	else
    	{
            return 'El pensionado ya se encuentra en el sistema';
    	}
    }

    public function actualizar($data,$id)
    {
        extract($data);
        $pensionado = Pensionado::find($id);
        $pensionado->nombre = $nombre;
        $pensionado->apellido = $apellido;
        $pensionado->cedula = $cedula;
        $pensionado->direccion = $direccion;
        $pensionado->fecha_nacimiento = $fecha_nacimiento;
        $pensionado->nacionalidad = $nacionalidad;
        $pensionado->estado_civil = $estado_civil;
        $pensionado->id_discapacidad = $discapacidad;
        $pensionado->id_parroquia = $id_parroquia;
        $pensionado->telefono = $telefono;
        $pensionado->sexo = $sexo;
        $pensionado->id_municipio = $id_municipio;
        $pensionado->save();
        Redirect::send('admin/pensionados','success', 'pensionado actualizado exitosamente..!');
    }
}