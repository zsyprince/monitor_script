<?php

function fooaaaaa($i,$a=[]){
	$i++;
	if($i == 15381) {
		return;
	}
	return fooaaaaa($i,$a);
}

fooaaaaa(1,[]);
