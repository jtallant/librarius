$(document).ready(function() {
	$('#btn-start').click(doTimer);
	$('#reset').click(doReset);
});


var t,
	currentMin,
	currentSec,
	totalTime,
	outStr,
	timer_is_on = 0,
	minutes = 00,
	seconds = 55;

function doReset() {
	minutes = 00;
	seconds = 00;
	$('#countdown').html('00:00');
	$('#btn-start').html('Start Timer');
	totalTime = currentMin + ":" + currentSec;
	clearTimeout(t);
	timer_is_on=0;
}

function timedCount() {
	seconds = seconds + 1;
	outStr = minutes + ":" + seconds;
	if (seconds <= 9) {
		outStr = minutes + ":" + "0" + seconds;
	}
	$('#countdown').html(outStr);
	$('#elapsedMin').val(minutes);
	$('#elapsedSec').val(seconds);
	if (seconds == 59) {
		seconds = 0;
		minutes = minutes + 1;
	}
	t=setTimeout("timedCount()",1000);	
}

function doTimer() {
	currentMin = minutes;
	currentSec = seconds;
	clearTimeout(t);
	if (!timer_is_on) {
		$('#btn-start').html('Pause Timer');
		timer_is_on=1;
		timedCount();
	} else {
		$('#btn-start').html('Start Timer');
		totalTime = currentMin + ":" + currentSec;
		if (seconds <= 9) {
			totalTime = currentMin + ":" + "0" + currentSec;
		}
		$('#countdown').html(totalTime);
		timer_is_on=0;
	}
}