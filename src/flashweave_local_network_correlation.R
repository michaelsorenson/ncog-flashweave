library(corrplot)
local_nw_stats <- read.csv('data/analysis/NCOG_local_network_stats_with_envvar.csv', sep=',', row.names=1, header=T)
p_val <- 0.05
p <- cor.mtest(local_nw_stats)$p[1:5,]
M <- cor(local_nw_stats)[1:5,]
res1 <- cor.mtest(M, conf.level = 0.99)
# corrplot(p.mat = res1$p, insig='blank')
png('plots/correlation/NCOG_network_stats_correlated_with_envvar.png',width=10,height=4,units="in",res=800)
corrplot(M, type='upper', tl.col='black', tl.srt=45, diag=F, tl.cex=1.25, p.mat=p, sig.level=p_val, insig='blank')
dev.off()