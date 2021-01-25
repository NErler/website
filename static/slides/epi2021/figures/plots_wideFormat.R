library(survival)
library(ggplot2)
library(magrittr)



pdf <- subset(JointAI::PBC, id %in% c(1:5))
pdf <- subset(pdf, id != 4 | day > 500)
pdf$bili[pdf$id == 4] <- pdf$bili[pdf$id == 4] + exp(0.3)


library(splines)


# coefs -----------------------------------------------------------------------
coefs <- lapply(unique(pdf$id), function(i) {
  mod <- lm(log(bili) ~ day, data = subset(pdf, id == i))
  mod2 <- lm(log(bili) ~ ns(day, df = 2), data = subset(pdf, id == i))
  data.frame(id = i,
             intercept = coef(mod)[1],
             slope = coef(mod)[2],
             b0 = coef(mod2)[[1]],
             b1 = coef(mod2)[[2]],
             b2 = coef(mod2)[[3]],
             max = max(subset(pdf, id == i)$day),
             min = min(subset(pdf, id == i)$day),
             mean = mean(log(subset(pdf, id == i)$bili)),
             rdi_ns = predict(mod2, newdata = data.frame(day = 0))
  )
}) %>% do.call(rbind, .)

coefs$x <- coefs$max/2
coefs$x2 <- coefs$x + 500
coefs$y <- coefs$intercept + coefs$slope * coefs$x
coefs$y2 <- coefs$intercept + coefs$slope * coefs$x2


# temp ---------------------------------------------------------------------
temp <- list(theme_classic(),
             theme(panel.background = element_rect(fill = "transparent",
                                                   color = "transparent"),
                   plot.background = element_rect(fill = "transparent",
                                                  color = "transparent"),
                   axis.text = element_blank(),
                   axis.ticks = element_blank(),
                   axis.line = element_line(color = "#4C566A"),
                   axis.title = element_blank()))


# p0 -------------------------------------------------------------------------
p0 <- pdf %>%
  ggplot(aes(x = day, y = log(bili), group = id)) +
  geom_point(color = "#D8DEE9", alpha = 0.6, size = 2) +
  geom_line(alpha = 0.5, color = "#D8DEE9") +
  temp
p0

ggsave(filename = "figures/p0_wideForm.png", plot = p0,
       width = 6, height = 4, bg = "transparent",
       dpi = 600,
       type = "cairo", antialias = "none")

# p_none ----------------------------------------------------------------------
p_none <- pdf %>%
  ggplot(aes(x = day, y = log(bili), group = id)) +
  geom_point(color = "#D8DEE9", alpha = 0.6, size = 2) +
  geom_line(alpha = 0.5, color = "#D8DEE9") +
  temp +
  geom_segment(x = 0, xend = max(pdf$day), y = 0, yend = 3, color = "#BF616A",
               size = 2) +
  geom_segment(x = 0, xend = max(pdf$day), y = 3, yend = 0, color = "#BF616A",
               size = 2)
p_none

ggsave(filename = "figures/p_none.png", plot = p_none,
       width = 6, height = 4, bg = "transparent",
       dpi = 600,
       type = "cairo", antialias = "none")


# p_first ---------------------------------------------------------------------
p_first <- pdf %>%
  ggplot(aes(x = day, y = log(bili), group = id)) +
  geom_point(data = subset(pdf, day %in% coefs$min), color = "#5E81AC",
             size = 5) +
  geom_point(color = "#D8DEE9", size = 2, alpha = 0.1) +
  geom_line(alpha = 0.1, color = "#D8DEE9") +
  temp
p_first

ggsave("figures/p_first.png", width = 6, height = 4, bg = "transparent",
       dpi = 600,
       type = "cairo", antialias = "none")


# p_mean ----------------------------------------------------------------------
p_mean <- pdf %>%
  ggplot(aes(x = day, y = log(bili), group = id)) +
  geom_segment(data = coefs, 
               aes(x = min, xend = max, y = mean, yend = mean),
               size = 1, linetype = 2, color = "#5E81AC") +
  geom_point(color = "#D8DEE9", size = 2, alpha = 0.1) +
  geom_line(alpha = 0.1, color = "#D8DEE9") +
  temp
