#Flash-Messages

Many web development frameworks include a way to show your user a simple message, usually success or error (some times called flash messages).  To do this without using a framework in PHP you would normally have to resort to using $_GET variables like 'page?updateSuccessful' and then use a myriad of if statements to detect for these status variables before triggering the message you want displayed.

PHP-Flash-Messages is an easy to use PHP class for handling flash messages that utilises the twitter bootstrap alert class.

###Usage

Using Flash-Messages is real simple, first you need to be using Twitter Bootstrap 3.x (jquery also required if you want to be able to manually close the alerts).

You will need to add railto/flash-messages to composer.json

```
	"require": {
        ...
        "railto/flash-messages": "1.0.*"
    },

```
and then run 'composer update'.

Once installed simply instantiate the Flash_Messages class in your script, either in the header or an init file if used

```
	$flash = new Flash_Messages();
	
```

To set a message, use the add method and pass it the type of alert (success, info, warning, danger) as well as the message to be displayed

```
	$flash->add('success', 'Message successfully sent');

```

To display messages to the user simply call the show method without any arguments

```
	$flash->show();
	
```
This will display the messages using the [Twitter Bootstrap alerts class](http://getbootstrap.com/components/#alerts) and if you have jQuery as well as the bootstrap js it will also allow the user to close the alert box.

That's it, there really is very little to this package but it provides a much needed solution to using flash messages in PHP applications.

### License
I believe in an open internet and that knowledge belongs to us all, as such this is released under the MIT license.