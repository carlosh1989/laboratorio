<?php
namespace App\admin\controllers;

use App\admin\controllers\Pensionados;
use App\admin\models\PrincipalModel;
use Controller,View,Token,Session,Arr,Message;
use System\tools\rounting\Redirect;

class Principal extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
		Redirect::to('admin/pensionados');
    }
}