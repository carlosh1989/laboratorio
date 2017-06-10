<?php
namespace App\admin\controllers;

use App\Paciente;
use App\admin\repositories\PacientesRepository as Repo;
use Controller,View,Token,Session,Arr,Message,Redirect;
use System\tools\method\Data;

class Pacientes extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    // localhost/proyecto/modulo/principal
    public function index()
    {
        $pacientes = Paciente::all();
        View::show('index', compact('pacientes'));
    }

    // localhost/proyecto/modulo/principal/create
    public function create()
    {
        extract($_GET);
        View::show('create',compact('cedula'));
    }

    // localhost/proyecto/modulo/principal/
    public function store()
    {
        $registro = Repo::ingresar($_POST);

        if (is_numeric($registro)) 
        {
            Redirect::send('admin/pacientes/'.$registro,'success', 'El paciente se agrego exitosamente.');
        } 
        else 
        {
            Redirect::send('admin/pensionados/create','error', $registro);
        }
    }

    // localhost/proyecto/modulo/principal/ID
    public function show($id)
    {
        $paciente = Paciente::find($id);
        View::show('show', compact('paciente','id'));
    }

    // localhost/proyecto/modulo/principal/ID/edit
    public function edit($id)
    {
        View::show('edit' , compact('id'));
    }

    // localhost/proyecto/modulo/principal/ID/put
    public function update($id)
    {
        //Actualizar datos con el ID
    }

    // localhost/proyecto/modulo/principal/ID/delete
    public function destroy($id)
    {
        //Borrar un registro usando el ID
    }
}