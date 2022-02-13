Mass spectrometry data contains mass-charge ratio (m/z) in the x axis. NMR spectra contains ppm values in the x-axis. y-axis contains intensity.<br>

From the given xMin and xMax values, I calculated the x-axis like this: <br>

-- Calculate the increment: <br>
increment = (xMax-xMin/length(data). <br>
increment = 10.8014+1.2134 / 65536<br>
      = (10.8014-(-1.2134)/65536<br>
	      = 0.0001833313<br>
-- Generate x-axis: j, j+1, j+2,….., j+65536<br>

- Y-axis<br>
The ‘data’ key in JSON is the yaxis (Intensity). <br>

I created a line plot of x-axis, y-axis with x-label and y-label (“ppm” and “Intensity”) respectively.<br>
The chart is rendered using "R" language.