p_mean

ggsave(filename = "figures/p_mean.png", plot = p_mean,
       width = 6, height = 4, bg = "transparent",
       dpi = 600,
       type = "cairo", antialias = "none")


# p_rd -------------------------------------------------------------------------
p_rd <- pdf %>%
  ggplot(aes(x = day, y = log(bili), group = id)) +
  geom_point(color = "#D8DEE9", size = 2, alpha = 0.1) +
  geom_line(alpha = 0.1, color = "#D8DEE9") +
  geom_abline(data = coefs, aes(intercept = intercept, slope = slope),
              alpha = 0.6, size = 0.5, color = "#5E81AC", lty = 2) +
  temp

p_rd

ggsave(filename = "figures/p_rd.png", plot = p_rd,
       width = 6, height = 4, bg = "transparent",
       dpi = 600,
       type = "cairo", antialias = "none")


# p_ri -------------------------------------------------------------------------
p_ri <- pdf %>%
  ggplot(aes(x = day, y = log(bili), group = id)) +
  geom_point(data = coefs, aes(x = 0, y = intercept), color = "#5E81AC", 
             size = 5) +
  geom_point(color = "#D8DEE9", size = 2, alpha = 0.1) +
  geom_line(alpha = 0.1, color = "#D8DEE9") +
  geom_abline(data = coefs, aes(intercept = intercept, slope = slope),
              alpha = 0.6, size = 0.5, color = "#5E81AC", lty = 2) +
  coord_cartesian(ylim = c(0, 3.8)) +
  temp

p_ri

ggsave(filename = "figures/p_ri.png", plot = p_ri,
       width = 6, height = 4, bg = "transparent",
       dpi = 600,
       type = "cairo", antialias = "none")



# p_rs ---------------------------------------------------------------------
p_rs <- p_ri +
  geom_segment(data = coefs, 
               aes(x = x, xend = x2,
                   y = y, yend = y), color = "#5E81AC", size = 1) +
  geom_segment(data = coefs, 
               aes(x = x2, xend = x2,
                   y = y, yend = y2), color = "#5E81AC", size = 1)

p_rs

ggsave(filename = "figures/p_rs.png", plot = p_rs,
       width = 6, height = 4, bg = "transparent",
       dpi = 600,
       type = "cairo", antialias = "none")





# p_ns -------------------------------------------------------------------------
p_ns <- pdf %>%
  ggplot(aes(x = day, y = log(bili), group = id)) +
  geom_point(data = subset(coefs, id %in% c(2, 4, 5)),
             aes(x = 0, y = rdi_ns),
             size = 5, shape = 21, color = '#5E81AC', fill = '#5E81AC') +
  geom_line(alpha = 0.1, color = "#D8DEE9") +
  geom_point(color = "#D8DEE9", size = 2, alpha = 0.1) +
  geom_smooth(data = subset(pdf, id %in% c(4, 5, 2)), color = "#5E81AC",
              method = "lm", formula = y ~ ns(x, df = 2), fullrange = TRUE,
              alpha = 0.5, size = 0.5, lty = 2, se = FALSE) +
  geom_curve(aes(x = 200, y = 1.1, xend = 750, yend = 1.5), 
             curvature = 0.4, lwd = 2, color = '#5E81AC',
             arrow = arrow(length = unit(0.03, "npc"))) +
  geom_curve(aes(x = 1500, xend = 2000, 
                 y = 1, yend = 1.25), 
             curvature = -0.07, lwd = 2, color = '#5E81AC',
             arrow = arrow(length = unit(0.03, "npc"))) +
  geom_curve(aes(x = 1000, xend = 1500, 
                 y = 1.45, yend = 1.6), 
             curvature = 0.12, lwd = 2, color = '#5E81AC',
             arrow = arrow(length = unit(0.03, "npc"))) +
  coord_cartesian(ylim = c(-0.15, 3.2)) +
  temp

p_ns


ggsave(filename = "figures/p_ns.png", plot = p_ns,
       width = 6, height = 4, bg = "transparent",
       dpi = 600,
       type = "cairo", antialias = "none")
