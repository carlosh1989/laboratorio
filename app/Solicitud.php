<?php 
namespace App;
use App\Paciente;
use \Illuminate\Database\Eloquent\Model;
 
class Solicitud extends Model {
    protected $table = 'solicitudes';
	public $timestamps = false;
    //Ejemplo de definir campos
    protected $fillable = ['id_paciente','fecha','observaciones'];

	public function paciente()
	{
		return $this->belongsTo(Paciente::class, 'id','id_paciente');
	}
}

