<?php
namespace App\admin\controllers;

use App\Discapacidad;
use App\Municipio;
use App\Parroquia;
use App\Pensionado;
use App\admin\repositories\PensionadosRepository as Repo;
use Carbon\Carbon;
use Controller,View,Token,Session,Arr,Message,Redirect;

class Pensionados extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    // localhost/proyecto/modulo/principal
    public function index()
    {
        $pensionados = Pensionado::all();
        View::show('index', compact('pensionados'));
    }

    // localhost/proyecto/modulo/principal/create
    public function create()
    {
        View::show('create');
    }

    // localhost/proyecto/modulo/principal/
    public function store()
    {
        //se manda los datos del formulario al repositorio para ser guardados
        $ingreso = Repo::ingresar($_POST);

        //la variable $ingreso debe devolver true o en su caso un mensaje diciendo el error resultante
        if (is_numeric($ingreso)) 
        {
            Redirect::send('admin/pensionados/'.$ingreso,'success', 'el pensionado se agrego exitosamente.');
        } 
        else 
        {
            Redirect::send('admin/pensionados/create','error', $ingreso);
        }
    }

    // localhost/proyecto/modulo/principal/ID
    public function show($id)
    {
        $pensionado = Pensionado::find($id);
        View::show('show', compact('pensionado'));
    }

    // localhost/proyecto/modulo/principal/ID/edit
    public function edit($id)
    {
        $pensionado = Pensionado::find($id);
        View::show('edit' , compact('pensionado'));
    }

    // localhost/proyecto/modulo/principal/ID/put
    public function update($id)
    {
        Repo::actualizar($_POST,$id);
    }

    // localhost/proyecto/modulo/principal/ID/delete
    public function destroy($id)
    {
        Pensionado::find($id)->delete();
        Redirect::send('admin/pensionados','success', 'El pensionado se borro con exito.');
    }

    public function redirect()
    {
        Redirect::send('admin/pensionados','error', 'el pensionado se agrego exitosamente.');
    }
    public function todos()
    {
        Arr::show(Repo::all());
    }
}