<?php 
namespace App;
use App\Discapacidad;
use App\Municipio;
use App\Parroquia;
use \Illuminate\Database\Eloquent\Model;
 
class Pensionado extends Model {
    protected $table = 'pensionados';
	public $timestamps = false;
    //Ejemplo de definir campos
    protected $fillable = ['id_autorizado','id_discapacidad','id_municipio','id_parroquia','cedula','nombre','apellido','direccion','telefono','fecha_nacimiento','edad','estado_civil','fecha_registro','sexo'];


	public function municipio()
	{
		return $this->belongsTo(Municipio::class, 'id_municipio', 'id');
	}

	public function parroquia()
	{
		return $this->belongsTo(Parroquia::class, 'id_parroquia', 'id');
	}

	public function discapacidad()
	{
		return $this->belongsTo(Discapacidad::class, 'id_discapacidad', 'id');
	}

	public function autorizado()
	{
		return $this->hasOne(Autorizado::class, 'id_pensionado','id');
	}
}

