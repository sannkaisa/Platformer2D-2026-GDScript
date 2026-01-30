class_name ExampleSprite_2d # luokan nimi
extends Sprite2D # mistä luokasta periytyy

# jäsenmuuttujat
@export var _speed: float = 10

# Called when the node enters the scene tree for the first time.
# käytetään Noden alustukseen.
func _ready() -> void:
	print("Sijainti maailman koordinaatistossa: " + str(global_position)) # suhteessa maailmaan
	print("Lokaali sijainti: " + str(position)) # suhteessa vanhempaan
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# liikutetaan objektia
	var speed: float = 10.0
	speed *= delta # tekee nopeudesta FPS-riippumattoman eli nopeuden yksikkö on 
	# on pikseliä per sekunti eikä pikseliä per frame
	global_position.x += _speed * delta 
