<?php
namespace App\admin\controllers;

use App\Autorizado;
use App\Discapacidad;
use App\Municipio;
use App\Parroquia;
use App\Pensionado;
use App\admin\repositories\AutorizadosRepository as Repo;
use Carbon\Carbon;
use Controller,View,Token,Session,Arr,Message,Redirect;

class Autorizados extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    // localhost/proyecto/modulo/principal
    public function index()
    {
        $autorizados = Autorizado::all();
        View::show('index', compact('autorizados'));
    }

    // localhost/proyecto/modulo/principal/create
    public function create()
    {
        extract($_GET);
        View::show('create',compact('id_pensionado'));
    }

    // localhost/proyecto/modulo/principal/
    public function store()
    {
        //se manda los datos del formulario al repositorio para ser guardados
        $ingreso = Repo::ingresar($_POST);

        //la variable $ingreso debe devolver true o en su caso un mensaje diciendo el error resultante
        if (is_numeric($ingreso)) 
        {
            Redirect::send('admin/autorizados/'.$ingreso,'success', 'el autorizado se agrego exitosamente.');
        } 
        else 
        {
            list($id_pensionado,$mensaje) = explode('/', $ingreso);
            Redirect::send('admin/autorizados/create?id_pensionado='.$id_pensionado,'error', $mensaje);
        }
    }

    // localhost/proyecto/modulo/principal/ID
    public function show($id)
    {
        $autorizado = Autorizado::find($id);
        View::show('show', compact('autorizado'));
    }

    // localhost/proyecto/modulo/principal/ID/edit
    public function edit($id)
    {
        $autorizado = Autorizado::find($id);
        View::show('edit' , compact('autorizado'));
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