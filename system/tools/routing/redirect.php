<?php
namespace System\tools\rounting;

use System\tools\session\Message;

class Redirect {

	public static function to($url)
	{
        header('Location: '.baseUrl.''.$url.'');
	}

	public static function send($url,$type,$message)
	{
		Message::send($type,$message);
	    header('Location: '.baseUrl.''.$url.'');	
	}
}