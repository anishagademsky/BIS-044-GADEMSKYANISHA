results <- read.csv("PRESIDENT_precinct_primary.csv")
biden = 0 
trump = 0
n <-length (PRESIDENT_precinct_primary$votes)

for (i in 1:n)
{
  if (results$candidate[i] == "DONALD J TRUMP")
  {
    trump = trump + results$votes[i]
  }
  else if (results$candidate[i] == "JOSEPH R BIDEN")
    biden = biden + results$votes[i]
}


cat("Votes for Biden", biden)
cat("Votes for Trump", trump)
