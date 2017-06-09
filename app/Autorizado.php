<?php 
namespace App;
use App\Parentesco;
use App\Pensionado;
use \Illuminate\Database\Eloquent\Model;
 
class Autorizado extends Model {
    protected $table = 'autorizados';
	public $timestamps = false;
    //Ejemplo de definir campos
    //protected $fillable = ['username','email','password'];
    protected $fillable = ['id_pensionado','id_parentesco','cedula','nombre','apellido','direccion','telefono'];

	public function pensionado()
	{
		return $this->belongsTo(Pensionado::class, 'id','id_autorizado');
	}

	public function parentesco()
	{
		return $this->hasOne(Parentesco::class, 'id','id_parentesco');
	}
}

