select tournaments.name, tournaments.region, totalPrizePurse from (select sum(earnings.prize_money) as totalPrizePurse, earnings.tournament from earnings group by earnings.tournament having sum(earnings.prize_money) >10000 order by max(earnings.prize_money) desc ) honors inner join tournaments on honors.tournament = tournaments.tournament_id