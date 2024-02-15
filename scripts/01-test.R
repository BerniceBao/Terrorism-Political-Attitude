#### Preamble ####
# Purpose: Testing simulated data
# Authors: Zheng(Zeb) Yang, Jingcheng Yang, Bernice(Yixuan) Bao
# Contact: zhengzeb.yang@mail.utoronto.ca, jingcheng.yang@mail.utoronto.ca, bernice.bao@mail.utoronto.ca
# Pre-requisites: -

# read in simulation file
sim <- read_csv(here::here("inputs/data/sim.csv"), 
                       show_col_types = FALSE)


min(sim$year, na.rm=TRUE) > 0


max(sim$year, na.rm=TRUE) <= 2019


sim$SampleSize |> min() >= 0

sim$StudyYear |> max() <= 2019
