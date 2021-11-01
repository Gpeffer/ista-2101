use reef-survey;

-- 1

select FishID, Family
	from fish;

select FishID, Family, CommonName
	from fish
	where CommonName = "Coney";

-- 3

select f.FishID, f.Family, fi.LocationID, fi.SurveyIndex
	from fish f
	join fishinfo fi
	on f.FishID = fi.FishID
	where fi.LocationID = "1";

-- 4

select 'fish' typ, f.FishID, f.family
	from fish f
	where f.FishID < "10"
	union all
	select 'fishinfo' typ, fi.LocationID, fi.SurveyIndex
	from fishinfo fi
	where fi.LocationID = "1";

-- 5

select f.FishID, f.Family, fi.LocationID, fi.SurveyIndex
	from fish f
	join fishinfo fi
	on f.FishID = fi.FishID
	where fi.LocationID = "1"
	order by f.FishID desc;

-- 6

select f.FishID, f.Family, fi.LocationID, fi.SurveyIndex
	from fish f
	join fishinfo fi
	on f.FishID = fi.FishID
	where fi.SurveyIndex = (select max(SurveyIndex) from fishinfo);

-- 7

select f.FishID, f.Family, fi.LocationID, fi.SurveyIndex
	from fish f
	left outer join fishinfo fi
	on f.FishID = fi.FishID
	where fi.SurveyIndex = (select max(SurveyIndex) from fishinfo);
