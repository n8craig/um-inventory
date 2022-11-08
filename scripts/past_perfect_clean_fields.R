
# Remove all NA cols ----
df <- df[ , colSums(is.na(df)) < nrow(df)]

## Convert dates ----

# catdate
df$catdate <- as.numeric(df$catdate) %>% 
  excel_numeric_to_date(.)

# colldate
df$colldate <- as.numeric(df$colldate) %>% 
  excel_numeric_to_date(.)

# conddate
df$conddate <- as.numeric(df$conddate) %>% 
  excel_numeric_to_date(.)

# invndate NOTE: Seems to read in as POSIXct
# Other dates do as well, LOOK INTO THIS
df$invndate <- as.numeric(df$invndate) %>% 
  excel_numeric_to_date(.)

# recdate
df$recdate <- lubridate::mdy(df$recdate)

# statusdate
df$statusdate <- as.numeric(df$statusdate) %>% 
  excel_numeric_to_date(.)

## Convert factors ----

# catby ###NOTE: Inconsistent naming
df$catby <- as_factor(df$catby)

# cattype only has one level
df$cattype <- as_factor(df$cattype)

# collection
df$collection <- as_factor(df$collection)

# condexam ###NOTE: Inconsistent naming
df$condexam <- as_factor(df$condexam)

# condition ###NOTE: Inconsistent naming
df$condition <- as_factor(df$condition)

# creator ###NOTE: Inconsistent naming
df$creator <- as_factor(df$creator)

# homeloc ###NOTE: Inconsistent naming
df$homeloc <- as_factor(df$homeloc)

# invnby
df$invnby <- as_factor(df$invnby)

# locfields
df$locfield1 <- as_factor(df$locfield1)
df$locfield3 <- as_factor(df$locfield3)
df$locfield4 <- as_factor(df$locfield4)

# objname
df$objname <- as_factor(df$objname)
df$objname2 <- as_factor(df$objname2)
df$othername <- as_factor(df$othername)

# recording
df$recas <- as_factor(df$recas)
df$recfrom <- as_factor(df$recfrom)

# status
df$status <- as_factor(df$status)

# statusby
df$statusby <- as_factor(df$statusby)

# udf
df$udf1 <- as_factor(df$udf1)
df$udf10 <- as_factor(df$udf10)
df$udf13 <- as_factor(df$udf13)
df$udf22 <- as_factor(df$udf22)
df$udf3 <- as_factor(df$udf3)
df$udf4 <- as_factor(df$udf4)
df$udf5 <- as_factor(df$udf5)
df$udf6 <- as_factor(df$udf6)
df$udf7 <- as_factor(df$udf7)
df$udf8 <- as_factor(df$udf8)
df$udf9 <- as_factor(df$udf9)

# updateby
df$updatedby <- as_factor(df$updatedby)

