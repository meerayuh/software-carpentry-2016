library(dplyr)
dat=read.csv(file.choose())
view(dat)
dat=read.csv(file.choose())
view(dat)
View(dat)
head(dat)
glimpse(dat)
glimpse(dat)
dim(dat)
select(dat, order, species)
select select(dat, starts_with('adult'))
select(dat, -order)
filter(dat, order=="Carnivora")
filter(dat, order=="Carnivora" & adult_body_mass_g<5000)
head(mammals)
head(dat)
a = group_by(dat, order)
b = summarize(a, mean_mass = mean(adult_body_mass_g, na.rm = TRUE))
B
b
c=mutate(a, mean_mass = mean(adult_body_mass_g, na.rm = TRUE))
head(c)
c
glimpse(c)
sd_mass = sd(adult_body_mass_g, na.rm = TRUE)
d=summarize(a, mean_mass = mean(adult_body_mass_g, na.rm = TRUE)),
sd_mass = sd(adult_body_mass_g, na.rm = TRUE)
d = summarize(a, mean_mass = mean(adult_body_mass_g, na.rm = TRUE)),
d = summarize(a, mean_mass = mean(adult_body_mass_g, na.rm = TRUE)),
sd_mass = sd(adult_body_mass_g, na.rm = TRUE)
d = summarize(a, mean_mass = mean(adult_body_mass_g, na.rm = TRUE)), sd_mass = sd(adult_body_mass_g, na.rm = TRUE)
d = summarize(a, mean_mass = mean(adult_body_mass_g, na.rm = TRUE),
              sd_mass = sd(adult_body_mass_g, na.rm = TRUE))
e=mutate(a, mean_mass=mean(adult_body_mass_g, na.rm = TRUE), norm_mass=adult_body_mass_g / mean_mass)
?na.rm
??na.rm
e <- dat %>%
  group_by(order) %>%
  mutate(mean_mass=mean(adult_body_mass_g, na.rm=TRUE))
e <- dat %>%
  group_by(order) %>%
  mutate(mean_mass=mean(adult_body_mass_g, na.rm=TRUE)
         norm_mass = adult_body_mass_g / mean_mass) %>%
  arrange(desc(norm_mass)) %>%
  select(species, norm_mass, adult_body_mass_g)
e <- dat %>%
  group_by(order) %>%
  mutate(mean_mass=mean(adult_body_mass_g, na.rm=TRUE)
         normalized_mass = adult_body_mass_g / mean_mass) %>%
  arrange(desc(normalized_mass)) %>%
  select(species, normalized_mass, adult_body_mass_g)
e <- dat %>%
  group_by(order) %>%
  mutate(mean_mass=mean(adult_body_mass_g, na.rm=TRUE),
         normalized_mass = adult_body_mass_g / mean_mass) %>%
  arrange(desc(normalized_mass)) %>%
  select(species, normalized_mass, adult_body_mass_g)
e
head(select(mammals, order, species))
head(select(dat, order, species))
select(dat, order, species)
most_species <- dat%>%
  group_by(order) %>%
  summarize(sp_count=length(species)) %>%
  arrange(desc(sp_count))
most_species
range_size_species <- dat%>%
  group_by(order) %>%
  summarize(max(adult_body_mass_g, na.rm+TRUE)-min(adult_body_mass_g, na.rm+TRUE)) %>%
  arrange(desc(mass_range))
range_size_species
range_size_species <- dat%>%
  group_by(order) %>%
  summarize(max(adult_body_mass_g, na.rm+TRUE)-min(adult_body_mass_g, na.rm+TRUE)) %>%
  arrange(desc(mass_range))
range_size_species <- dat%>%
  group_by(order) %>%
  summarize(max(adult_body_mass_g, na.rm=TRUE)-min(adult_body_mass_g, na.rm=TRUE)) %>%
  arrange(desc(mass_range))
range_size_species
range_size_species <- dat %>%
  group_by(order) %>%
  summarize(max(adult_body_mass_g, na.rm=TRUE)-min(adult_body_mass_g, na.rm=TRUE)) %>%
  arrange(desc(mass_range))
range_size_species
range_size_species <- dat %>%
  group_by(order) %>%
  summarize(max(adult_body_mass_g, na.rm=TRUE)-min(adult_body_mass_g, na.rm=TRUE)) %>%
  arrange(desc(mass_range))
range_size_species <- dat %>%
  group_by(order) %>%
  summarize(max(mass_range = adult_body_mass_g, na.rm=TRUE)-min(adult_body_mass_g, na.rm=TRUE)) %>%
  arrange(desc(mass_range))
range_size_species <- dat %>%
  group_by(order) %>%
  summarize(mass_range + max(adult_body_mass_g, na.rm=TRUE)-min(adult_body_mass_g, na.rm=TRUE)) %>%
  arrange(desc(mass_range))
range_size_species <- dat %>%
  group_by(order) %>%
  summarize(mass_range = max(adult_body_mass_g, na.rm=TRUE)-min(adult_body_mass_g, na.rm=TRUE)) %>%
  arrange(desc(mass_range))
range_size_species
#species of order Carnivora with largest body length to body mass ratio:
carn_lenght_mass <- dat%>%
  filter(order=='Carnivora') %>%
  mutate(lenght_mass_ratio = adult_head_body_len_mm / adult_body_mass_g) %>%
  arrange(desc(length_mass_ratio))
carn_lenght_mass <- dat%>%
  filter(order=='Carnivora') %>%
  mutate(length_mass_ratio = adult_head_body_len_mm / adult_body_mass_g) %>%
  arrange(desc(length_mass_ratio))
carn_lenght_mass
