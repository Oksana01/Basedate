alter PROCEDURE pr_statistic
(@Year int)
AS
begin
	if @Year in (select StatisticYear from Statistic)
	begin
		THROW 51000, 'The statistic already exists', 1
	end

	else 

	begin 
									declare
										@PStatisticYear int,
										@PEnterAge  int,
										@PGender varchar(10),
										@PEventStatus varchar(15)
										print '1'
									declare TestingСursor cursor for 
									
									select 
										YEAR(EventDate) as StatisticYear,
										EnterAge, Gender, EventName from Child
										 JOIN ChildHistory CH ON ChildID = CH.ChildID
									where YEAR(EventDate) = @Year;
									print '2'
									OPEN TestingCursor 
									FETCH NEXT FROM TestingCursor   INTO  @PStatisticYear,
																			@PEnterAge ,
																			@PGender ,
																			@PEventStatus
													print '3'

									WHILE @@FETCH_STATUS = 0
									BEGIN


										 insert  INTO  Statistic values (@PStatisticYear,
																				@PEnterAge ,
																				@PGender ,
																				@PEventStatus)
																	print '4'
										fetch next from TestingCursor into 
																				@PStatisticYear,
																				@PEnterAge ,
																				@PGender ,
																				@PEventStatus
																				print '5'
                                   END
    end;
   print '6'
   CLOSE TestingCursor;
   print '7'
   DEALLOCATE TestingCursor
end;

EXEC pr_statistic @Year = 2016
