Create Procedure SpContinent
as 
begin
	Select ContinentId,ContinentName From Continent
end

Create Procedure spCountriesByContinentID 
@ContinentID int
as
begin
	Select CountryID , CountryName from Country
	where ContinentId= @ContinentID
end

create Procedure spCitiesByCountryID 
@CountryID int
as
begin
	Select CityID,CityName from Cities
	where CountryID=@CountryID
end