# Install rjson package to read json files
install.packages("rjson",repos = "http://cran.us.r-project.org");

# Load package
require("rjson")
d = fromJSON(file="data.json");
increment = (d$xMax - d$xMin) / (length(d$data)-1)

# Calculate x-axis 
xaxis = seq(from = d$xMin, to = d$xMax, by = increment);

# Calculateb percentage
yaxis = d$data*100/max(d$data)

png("NMRspectraplot.png", width=720, height=480)
plot(xaxis, yaxis, type="l", col="red", xlab="ppm", ylab="Intensity", main="NMR Spectra: Compound 10935")
dev.off()
