# BattleForRiddleEarth
Host for my solution to the May 19th Riddler, http://fivethirtyeight.com/features/the-battle-for-riddler-nation-round-2/.
I used a Markov Chain Monte Carlo to sample the giant state space of soldier deployments, and evaluated each deployment's success by how many wins it achieved over the old deployments provided from the previous war.
The old deployments are stored in castle-solutions.csv.
I also produced an animation of how one deployment from my MCMC fared versus the previous generals' deployments.
The code is all found in CastleInvasionMCMC.ipynb.
The animation is FinalBattleForRiddleEarth.gif.
The animation needed to be stitched together from many gifs since there were 1387 plots to put together.  This was done through makeGif.sh.
The corner plots of the MCMC are found in MCMC_CastleDeploymentCornerplots.pdf.
