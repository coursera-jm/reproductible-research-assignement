### Reproductible Research
#### Assignement
by Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD
Coursera June 2014 session 
  




<style>
body {
    font-size: 1.0em;
    font-family: "Arial, Helvetica, sans-serif"";
}
</style>

JMM, Document generated on 12-Jun-2014 at 10:14:36.

#### Introduction

 1. Loading and preprocessing the data

  - Show any code that is needed to Load the data (i.e. read.csv())
  - Process/transform the data (if necessary) into a format suitable for your analysis
  - What is mean total number of steps taken per day?

 2. For this part of the assignment, you can ignore the missing values in the dataset.

  - Make a histogram of the total number of steps taken each day
  - Calculate and report the mean and median total number of steps taken per day
  - What is the average daily activity pattern?

3. Make a time series plot (i.e. type = "l") of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all days (y-axis)

  - Which 5-minute interval, on average across all the days in the dataset, contains the maximum number of steps?
  - Imputing missing values

Note that there are a number of days/intervals where there are missing values (coded as NA). The presence of missing days may introduce bias into some calculations or summaries of the data.

4. Calculate and report the total number of missing values in the dataset (i.e. the total number of rows with NAs)

  - Devise a strategy for filling in all of the missing values in the dataset. The strategy does not need to be sophisticated. For example, you could use the mean/median for that day, or the mean for that 5-minute interval, etc.
  - Create a new dataset that is equal to the original dataset but with the missing data filled in.
  - Make a histogram of the total number of steps taken each day and Calculate and report the mean and median total number of steps taken per day. Do these values differ from the estimates from the first part of the assignment? What is the impact of imputing missing data on the estimates of the total daily number of steps?
  - Are there differences in activity patterns between weekdays and weekends?

For this part the weekdays() function may be of some help here. Use the dataset with the filled-in missing values for this part.

5. Create a new factor variable in the dataset with two levels -- "weekday" and "weekend" indicating whether a given date is a weekday or weekend day.

  - Make a panel plot containing a time series plot (i.e. type = "l") of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all weekday days or weekend days (y-axis). The plot should look something like the following, which was creating using simulated data:

Your plot will look different from the one above because you will be using the activity monitor data. Note that the above plot was made using the lattice system but you can make the same version of the plot using any plotting system you choose.

#### Methods

This analysis has been performed using R software package for statistical analysis and the following packages.
The version of R used was R version 3.1.0 (2014-04-10).




The variables included in this dataset are:

  - steps: Number of steps taking in a 5-minute interval (missing values are coded as NA)
  - date: The date on which the measurement was taken in YYYY-MM-DD format
  - interval: Identifier for the 5-minute interval in which measurement was taken

The dataset is stored in a comma-separated-value (CSV) file and there are a total of 17,568 observations in this dataset.

We downloaded the dataset from the internat and unzipped it. Ther we used R function read.csv to read the file:


and obtained ``0``/17,568 observations as expected.

#### Results


```r
library (datasets)
data(airquality)
fit <- lm(Ozone ~ Wind + Temp + Solar.R, data = airquality)
```

The table of regression coefficients shows as follow:

```r
library (xtable)
xt <- xtable(summary(fit))
print (xt, type="html")
```

```
## <!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
## <!-- Thu Jun 12 10:14:36 2014 -->
## <TABLE border=1>
## <TR> <TH>  </TH> <TH> Estimate </TH> <TH> Std. Error </TH> <TH> t value </TH> <TH> Pr(&gt;|t|) </TH>  </TR>
##   <TR> <TD align="right"> (Intercept) </TD> <TD align="right"> -64.3421 </TD> <TD align="right"> 23.0547 </TD> <TD align="right"> -2.79 </TD> <TD align="right"> 0.0062 </TD> </TR>
##   <TR> <TD align="right"> Wind </TD> <TD align="right"> -3.3336 </TD> <TD align="right"> 0.6544 </TD> <TD align="right"> -5.09 </TD> <TD align="right"> 0.0000 </TD> </TR>
##   <TR> <TD align="right"> Temp </TD> <TD align="right"> 1.6521 </TD> <TD align="right"> 0.2535 </TD> <TD align="right"> 6.52 </TD> <TD align="right"> 0.0000 </TD> </TR>
##   <TR> <TD align="right"> Solar.R </TD> <TD align="right"> 0.0598 </TD> <TD align="right"> 0.0232 </TD> <TD align="right"> 2.58 </TD> <TD align="right"> 0.0112 </TD> </TR>
##    </TABLE>
```

#### Discussion

The test dataset provided was very limited in size ( rows) compared to the training set ( rows), the test sample representing % of the total number of samples.

#### Conclusion

#### References

1. R Core Team. R: A language and environment for statistical computing. URL: http://www.R-project.org. R Foundation for Statistical Computing, 2013.

2. Seber, George AF, and Alan J. Lee. Linear regression analysis. Vol. 936. Wiley, 2012.

3. R Markdown Page. URL: http://www.rstudio.com/ide/docs/authoring/using_markdown. 

