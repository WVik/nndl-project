SELECT name FROM station WHERE bikes_available > 10 AND city != "San Jose"
SELECT payment_method FROM Customers GROUP BY payment_method ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1
SELECT FIRST_NAME, DEPARTMENT_ID FROM employees WHERE LAST_NAME = 'McEwen'
SELECT T1.park_name FROM park AS T1 JOIN home_game AS T2 ON T1.park_id = T2.park_id WHERE T2.year = 2008 ORDER BY T2.attendance DESC LIMIT 1
SELECT AVG(long) FROM station WHERE id NOT IN (SELECT station_id FROM status WHERE bikes_available > 10)
SELECT t3.title FROM writes AS t2 JOIN author AS t1 ON t2.authorid = t1.authorid JOIN paper AS t3 ON t2.paperid = t3.paperid WHERE t1.authorname = "oren etzioni" ORDER BY t3.year DESC LIMIT 1;
SELECT count(*) FROM Products AS T1 JOIN Ref_Colors AS T2 ON T1.color_code = T2.color_code JOIN Product_Characteristics AS T3 ON T1.product_id = T3.product_id JOIN Characteristics AS T4 ON T3.characteristic_id = T4.characteristic_id WHERE T2.color_description = "red" AND T4.characteristic_name = "slow"
SELECT t1.keyword FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid = t1.kid JOIN publication AS t3 ON t3.pid = t5.pid JOIN conference AS t2 ON t3.cid = t2.cid WHERE t2.name = "VLDB" GROUP BY t1.keyword HAVING COUNT(DISTINCT t3.pid) > 100;
SELECT count(DISTINCT Software_Platform) FROM device
SELECT title FROM Movie WHERE year < 1980 OR director = 'James Cameron'
SELECT count(*) FROM Papers
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON T1.artist_id = T2.id WHERE T2.name LIKE '%Led%'
SELECT T1.student_id, T2.personal_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT city_name FROM city WHERE population = (SELECT MAX(population) FROM city);
SELECT count(*) FROM PROFESSOR AS T1 JOIN DEPARTMENT AS T2 ON T1.DEPT_CODE = T2.DEPT_CODE WHERE T2.DEPT_NAME = 'Accounting' OR T2.DEPT_NAME = 'Biology'
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars = 3 OR T1.stars = 4
SELECT DISTINCT last_name FROM Maintenance_Engineers
SELECT sum(salary) FROM salary JOIN player ON salary.player_id = player.player_id WHERE player.name_first = 'Len' AND player.name_last = 'Barker' AND salary.year BETWEEN 1985 AND 1990
SELECT avg(T1.HS) , max(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes'
SELECT river_name FROM river WHERE LENGTH = ( SELECT MIN ( LENGTH ) FROM river );
SELECT count(*) FROM professor WHERE prof_high_degree = 'Ph.D.'
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";
SELECT * FROM election
SELECT name FROM Person WHERE name NOT IN (SELECT name FROM PersonFriend WHERE job = 'student')
SELECT t2.policy_type_code FROM Customers AS t1 JOIN Customers_Policies AS t2 ON t1.Customer_ID = t2.Customer_ID WHERE t1.Customer_name = "Dayana Robel"
SELECT Fname FROM Student WHERE Age > 22
SELECT COUNT(t4.paperId), t3.authorId FROM paperKeyphrase AS t1 JOIN keyphrase AS t2 ON t1.keyphraseId = t2.keyphraseId JOIN paper AS t4 ON t4.paperId = t1.paperId JOIN writes AS t3 ON t3.paperId = t4.paperId WHERE t2.keyphraseName = "syntactic parsing" GROUP BY t3.authorId ORDER BY COUNT(t4.paperId) DESC;
SELECT Position FROM player GROUP BY Position HAVING avg(Points) > 20
SELECT avg(salary), max(salary) FROM employee
SELECT name FROM aircraft WHERE distance > (SELECT avg(distance) FROM aircraft)
SELECT date_from, date_to FROM Project_Staff WHERE role_code = 'researcher'
SELECT sum(enr) FROM College WHERE cName NOT IN (SELECT cName FROM Tryout WHERE pPos = "goalie")
SELECT name FROM station WHERE city = "Palo Alto" AND id NOT IN ( SELECT end_station_id FROM trip GROUP BY end_station_id HAVING COUNT(*) > 100 )
SELECT river_name FROM river WHERE LENGTH = (SELECT MAX(LENGTH) FROM river WHERE traverse IN (SELECT state_name FROM state WHERE area = (SELECT MIN(area) FROM state))) AND traverse IN (SELECT state_name FROM state WHERE area = (SELECT MIN(area) FROM state));
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'
SELECT line_1 FROM Addresses WHERE address_id IN (SELECT address_id FROM Students) AND address_id IN (SELECT address_id FROM Teachers)
SELECT T2.Member_Name FROM party_events AS T1 JOIN member AS T2 ON T1.Member_in_charge_ID = T2.Member_ID GROUP BY T1.Member_in_charge_ID ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM ship
SELECT degrees FROM degrees AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T2.campus = "San Jose State University" AND T1.year = 2000
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num WHERE T2.enroll_grade = 'C'
SELECT Nationality FROM pilot GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC
SELECT count(*) , Party_ID FROM party_events GROUP BY Party_ID
SELECT avg(Product_Price) FROM Products
SELECT Location FROM school ORDER BY Enrollment ASC
SELECT state_name FROM state WHERE area = (SELECT MAX(area) FROM state);
SELECT Service_ID, Event_Details FROM Events 
SELECT Patient.Name, Patient.Phone FROM Patient JOIN Appointment ON Patient.SSN = Appointment.Patient GROUP BY Patient.SSN HAVING COUNT(Appointment.AppointmentID) > 1
SELECT T1.id, T1.name FROM architect AS T1 JOIN bridge AS T2 ON T1.id = T2.architect_id GROUP BY T1.id, T1.name HAVING count(*) >= 3
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT COUNT(*) AS number_of_invoices, SUM(total) AS total_billed FROM invoices WHERE billing_state = 'CA'
SELECT title FROM Movie WHERE director = 'Steven Spielberg'
SELECT document_id FROM Documents WHERE document_type_code = "CV" AND document_id NOT IN (SELECT document_id FROM Documents_with_expenses)
SELECT COUNT(DISTINCT t1.name) FROM CAST AS t2 JOIN actor AS t1 ON t2.aid = t1.aid JOIN movie AS t3 ON t3.mid = t2.msid WHERE t1.nationality = "Iran" AND t3.director = "Jim Jarmusch";
SELECT t3.title FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN venue AS t4 ON t4.venueid = t3.venueid WHERE t1.keyphrasename = "TAIL" AND t4.venuename = "NIPS";
SELECT COUNT(*) FROM RESTAURANT AS t1 JOIN LOCATION AS t2 ON t1.ID = t2.RESTAURANT_ID WHERE t2.CITY_NAME = "palo alto" AND t1.FOOD_TYPE = "french";
SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1
SELECT Name FROM Physician WHERE EmployeeID NOT IN (SELECT Physician FROM Appointment)
SELECT order_id FROM Orders ORDER BY date_order_placed DESC LIMIT 1
SELECT COUNT(city_name) FROM city WHERE state_name = "texas";
SELECT fname FROM Authors WHERE lname = "Ueno"
SELECT "Famous_Title", "Age" FROM artist ORDER BY "Age" DESC
SELECT count(*) FROM pilot
SELECT T1.problem_id FROM Problems AS T1 JOIN Staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_last_name = "Bosco"
SELECT Campus FROM Campuses WHERE Location = "Chico"
SELECT avg(age), job FROM Person WHERE gender = 'male' GROUP BY job
SELECT email FROM user_profiles WHERE name = "Mary"
SELECT color_code, color_description FROM Products JOIN Ref_Colors ON Products.color_code = Ref_Colors.color_code WHERE product_name = "chervil"
SELECT T1.Title, T1.Director FROM movie AS T1 WHERE T1.Year <= 2000 ORDER BY T1.Gross_worldwide DESC LIMIT 1
SELECT count(*) FROM customers WHERE state = "CA";
SELECT COUNT(DISTINCT t5.title) FROM organization AS t2 JOIN author AS t1 ON t2.oid = t1.oid JOIN writes AS t4 ON t4.aid = t1.aid JOIN publication AS t5 ON t4.pid = t5.pid JOIN journal AS t3 ON t5.jid = t3.jid WHERE t3.name = "PVLDB" AND t2.name = "University of Michigan";
SELECT t1.title FROM paper AS t1 JOIN venue AS t2 ON t1.venueId = t2.venueId WHERE t1.year = 2015 AND t2.venueName = "pldi";
SELECT The SQL queries provided are examples of how to retrieve information from the database based on the given schema. The queries are focused on retrieving information related to papers published in the "chi" venue. To answer the question "chi papers", the following query can be used: SELECT DISTINCT t1.paperid FROM venue AS t2 JOIN paper AS t1 ON t2.venueid = t1.venueid WHERE t2.venuename = "chi"; This query retrieves the distinct paper IDs from the paper table where the venue name is "chi". To answer the question "Show me chi papers", the same query can be used: SELECT DISTINCT t1.paperid FROM venue AS t2 JOIN paper AS t1 ON t2.venueid = t1.venueid WHERE t2.venuename = "chi"; To answer the question "papers in chi", the same query can be used: SELECT DISTINCT t1.paperid FROM venue AS t2 JOIN paper AS t1 ON
SELECT t1.name FROM domain_author AS t4 JOIN author AS t1 ON t4.aid = t1.aid JOIN DOMAIN AS t3 ON t3.did = t4.did JOIN organization AS t2 ON t2.oid = t1.oid WHERE t3.name = "Databases" AND t2.name = "University of Michigan";
SELECT T2.Name FROM captain AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID WHERE T1.Rank = 'Midshipman' INTERSECT SELECT T2.Name FROM captain AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID WHERE T1.Rank = 'Lieutenant'
SELECT DISTINCT Position FROM pilot WHERE Age > 30
SELECT t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name JOIN LOCATION AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.food_type = "french" AND t1.rating > 2.5;
SELECT Player_name FROM player ORDER BY Votes DESC LIMIT 1
SELECT roomName FROM Rooms JOIN Reservations ON Rooms.RoomId = Reservations.Room WHERE Reservations.FirstName LIKE "%ROY%"
SELECT T1.Attraction_Type_Description, T1.Attraction_Type_Code FROM Ref_Attraction_Types AS T1 JOIN Tourist_Attractions AS T2 ON T1.Attraction_Type_Code = T2.Attraction_Type_Code GROUP BY T1.Attraction_Type_Description, T1.Attraction_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM pilot WHERE Age <= 30 ORDER BY Name DESC
SELECT park_name FROM home_game WHERE year = 2008 ORDER BY attendance DESC LIMIT 1
SELECT t1.name, t3.house_number, t3.street_name, t2.city_name, t2.county FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name JOIN location AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.food_type = "french" AND t1.rating > 2.5;
SELECT building, room_number, semester, year FROM section WHERE course_id IN (SELECT course_id FROM course WHERE dept_name = 'Psychology') ORDER BY title
SELECT DISTINCT k.keyphraseName FROM author a JOIN writes w ON a.authorId = w.authorId JOIN paper p ON w.paperId = p.paperId JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId WHERE a.authorName = "Luke Zettlemoyer";
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T2.balance > T3.balance
SELECT DISTINCT mill.name FROM mill JOIN architect ON mill.architect_id = architect.id JOIN bridge ON architect.id = bridge.architect_id WHERE bridge.length_meters > 80
SELECT max(gradepoint), min(gradepoint) FROM Gradeconversion
SELECT count(*) FROM Customers WHERE customer_id IN (SELECT customer_id FROM Accounts)
SELECT count(*) FROM Instruments WHERE SongId = (SELECT SongId FROM Songs WHERE Title = "Le Pop")
SELECT T2.Name, T1.Decoration_Theme FROM round AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID
SELECT name FROM user_profiles WHERE email LIKE "%superstar%" OR email LIKE "%edu%"
SELECT incident_type_description FROM Ref_Incident_Type WHERE incident_type_code = "VIOLENCE"
SELECT t5.title FROM organization AS t2 JOIN author AS t1 ON t2.oid = t1.oid JOIN writes AS t3 ON t3.aid = t1.aid JOIN publication AS t4 ON t3.pid = t4.pid JOIN journal AS t5 ON t4.jid = t5.jid WHERE t5.name = "PVLDB" AND t2.name = "University of Michigan";
SELECT eid, salary FROM employee WHERE name = "Mark Young"
SELECT t2.title FROM writes AS t1 JOIN paper AS t2 ON t1.paperId = t2.paperId JOIN author AS t3 ON t1.authorId = t3.authorId WHERE t3.authorName = "sharon goldwater";
SELECT T2.EmployeeID FROM Department AS T1 JOIN Physician AS T2 ON T1.Head = T2.EmployeeID GROUP BY T1.DepartmentID ORDER BY count(T1.DepartmentID) LIMIT 1
SELECT Type, Nationality FROM ship
SELECT DISTINCT t1.paperid FROM venue AS t2 JOIN paper AS t1 ON t2.venueid = t1.venueid WHERE t1.year = 2015 AND t2.venuename = "pldi";
SELECT count(DISTINCT Scientist) FROM AssignedTo AS T1 JOIN Projects AS T2 ON T1.Project = T2.Code WHERE T2.Hours > 300
SELECT count(*) FROM school
SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t3.paperid FROM paper AS t1 JOIN cite AS t2 ON t1.paperid = t2.citingpaperid JOIN paper AS t3 ON t2.citedpaperid = t3.paperid JOIN venue AS t4 ON t4.venueid = t3.venueid WHERE t4.venuename = "NIPS" ORDER BY t1.numCiting DESC;
SELECT cust_name, acc_bal FROM customer WHERE cust_name LIKE '%a%'
SELECT price_range FROM Hotels WHERE star_rating_code = '5'
SELECT Festival_Name FROM festival_detail WHERE Year = 2007
SELECT T1.ID FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID = T2.ID WHERE T2.semester = 'Fall' AND T2.year = 2009 EXCEPT SELECT T1.ID FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID = T2.ID WHERE T2.semester = 'Spring' AND T2.year = 2010
SELECT T2.DEPARTMENT_NAME, COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.DEPARTMENT_ID = T2.DEPARTMENT_ID GROUP BY T2.DEPARTMENT_NAME
SELECT T1.date_order_placed FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeramie"
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1
SELECT c.Name, c.Population FROM country c JOIN roller_coaster r ON c.Country_ID = r.Country_ID WHERE r.Height = (SELECT MAX(Height) FROM roller_coaster)
SELECT draft_details FROM Document_Drafts WHERE document_id = 7;
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = t2.campus JOIN degrees AS T3 ON T1.id = t3.campus AND t2.year = t3.year WHERE t2.year = 2001 ORDER BY t3.degrees ASC LIMIT 1
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT Position FROM player WHERE Points > 20 INTERSECT SELECT Position FROM player WHERE Points < 10
SELECT T1.cust_name FROM customer AS T1 LEFT JOIN loan AS T2 ON T1.cust_ID = T2.cust_ID WHERE T2.loan_type IS NULL OR T2.loan_type != 'Mortgages'
SELECT count(*) FROM Student AS T1 JOIN Voting_record AS T2 ON T1.StuID = T2.Class_Senator_Vote WHERE T1.Sex = "M" AND T2.Election_Cycle = "Fall"
SELECT Fname FROM Student WHERE StuID IN (SELECT stuid FROM Lives_in WHERE dormid = (SELECT dormid FROM Has_amenity GROUP BY dormid ORDER BY COUNT(*) DESC LIMIT 1))
SELECT Budget_Type_Description FROM Ref_Budget_Codes WHERE Budget_Type_Code = "ORG"
SELECT COUNT(*) AS num_airports, country FROM airports GROUP BY country ORDER BY num_airports DESC
SELECT employee_name FROM Employees WHERE employee_id NOT IN (SELECT employee_id FROM Circulation_History)
SELECT DISTINCT COUNT(t4.citedPaperId) FROM paper AS t3 JOIN cite AS t4 ON t3.paperId = t4.citedPaperId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "Daniel Jurafsky";
SELECT t2.title FROM publication AS t2 JOIN conference AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB";
SELECT T2.product_name, COUNT(DISTINCT T1.customer_id) FROM Orders AS T1 JOIN Order_Items AS T2 ON T1.order_id = T2.order_id JOIN Products AS T3 ON T2.product_id = T3.product_id GROUP BY T2.product_name
SELECT Class FROM race GROUP BY Class HAVING COUNT(*) >= 2
SELECT max(Points) FROM climber WHERE Country = 'United Kingdom'
SELECT name FROM instructor WHERE ID NOT IN (SELECT ID FROM teaches WHERE semester = 'Spring')
SELECT title, credits FROM course WHERE (building, room_number) IN (SELECT building, room_number FROM classroom ORDER BY capacity DESC LIMIT 1)
SELECT Official_Name FROM city ORDER BY Population DESC
SELECT T1.name FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = "Japanese" AND T2.points > 5
SELECT T1.first_name FROM Staff AS T1 JOIN Complaints AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY COUNT(*) DESC LIMIT 5
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id WHERE T1.title = "Balls to the Wall"
SELECT population FROM state WHERE state_name = "california";
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1
SELECT Physician.EmployeeID, Affiliated_With.Department FROM Physician JOIN Affiliated_With ON Physician.EmployeeID = Affiliated_With.Physician WHERE Affiliated_With.PrimaryAffiliation = true
SELECT highest_elevation FROM highlow WHERE state_name = "delaware";
SELECT count(DISTINCT T1.College) FROM match_season AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id WHERE T2.Name = "Columbus Crew"
SELECT DName, Room FROM Department WHERE DNO IN (SELECT DNO FROM Course WHERE CName = "INTRODUCTION TO COMPUTER SCIENCE")
SELECT Player FROM player WHERE College = "UCLA"
SELECT traverse FROM river WHERE LENGTH = (SELECT MAX(LENGTH) FROM river); 
SELECT T1.Fname FROM Student AS T1 JOIN Lives_in AS T2 ON T1.StuID = T2.stuid JOIN Dorm AS T3 ON T3.dormid = T2.dormid JOIN Has_amenity AS T4 ON T3.dormid = T4.dormid GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Appointment
SELECT Open_Date, Open_Year FROM shop WHERE Shop_Name = "Apple"
SELECT DISTINCT t3.paperid FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t5 ON t4.authorid = t5.authorid WHERE t5.authorname = "brian curless" AND t1.keyphrasename = "keyphrase0";
SELECT P.Name FROM program AS P JOIN broadcast AS B ON P.Program_ID = B.Program_ID GROUP BY P.Program_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Location_Name FROM Locations WHERE Location_Name LIKE "%film%"
SELECT count(DISTINCT Rank) FROM captain
SELECT Employee_ID FROM Documents_to_be_Destroyed WHERE Destroyed_by_Employee_ID IS NOT NULL
SELECT T1.name FROM races AS T1 WHERE T1.year BETWEEN 2009 AND 2011
SELECT t1.title, t2.keyphraseName FROM paper AS t1 JOIN paperKeyphrase AS t3 ON t1.paperId = t3.paperId JOIN keyphrase AS t2 ON t3.keyphraseId = t2.keyphraseId JOIN venue AS t4 ON t4.venueId = t1.venueId WHERE t1.year = 2012 AND t4.venueName = "EMNLP-CoNLL" ORDER BY t1.numCiting DESC LIMIT 1;
SELECT member_name FROM member WHERE member_id NOT IN (SELECT member_in_charge_id FROM party_events)
SELECT avg(T3.Total_Passengers) FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T1.Aircraft = "Robinson R-22"
SELECT SUM(t4.citation_num) FROM organization AS t2 JOIN author AS t1 ON t2.oid = t1.oid JOIN writes AS t3 ON t3.aid = t1.aid JOIN publication AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan";
SELECT cust_name FROM customer WHERE acc_type = 'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type = 'checking'
SELECT document_status_description FROM Documents JOIN Ref_Document_Status ON Documents.document_status_code = Ref_Document_Status.document_status_code WHERE document_id = 1;
SELECT Name FROM channel ORDER BY Rating_in_percent DESC
SELECT T1.state FROM College AS T1 JOIN Player AS T2 ON T1.cName = T2.cName WHERE T2.pName = "Charles"
SELECT city, MAX(lat) FROM station GROUP BY city
SELECT count(*) , T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid GROUP BY T1.name ORDER BY count(*) DESC
SELECT t3.title FROM paper AS t3 JOIN paperkeyphrase AS t2 ON t3.paperid = t2.paperid JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN venue AS t4 ON t4.venueid = t3.venueid WHERE t1.keyphrasename = "TAIL" AND t4.venuename = "NIPS";
SELECT DISTINCT COUNT(t4.citedPaperId) FROM paper AS t3 JOIN cite AS t4 ON t3.paperId = t4.citedPaperId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "noah a smith";
SELECT Project_Details FROM Projects WHERE Project_ID IN (SELECT Project_ID FROM Documents WHERE Document_Name = "King Book")
SELECT T1.Payment_ID, T1.Date_Payment_Made, T1.Amount_Payment FROM Payments AS T1 WHERE T1.Payment_Method_Code = "Visa"
SELECT date_order_placed FROM Orders WHERE order_id IN (SELECT order_id FROM Shipments WHERE invoice_number = 10)
SELECT transaction_type_code FROM Transactions GROUP BY transaction_type_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT T3.name FROM photos AS T1 JOIN camera_lens AS T2 ON T1.camera_lens_id = T2.id WHERE T2.brand = 'Sigma' OR T2.brand = 'Olympus'
SELECT t3.title, COUNT(t4.citedPaperId) AS citation_count FROM paper AS t3 JOIN cite AS t4 ON t3.paperId = t4.citedPaperId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "ohad shamir" GROUP BY t3.title ORDER BY citation_count DESC LIMIT 1;
SELECT state_name FROM highlow WHERE highest_elevation = (SELECT MAX(highest_elevation) FROM highlow);
SELECT student_id FROM student_course_registrations WHERE course_id = 301
SELECT Station_ID, Location, Manager_Name FROM gas_station ORDER BY Open_Year
SELECT DISTINCT p.paperId FROM paper p JOIN paperDataset pd ON p.paperId = pd.paperId JOIN dataset d ON pd.datasetId = d.datasetId WHERE d.datasetName = "WebKB";
SELECT t1.email_address FROM customers AS t1 JOIN complaints AS t2 ON t1.customer_id = t2.customer_id WHERE t2.product_id = ( SELECT product_id FROM complaints GROUP BY product_id ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT DISTINCT transaction_type FROM Financial_Transactions
SELECT document_id, receipt_date FROM Documents 
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT DISTINCT t3.title FROM writes AS t2 JOIN author AS t1 ON t2.authorid = t1.authorid JOIN paper AS t3 ON t2.paperid = t3.paperid WHERE t1.authorname = "Donald E Knuth";
SELECT count(*) FROM inventory WHERE store_id = 1
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC
SELECT T2.dept_name, T2.dept_address FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT * FROM Vehicles WHERE vehicle_id = 1
SELECT avg(International_Passengers) FROM airport
SELECT count(*) FROM Movie WHERE year < 2000
SELECT T1.product_category_description FROM Ref_Product_Categories AS T1 JOIN Products AS T2 ON T1.product_category_code = T2.product_category_code WHERE T2.product_description LIKE '%t%'
SELECT Location_Name FROM Locations WHERE Location_Name LIKE '%film%'
SELECT DISTINCT t3.year FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId WHERE t1.authorName = "Ye Cao" GROUP BY t3.year ORDER BY COUNT(t3.paperId) DESC LIMIT 1;
SELECT Region_name FROM region AS R JOIN affected_region AS AR ON R.Region_id = AR.Region_id GROUP BY R.Region_id HAVING count(*) >= 2
SELECT AVG(UnitPrice) FROM Track WHERE GenreId IN (SELECT GenreId FROM Genre WHERE Name = 'Rock')
SELECT flno FROM flight WHERE distance > 2000
SELECT t1.customer_name FROM Customers AS t1 JOIN Customer_Orders AS t2 ON t1.customer_id = t2.customer_id JOIN Order_Items AS t3 ON t2.order_id = t3.order_id JOIN Products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_details = "Latte" INTERSECT SELECT t1.customer_name FROM Customers AS t1 JOIN Customer_Orders AS t2 ON t1.customer_id = t2.customer_id JOIN Order_Items AS t3 ON t2.order_id = t3.order_id JOIN Products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_details = "Americano"
SELECT city_name FROM city WHERE population > 150000 AND state_name = "kansas";
SELECT t1.Primary_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.School_ID = t2.School_ID WHERE t2.ACC_Percent = (SELECT MIN(ACC_Percent) FROM basketball_match)
SELECT Built_Year FROM Ship GROUP BY Built_Year ORDER BY count(*) DESC LIMIT 1
SELECT order_id, count(*) FROM Order_Items GROUP BY order_id
SELECT Customer_Name FROM Clients WHERE Client_ID NOT IN (SELECT Customer_ID FROM Bookings)
SELECT t1.fname, t1.lname FROM Authors AS t1 JOIN Authorship AS t2 ON t1.authID = t2.authID JOIN Inst AS t3 ON t2.instID = t3.instID WHERE t3.name = "Google"
SELECT avg(Number_of_hosts) FROM party
SELECT date, cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5
SELECT DISTINCT t1.authorid, t5.keyphrasename FROM author AS t1 JOIN writes AS t2 ON t1.authorid = t2.authorid JOIN paper AS t3 ON t2.paperid = t3.paperid JOIN paperkeyphrase AS t4 ON t3.paperid = t4.paperid JOIN keyphrase AS t5 ON t4.keyphraseid = t5.keyphraseid WHERE t1.authorname = "brian curless" AND t5.keyphrasename = "convolution";
SELECT product FROM product WHERE max_page_size != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.Name FROM Physician AS T1 JOIN Prescribes AS T2 ON T1.EmployeeID = T2.Physician JOIN Medication AS T3 ON T2.Medication = T3.Code WHERE T3.Name = "Thesisin"
SELECT T1.task_details, T1.task_id, T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id = T2.project_id WHERE T2.project_details = 'omnis' OR T2.project_id IN (SELECT project_id FROM Project_Outcomes GROUP BY project_id HAVING COUNT(*) > 2)
SELECT t4.day, SUM(t4.count) FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN category AS t3 ON t3.business_id = t1.business_id JOIN checkin AS t4 ON t4.business_id = t1.business_id WHERE t1.city = "Los Angeles" AND t2.category_name = "Moroccan" AND t3.category_name = "restaurant" GROUP BY t4.day;
SELECT T1.title FROM course AS T1 JOIN department AS T2 ON T1.dept_name = T2.dept_name WHERE T2.dept_name = "Statistics" EXCEPT SELECT T1.title FROM course AS T1 JOIN department AS T2 ON T1.dept_name = T2.dept_name WHERE T2.dept_name = "Psychology"
SELECT count(*) FROM architect WHERE id NOT IN (SELECT architect_id FROM mill WHERE built_year < 1850)
SELECT sum(Money_Requested) FROM entrepreneur JOIN people ON entrepreneur.People_ID = people.People_ID WHERE people.Height > 1.85
SELECT Famous_Title FROM artist WHERE Artist_ID NOT IN (SELECT Artist_ID FROM volume)
SELECT Party, COUNT(*) FROM representative GROUP BY Party
SELECT river_name FROM river WHERE traverse = "illinois";
SELECT T2.Aircraft FROM airport AS T1 JOIN airport_aircraft AS T3 ON T1.Airport_ID = T3.Airport_ID JOIN aircraft AS T2 ON T3.Aircraft_ID = T2.Aircraft_ID WHERE T1.Airport_Name = "London Heathrow" AND T1.Airport_Name = "London Gatwick"
SELECT M.Name FROM Medication AS M JOIN Prescribes AS P ON M.Code = P.Medication JOIN Stay AS S ON P.Patient = S.Patient JOIN Room AS R ON S.Room = R.RoomNumber WHERE R.RoomNumber = 111
SELECT origin FROM flight GROUP BY origin ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT t2.paperId) FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId WHERE t1.authorName = "michael i. jordan" AND t3.year = 2016;
SELECT COUNT(*) FROM writes AS t3 JOIN author AS t2 ON t3.authorid = t2.authorid JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t1 ON t4.authorid = t1.authorid WHERE t2.authorname = "Peter Mertens" AND t1.authorname = "Dina Barbian";
SELECT DISTINCT t3.authorid, COUNT(t4.paperid) as num_papers FROM paperkeyphrase AS t1 JOIN keyphrase AS t2 ON t1.keyphraseid = t2.keyphraseid JOIN paper AS t4 ON t4.paperid = t1.paperid JOIN writes AS t3 ON t3.paperid = t4.paperid WHERE t2.keyphrasename = "syntactic parsing" GROUP BY t3.authorid ORDER BY num_papers DESC LIMIT 1;
SELECT count(*) FROM Products WHERE product_id NOT IN (SELECT product_id FROM Order_Items)
SELECT population FROM state WHERE state_name = "california";
SELECT CONCAT(s.first_name, ' ', s.last_name) AS full_name FROM staff AS s JOIN rental AS r ON s.staff_id = r.staff_id JOIN customer AS c ON r.customer_id = c.customer_id WHERE c.first_name = 'April' AND c.last_name = 'Burns';
SELECT COUNT(DISTINCT t3.paperId) FROM paperKeyphrase AS t1 JOIN keyphrase AS t4 ON t1.keyphraseId = t4.keyphraseId JOIN writes AS t3 ON t3.paperId = t1.paperId JOIN author AS t2 ON t3.authorId = t2.authorId WHERE t2.authorName = "Ed Desmond" AND t4.keyphraseName = "Semantic Parsing";
SELECT T2.Comptroller FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.District = 1 OR T1.District = 2
SELECT state FROM customer GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT min(Market_Value), max(Market_Value), avg(Market_Value) FROM company
SELECT count(*) FROM Manufacturers WHERE Founder = 'Andy'
SELECT t1.country FROM Inst AS t1 JOIN Authorship AS t2 ON t1.instID = t2.instID JOIN Papers AS t3 ON t2.paperID = t3.paperID GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT c.cust_name, c.acc_bal FROM customer c JOIN loan l ON c.cust_ID = l.cust_ID GROUP BY c.cust_name, c.acc_bal HAVING SUM(l.amount) > 5000
SELECT document_name FROM Documents JOIN Document_Sections ON Documents.document_code = Document_Sections.document_code GROUP BY Documents.document_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT t3.title FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId WHERE t1.authorName = "subhasis chaudhuri";
SELECT full_address FROM business WHERE city = "Los Angeles" AND name = "Walmart";
SELECT T2.Location FROM company AS T1 JOIN station_company AS T2 ON T1.Company_ID = T2.Company_ID JOIN gas_station AS T3 ON T2.Station_ID = T3.Station_ID WHERE T1.Market_Value > 100
SELECT T2.firstname, T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Badlands"
SELECT user_name, password FROM Users WHERE role_code = (SELECT role_code FROM Roles GROUP BY role_code ORDER BY count(*) DESC LIMIT 1)
SELECT t1.year, COUNT(t1.paperId) AS numPapers FROM venue AS t2 JOIN paper AS t1 ON t2.venueId = t1.venueId WHERE t2.venueName = "NIPS" GROUP BY t1.year ORDER BY numPapers DESC LIMIT 1;
SELECT EMP_FNAME, EMP_LNAME FROM EMPLOYEE ORDER BY EMP_DOB LIMIT 1
SELECT T1.Name, T2.Elimination_Move FROM wrestler AS T1 JOIN Elimination AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID
SELECT Store_Name FROM Drama_Workshop_Groups
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating WHERE rID = (SELECT rID FROM Reviewer WHERE name = 'Chris Jackson'))
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T3.name = 'Surgery' INTERSECT SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T3.name = 'Psychiatry'
SELECT Customer_Details FROM Customers AS C JOIN Policies AS P ON C.Customer_ID = P.Customer_ID WHERE P.Policy_Type_Code = "Deputy" OR P.Policy_Type_Code = "Uniform"
SELECT location_code, location_name FROM Ref_Locations
SELECT T1.problem_id FROM Problems AS T1 JOIN Product AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = "voluptatem" AND T1.date_problem_reported > "1995"
SELECT T1.customer_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Faculty WHERE Rank = "Professor" AND Building = "NEB"
SELECT Country FROM manager WHERE Age > 50 INTERSECT SELECT Country FROM manager WHERE Age < 46
SELECT t1.keyword FROM keyword AS t1 JOIN publication_keyword AS t2 ON t1.kid = t2.kid JOIN publication AS t3 ON t2.pid = t3.pid JOIN journal AS t4 ON t3.jid = t4.jid WHERE t4.name = "PVLDB" GROUP BY t1.keyword HAVING COUNT(t2.pid) > 100;
SELECT DISTINCT T1.Name FROM Patient AS T1 JOIN Undergoes AS T2 ON T1.SSN = T2.Patient JOIN Stay AS T3 ON T1.SSN = T3.Patient WHERE T3.Room = 111
SELECT Hardware_Model_name FROM phone WHERE Company_name = "Nokia Corporation" OR screen_mode IN (SELECT Graphics_mode FROM screen_mode WHERE Type = "Graphics")
SELECT project_details FROM Projects WHERE project_id NOT IN (SELECT project_id FROM Project_Staff WHERE role_code = 'researcher')
SELECT COUNT(*) FROM publication AS p JOIN journal AS j ON p.jid = j.jid WHERE j.name = "PVLDB";
SELECT Calendar_Date, Day_Number FROM Ref_Calendar 
SELECT COUNT(DISTINCT School_ID) FROM basketball_match
SELECT capital FROM highlow AS t2 JOIN state AS t1 ON t1.state_name = t2.state_name WHERE t2.lowest_elevation = (SELECT MIN(lowest_elevation) FROM highlow);
SELECT avg(Enrollment) FROM school
SELECT T2.document_structure_description FROM Documents AS T1 JOIN Document_Structures AS T2 ON T1.document_structure_code = T2.document_structure_code ORDER BY T1.access_count ASC LIMIT 1
SELECT T1.date_order_placed FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_name = "Jeramie"
SELECT sum(maxOccupancy) FROM Rooms WHERE decor = 'modern';
SELECT t2.authorName FROM paper AS t1 JOIN writes AS t2 ON t1.paperId = t2.paperId WHERE t1.year = 2015;
SELECT decor FROM Rooms GROUP BY decor ORDER BY COUNT(*) ASC LIMIT 1
SELECT account_id, date_account_opened, account_name, other_account_details FROM Accounts
SELECT count(*) , Flag FROM Ship GROUP BY Flag
SELECT state_province_county, country FROM Addresses WHERE zip_postcode LIKE '4%'
SELECT Projects.Project_ID, Projects.Project_Details FROM Projects JOIN Documents ON Projects.Project_ID = Documents.Project_ID GROUP BY Projects.Project_ID HAVING COUNT(Documents.Document_ID) >= 2
SELECT DISTINCT t3.paperid FROM paperdataset AS t2 JOIN dataset AS t1 ON t2.datasetid = t1.datasetid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.datasetname = "WebKB";
SELECT T1.name, T2.balance AS checking_balance, T3.balance AS savings_balance FROM ACCOUNTS AS T1 JOIN CHECKING AS T2 ON T1.custid = T2.custid JOIN SAVINGS AS T3 ON T1.custid = T3.custid ORDER BY T2.balance + T3.balance DESC
SELECT count(*) FROM weather WHERE mean_humidity > 50 AND mean_visibility_miles > 8
SELECT count(*) FROM Customers
SELECT count(DISTINCT Director) FROM movie 
SELECT Date FROM debate WHERE Num_of_Audience > 150
SELECT TYPE FROM Vocals AS V JOIN Band AS B ON V.BandmateId = B.Id WHERE B.Firstname = "Solveig" GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark"; 
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Voting_record AS T2 ON T1.StuID = T2.Class_President_Vote
SELECT route_name FROM Delivery_Routes ORDER BY route_name
SELECT document_name FROM Documents WHERE document_code NOT IN (SELECT document_code FROM Document_Sections_Images)
SELECT Name FROM musical WHERE Musical_ID IN (SELECT Musical_ID FROM actor GROUP BY Musical_ID HAVING COUNT(*) >= 3)
SELECT T1.booking_id, T1.amount_of_refund FROM Bookings AS T1 JOIN Payments AS T2 ON T1.booking_id = T2.booking_id GROUP BY T1.booking_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT area FROM state WHERE area = (SELECT MAX(area) FROM state);
SELECT T1.Fname, T1.Lname, T2.Fname, T2.Lname FROM Student AS T1 JOIN Student AS T2 ON T1.Advisor = T2.StuID WHERE T1.city_code = "BAL"
SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1
SELECT T1.name, T2.course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID = T2.ID
SELECT EMAIL FROM employees WHERE COMMISSION_PCT IS NULL AND SALARY BETWEEN 7000 AND 12000 AND DEPARTMENT_ID = 50
SELECT t4.journalName FROM journal AS t4 JOIN paper AS t3 ON t4.journalId = t3.journalId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "Donald E Knuth" ORDER BY t3.year DESC LIMIT 1;
SELECT School_name, Location, Mascot FROM School
SELECT T3.Name FROM Scientists AS T3 WHERE T3.SSN NOT IN (SELECT T1.Scientist FROM AssignedTo AS T1 JOIN Projects AS T2 ON T1.Project = T2.Code WHERE T2.Hours = (SELECT max(Hours) FROM Projects))
SELECT COUNT ( state_name ) FROM state WHERE country_name = 'usa';
SELECT Studio FROM film GROUP BY Studio HAVING AVG(Gross_in_dollar) > 4500000
SELECT T2.product_name, sum(T1.product_quantity) FROM Order_Items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_name
SELECT river_name FROM river GROUP BY river_name ORDER BY COUNT(DISTINCT traverse) DESC LIMIT 1;
SELECT building FROM classroom WHERE capacity > 50
SELECT count(*) FROM Products WHERE product_category_code = 'Seeds'
SELECT sum(lesson_time) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT DISTINCT Theme FROM journal 
SELECT Official_Name FROM city WHERE Population > 1500 OR Population < 500
SELECT r.name FROM races AS r WHERE r.year = 2017
SELECT max(Height), avg(Height) FROM mountain
SELECT COUNT(state_name) FROM state WHERE country_name = 'usa';
SELECT T1.first_name, T1.last_name, T3.city FROM employees AS T1 JOIN locations AS T3 ON T1.location_id = T3.location_id WHERE T1.first_name LIKE '%z%'
SELECT state_name FROM state WHERE area = (SELECT MAX(area) FROM state);
SELECT price_range FROM Hotels
SELECT T1.Date, T1.Venue, T1.Name FROM event AS T1 ORDER BY T1.Event_Attendance DESC
SELECT T2.Building FROM Course AS T1 JOIN Faculty AS T2 ON T1.Instructor = T2.FacID GROUP BY T1.Instructor ORDER BY COUNT(*) DESC LIMIT 1
SELECT DEPARTMENT_NAME, COUNT(*) FROM departments JOIN employees ON departments.DEPARTMENT_ID = employees.DEPARTMENT_ID GROUP BY DEPARTMENT_NAME
SELECT GName FROM Video_Games JOIN Plays_Games ON Video_Games.GameID = Plays_Games.GameID GROUP BY Video_Games.GameID ORDER BY SUM(Hours_Played) DESC LIMIT 1
SELECT daily_hire_cost FROM Products_for_Hire WHERE product_name LIKE "%Book%"
SELECT Clean_Jerk FROM body_builder ORDER BY Total DESC LIMIT 1
SELECT Team FROM player ORDER BY Age DESC LIMIT 5
SELECT COUNT(t1.paperId) FROM venue AS t2 JOIN paper AS t1 ON t2.venueId = t1.venueId WHERE t1.year = 2015 AND t2.venueName = "nature communications";
SELECT t1.name FROM author AS t1 JOIN writes AS t2 ON t1.aid = t2.aid JOIN publication AS t3 ON t2.pid = t3.pid WHERE t3.title = "Making database systems usable";
SELECT Document_Locations.Location_Code, Document_Locations.Date_in_Location_From, Document_Locations.Date_in_Locaton_To FROM Document_Locations JOIN All_Documents ON Document_Locations.Document_ID = All_Documents.Document_ID
SELECT employees.title, employees.phone, employees.hire_date FROM employees WHERE employees.first_name = "Nancy" AND employees.last_name = "Edwards"
SELECT name, headquarter, founder FROM Manufacturers WHERE revenue = (SELECT max(revenue) FROM Manufacturers)
SELECT DISTINCT p.paperId FROM paper p JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId JOIN venue v ON p.venueId = v.venueId WHERE k.keyphraseName = "Parsing" AND p.year = 2012 AND v.venueName = "acl";
SELECT Name FROM Projects WHERE Code NOT IN (SELECT Project FROM AssignedTo)
SELECT SUM(City_Population) FROM district ORDER BY City_Area DESC LIMIT 3
SELECT Venue FROM match ORDER BY Date DESC
SELECT t1.name FROM author AS t1 JOIN writes AS t2 ON t1.aid = t2.aid JOIN publication AS t3 ON t2.pid = t3.pid JOIN journal AS t4 ON t3.jid = t4.jid WHERE t4.name = "PVLDB" GROUP BY t1.name HAVING COUNT(DISTINCT t3.title) > 10;
SELECT count(DISTINCT city) FROM airports WHERE country = 'United States' GROUP BY city HAVING count(*) > 3
SELECT lowest_point FROM highlow WHERE state_name IN ( SELECT traverse FROM river WHERE river_name = "mississippi" ) ORDER BY lowest_elevation LIMIT 1;
SELECT catalog_entry_name FROM Catalog_Contents ORDER BY height DESC LIMIT 1
SELECT birth_year FROM actor WHERE name = "Kevin Spacey";
SELECT customer_name FROM Customers WHERE payment_method = (SELECT payment_method FROM Customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) , constructorId FROM races GROUP BY constructorId
SELECT t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name JOIN LOCATION AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.food_type = "american" AND t1.rating = (SELECT MAX(t1.rating) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name WHERE t2.region = "bay area" AND t1.food_type = "american");
SELECT T1.teacher_id, T2.first_name FROM Assessment_Notes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY COUNT(*) DESC LIMIT 3
SELECT Order_Date FROM Customer_Orders WHERE Order_ID IN (SELECT Order_ID FROM Order_Items WHERE Product_ID IN (SELECT Product_ID FROM Products WHERE Product_Price > 1000))
SELECT count(*) FROM Customers_Cards
SELECT How_to_Get_There, COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T2.Party = "Democratic"
SELECT T2.emp_fname, T3.crs_description FROM CLASS AS T1 JOIN EMPLOYEE AS T2 ON T1.prof_num = T2.emp_num JOIN COURSE AS T3 ON T1.crs_code = T3.crs_code
SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3; 
SELECT count(*) FROM Instruments WHERE SongId = (SELECT SongId FROM Songs WHERE Title = "Badlands")
SELECT T1.Theme, T2.Date, T2.Attendance FROM exhibition AS T1 JOIN exhibition_record AS T2 ON T1.Exhibition_ID = T2.Exhibition_ID WHERE T1.Year = 2004
SELECT T1.country, T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT count(*) FROM CLASS WHERE CRS_CODE = 'ACCT-211'
SELECT DISTINCT Reign FROM wrestler WHERE Location != "Tokyo,Japan"
SELECT T2.Location FROM performance AS T1 JOIN performance AS T2 ON T1.Location = T2.Location WHERE T1.Attendance > 2000 INTERSECT SELECT T2.Location FROM performance AS T1 JOIN performance AS T2 ON T1.Location = T2.Location WHERE T1.Attendance < 1000
SELECT DISTINCT p.paperId, p.title FROM paper p JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId WHERE k.keyphraseName = "Question Answering";
SELECT count(*) FROM Manufacturers WHERE Headquarter = 'Tokyo' OR Headquarter = 'Beijing'
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING avg(total_value_purchased) > 50000 OR avg(total_value_purchased) < 30000
SELECT Physician.Name, Physician.Position FROM Physician JOIN Prescribes ON Physician.EmployeeID = Prescribes.Physician JOIN Medication ON Prescribes.Medication = Medication.Code WHERE Medication.Brand = 'X'
SELECT count(*) FROM debate
SELECT t1.CampusFee FROM csu_fees AS t1 JOIN Campuses AS t2 ON t1.Campus = t2.Id WHERE t2.Campus = "San Jose State University" AND t1.Year = 2000
SELECT Venue FROM match ORDER BY Date DESC
SELECT customer_id, max(amount_paid) FROM Payments GROUP BY customer_id
SELECT T1.FirstName, T1.LastName FROM list AS T1 JOIN teachers AS T2 ON T1.Classroom = T2.Classroom WHERE T2.FirstName = "OTHA" AND T2.LastName = "MOYER"
SELECT mountain_name FROM mountain WHERE country_name = 'USA' ORDER BY mountain_altitude DESC LIMIT 1; 
SELECT ClubLocation FROM Club WHERE ClubName = "Pen and Paper Gaming"
SELECT company, main_industry FROM company WHERE Headquarters <> 'USA'
SELECT Name FROM pilot ORDER BY Name ASC
SELECT T2.product_type_code, T2.product_name, T2.product_price FROM Product_Suppliers AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id WHERE T1.supplier_id = 3
SELECT count(*) FROM Documents WHERE Document_ID NOT IN (SELECT Document_ID FROM Documents_with_Expenses)
SELECT T2.customer_name, T1.city, T1.date_from, T1.date_to FROM Customer_Address_History AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id JOIN Addresses AS T3 ON T1.address_id = T3.address_id
SELECT count(*) FROM region
SELECT Product_ID FROM Invoice_Items GROUP BY Product_ID ORDER BY count(*) DESC LIMIT 1
SELECT role_code, role_name, role_description FROM Roles
SELECT ship.Name FROM ship JOIN mission ON ship.Ship_ID = mission.Ship_ID WHERE mission.Launched_Year > 1928
SELECT document_type_code, document_name, document_description FROM Documents WHERE document_name = 'Noel CV' OR document_name = 'King Book'
SELECT * FROM job_history AS jh JOIN employees AS e ON jh.employee_id = e.employee_id WHERE e.salary >= 12000
SELECT Subjects.subject_id, Subjects.subject_name, count(Courses.course_id) FROM Subjects JOIN Courses ON Subjects.subject_id = Courses.subject_id GROUP BY Subjects.subject_id, Subjects.subject_name
SELECT avg(Age) FROM gymnast JOIN people ON gymnast.Gymnast_ID = people.People_ID
SELECT count(DISTINCT Injury) FROM injury_accident AS T1 JOIN game AS T2 ON T1.game_id = T2.id WHERE T2.Season > 2010
SELECT T1.Name FROM artist AS T1 JOIN exhibition AS T2 ON T1.Artist_ID = T2.Artist_ID JOIN exhibition_record AS T3 ON T2.Exhibition_ID = T3.Exhibition_ID GROUP BY T1.Name HAVING avg(T3.Attendance) > 200
SELECT vehicle_id FROM Vehicles
SELECT avg(Gold) FROM club_rank
SELECT DISTINCT t1.authorid FROM writes AS t3 JOIN author AS t2 ON t3.authorid = t2.authorid JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t1 ON t4.authorid = t1.authorid WHERE t2.authorname = "Noah A Smith";
SELECT Name FROM mountain WHERE Height > 5000 OR Prominence > 1000
SELECT population FROM state WHERE state_name IN ( SELECT traverse FROM river WHERE river_name = "mississippi" );
SELECT avg(D.access_count) FROM Documents AS D JOIN Document_Functional_Areas AS DFA ON D.document_code = DFA.document_code JOIN Functional_Areas AS FA ON DFA.functional_area_code = FA.functional_area_code WHERE FA.functional_area_description = "Acknowledgement"
SELECT state_name FROM state WHERE area = (SELECT MAX(area) FROM state);
SELECT cust_name, acc_type, acc_bal FROM customer WHERE credit_score = (SELECT MAX(credit_score) FROM customer)
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name = T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.Graphics_mode WHERE T3.Type = "Text" OR T1.RAM_MiB > 32
SELECT avg(balance) FROM checking
SELECT COUNT(DISTINCT Artist_ID) FROM volume
SELECT T1.Player, T2.Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id WHERE T2.Name = 'Columbus Crew';
SELECT t1.organization_name FROM Organizations AS t1 JOIN Organization_Contact_Individuals AS t2 ON t1.organization_id = t2.organization_id GROUP BY t1.organization_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.customer_name, T1.customer_phone, T1.customer_email FROM Customers AS T1 JOIN Customer_Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT pitStops.driverId, pitStops.stop FROM pitStops WHERE pitStops.duration < (SELECT MIN(duration) FROM pitStops WHERE raceId = 841)
SELECT albums.title FROM albums WHERE albums.title LIKE 'A%' ORDER BY albums.title ASC
SELECT Title FROM Albums WHERE Year = 2010
SELECT Fname FROM Faculty WHERE Rank = "Professor" ORDER BY Fname
SELECT count(*) FROM classroom WHERE building = 'Lamberton'
SELECT sum(s.Number_Deaths), sum(s.Damage_millions_USD) FROM storm s WHERE s.Max_speed > (SELECT avg(Max_speed) FROM storm)
SELECT count(*) FROM csu_fees WHERE campusfee > (SELECT avg(campusfee) FROM csu_fees)
SELECT Name FROM member ORDER BY Name ASC
SELECT Adults FROM Reservations WHERE CheckIn = "2010-10-23" AND FirstName = "CONRAD" AND LastName = "SELBIG"
SELECT T2.Fname, T2.LName FROM Student AS T1 JOIN Student AS T2 ON T1.Advisor = T2.StuID WHERE T1.city_code = "BAL"
SELECT DISTINCT t3.paperId, t3.title FROM paperKeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseId = t1.keyphraseId JOIN paper AS t3 ON t3.paperId = t2.paperId WHERE t1.keyphraseName = "Question Answering";
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.President_Vote WHERE T1.Advisor = 8741
SELECT state_name FROM city WHERE city_name = "springfield";
SELECT Host FROM performance ORDER BY Attendance ASC
SELECT T1.forename, T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000 GROUP BY T1.driverid
SELECT Budget_Type_Code, Budget_Type_Description FROM Ref_Budget_Codes
SELECT COUNT(DISTINCT Instrument) FROM Instruments WHERE SongId = (SELECT SongId FROM Songs WHERE Title = "Le Pop")
SELECT count(*) , account_id FROM Financial_Transactions GROUP BY account_id
SELECT room_number, building FROM classroom WHERE capacity BETWEEN 50 AND 100
SELECT T2.name FROM Web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T3 ON T1.id = T3.accelerator_id JOIN browser AS T2 ON T3.browser_id = T2.id WHERE T1.name = "CProxy" AND T3.compatible_since_year > 1998;
SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard";
SELECT t2.house_number, t1.name FROM restaurant AS t1 JOIN location AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t2.street_name = "buchanan" AND t1.food_type = "arabic" AND t1.rating > 2.5;
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Movies" AND T1.id NOT IN (SELECT T1.id FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Music")
SELECT gender, count(*) FROM Staff GROUP BY gender ORDER BY count(*) DESC LIMIT 1
SELECT product_name FROM Products WHERE product_type_code = 'Hardware' ORDER BY product_price DESC LIMIT 1
SELECT T2.Pilot_name, COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.Pilot_ID = T2.Pilot_ID GROUP BY T2.Pilot_name
SELECT director FROM Movie WHERE director IS NOT NULL GROUP BY director HAVING count(*) = 1
SELECT count(DISTINCT Location) FROM perpetrator
SELECT T1.first_name, T1.last_name, T1.salary FROM employees AS T1 WHERE T1.commission_pct IS NULL
SELECT business_id FROM checkin GROUP BY business_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.lot_id , avg(amount_of_transaction) FROM TRANSACTIONS AS T1 JOIN Transactions_Lots AS T2 ON T1.transaction_id = T2.transaction_id GROUP BY T2.lot_id ORDER BY avg(amount_of_transaction)
SELECT LName FROM Student WHERE Sex = 'F' ORDER BY Age DESC
SELECT T4.product_name FROM Products AS T4 JOIN Ref_Colors AS T5 ON T4.color_code = T5.color_code JOIN Product_Characteristics AS T6 ON T4.product_id = T6.product_id JOIN Characteristics AS T7 ON T6.characteristic_id = T7.characteristic_id WHERE T5.color_description = 'red' AND T7.characteristic_name = 'fast'
SELECT count(*) FROM storm WHERE Number_Deaths IS NOT NULL
SELECT count(*) FROM flight WHERE Velocity > 200
SELECT count(DISTINCT Type) FROM Vocals WHERE SongId = (SELECT SongId FROM Songs WHERE Title = "Le Pop")
SELECT T1.FirstName, T1.LastName FROM list AS T1 LEFT JOIN teachers AS T2 ON T1.Classroom = T2.Classroom WHERE T1.Grade = 1 AND (T2.FirstName != "OTHA" OR T2.LastName != "MOYER")
SELECT t1.text FROM review AS t1 JOIN business AS t2 ON t1.business_id = t2.business_id WHERE t2.rating < 1;
SELECT COUNT(DISTINCT t3.paperId) FROM paperKeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseId = t1.keyphraseId JOIN paper AS t3 ON t3.paperId = t2.paperId WHERE t1.keyphraseName = "deep learning";
SELECT river_name FROM river GROUP BY river_name ORDER BY COUNT(DISTINCT traverse) DESC LIMIT 1;
SELECT T2.Lastname FROM Band AS T2 JOIN Vocals AS T1 ON T1.Bandmate = T2.Id GROUP BY T2.Lastname ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.customer_name FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING COUNT(*) <= 2
SELECT name FROM Companies ORDER BY Market_Value_billion DESC
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.' AND salary > 80000
SELECT count(*) FROM aircraft
SELECT DISTINCT t3.paperid FROM writes AS t2 JOIN author AS t1 ON t2.authorid = t1.authorid JOIN paper AS t3 ON t2.paperid = t3.paperid WHERE t1.authorname = "Liwen Xiong" AND t3.year = 2015;
SELECT t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t1.food_type = "french" AND t1.rating = (SELECT MAX(t1.rating) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t1.food_type = "french");
SELECT organization.name FROM author JOIN organization ON author.oid = organization.oid WHERE author.name = "H. V. Jagadish";
SELECT DISTINCT t3.paperid FROM writes AS t3 JOIN author AS t2 ON t3.authorid = t2.authorid JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t1 ON t4.authorid = t1.authorid WHERE t2.authorname = "Peter Mertens" AND t1.authorname = "Dina Barbian";
SELECT * FROM jobs WHERE JOB_ID IN (SELECT JOB_ID FROM employees WHERE SALARY >= 12000)
SELECT count(DISTINCT Company) FROM entrepreneur
SELECT Area, County FROM appellations
SELECT T1.LName, T1.Sex FROM Student AS T1 JOIN Plays_Games AS T2 ON T1.StuID = T2.StuID JOIN Video_Games AS T3 ON T2.GameID = T3.GameID WHERE T3.GName = "Call of Destiny" INTERSECT SELECT T1.LName, T1.Sex FROM Student AS T1 JOIN Plays_Games AS T2 ON T1.StuID = T2.StuID JOIN Video_Games AS T3 ON T2.GameID = T3.GameID WHERE T3.GName = "Works of Widenius"
SELECT Card_Number FROM member WHERE Hometown LIKE "%Kentucky%"
SELECT T1.year, COUNT(*) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id WHERE T2.name = 'Boston Red Stockings' GROUP BY T1.year
SELECT river_name FROM river WHERE LENGTH = (SELECT MAX(LENGTH) FROM river WHERE traverse = "texas") AND traverse = "texas";
SELECT gender_code, COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC
SELECT count(*) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name LIKE "%a%"
SELECT b.name, a.name FROM browser b JOIN accelerator_compatible_browser acb ON b.id = acb.browser_id JOIN Web_client_accelerator a ON acb.accelerator_id = a.id ORDER BY acb.compatible_since_year DESC
SELECT t2.capital FROM state AS t2 JOIN border_info AS t1 ON t2.state_name = t1.border WHERE t1.state_name = "texas";
SELECT document_id FROM Documents WHERE document_status_code = 'done' AND document_type_code = 'paper'
SELECT Type FROM Institution GROUP BY Type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats = 'R';
SELECT T1.artist_name, count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.languages = 'Bangla' GROUP BY T1.artist_name ORDER BY count(*) DESC LIMIT 3
SELECT T1.FirstName, T1.LastName FROM list AS T1 JOIN teachers AS T2 ON T1.Classroom = T2.Classroom WHERE T2.FirstName = "MARROTTE" AND T2.LastName = "KIRK"
SELECT COUNT(*) FROM highlow WHERE highest_elevation > (SELECT highest_elevation FROM highlow WHERE state_name = (SELECT state_name FROM state WHERE capital = (SELECT MAX(capital) FROM state)));
SELECT transaction_type FROM Financial_Transactions GROUP BY transaction_type ORDER BY sum(transaction_amount) DESC LIMIT 1
SELECT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t1.fname = "Katsuhiro" AND t1.lname = "Ueno"
SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'
SELECT t4.title FROM paperkeyphrase AS t1 JOIN keyphrase AS t2 ON t1.keyphraseid = t2.keyphraseid JOIN paper AS t4 ON t1.paperid = t4.paperid WHERE t2.keyphrasename = "deep learning" ORDER BY t4.year ASC LIMIT 1;
SELECT T1.name FROM user_profiles AS T1 ORDER BY T1.followers DESC LIMIT 1
SELECT Name FROM pilot WHERE Pilot_Id NOT IN (SELECT Winning_Pilot FROM match WHERE Country = 'Australia')
SELECT t2.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title = "Binders Unbound"
SELECT T2.Draft_Pick_Number, T2.Draft_Class FROM match_season AS T1 JOIN player AS T2 ON T1.Player = T2.Player WHERE T1.Position = "Defender"
SELECT DName FROM Department JOIN Minor_in ON Department.DNO = Minor_in.DNO GROUP BY Department.DNO ORDER BY COUNT(*) DESC LIMIT 1
SELECT title FROM film WHERE length > 100 OR rating = 'PG' EXCEPT SELECT title FROM film WHERE replacement_cost > 200
SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*) > 2
SELECT DISTINCT t2.venueName FROM writes AS t1 JOIN paper AS t2 ON t1.paperId = t2.paperId JOIN author AS t3 ON t1.authorId = t3.authorId WHERE t3.authorName = "Daniella Coelho";
SELECT avg(g.gradepoint) FROM Student s JOIN Enrolled_in e ON s.StuID = e.StuID JOIN Gradeconversion g ON e.Grade = g.lettergrade WHERE s.LName = "Smith"
SELECT Enrollment, Primary_conference FROM university ORDER BY Founded ASC LIMIT 1
SELECT max(HS), pPos FROM Player JOIN Tryout ON Player.pID = Tryout.pID WHERE HS > 1000 GROUP BY pPos
SELECT DISTINCT p.paperId FROM paper p JOIN writes w ON p.paperId = w.paperId JOIN author a ON w.authorId = a.authorId WHERE a.authorName = "Liwen Xiong" AND p.year = 2015;
SELECT t3.city FROM Customers AS t1 JOIN Customer_Addresses AS t2 ON t1.customer_id = t2.customer_id JOIN Addresses AS t3 ON t2.address_id = t3.address_id GROUP BY t3.city ORDER BY COUNT(*) DESC LIMIT 1
SELECT eid FROM employee WHERE salary >= 100000
SELECT email_address FROM Teachers AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id WHERE T2.zip_postcode = "918"
SELECT T2.balance FROM ACCOUNTS AS T1 JOIN CHECKING AS T2 ON T1.custid = T2.custid JOIN SAVINGS AS T3 ON T1.custid = T3.custid ORDER BY T2.balance DESC LIMIT 1
SELECT state_name FROM state WHERE density = (SELECT MAX(density) FROM state);
SELECT city_name FROM city WHERE state_name = "texas";
SELECT roomName FROM Rooms JOIN Reservations ON Rooms.RoomId = Reservations.Room GROUP BY Rooms.RoomId HAVING COUNT(*) > 60
SELECT T2.dept_name FROM COURSE AS T1 JOIN DEPARTMENT AS T2 ON T1.DEPT_CODE = T2.DEPT_CODE WHERE T1.CRS_DESCRIPTION LIKE '%Statistics%'
SELECT organisation_id, COUNT(*) FROM Project_Outcomes GROUP BY organisation_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida";
SELECT DISTINCT COUNT(t3.paperId) FROM paperKeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseId = t1.keyphraseId JOIN paper AS t3 ON t3.paperId = t2.paperId WHERE t1.keyphraseName = "convolutional neural networks" AND t3.year = YEAR(CURRENT_DATE());
SELECT name, time, service FROM train
SELECT T1.Team_Name, T1.ACC_Regular_Season FROM basketball_match AS T1 JOIN university AS T2 ON T1.School_ID = T2.School_ID ORDER BY T2.Founded ASC LIMIT 1
SELECT t2.house_number, t1.name FROM restaurant AS t1 JOIN location AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t2.street_name = "buchanan" AND t1.food_type = "arabic" AND t1.rating > 2.5;
SELECT document_id FROM Documents WHERE document_status_code = "done" AND document_type_code = "Paper" AND shipping_agent_code != "USPS"
SELECT T1.course_description, T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING COUNT(*) > 2
SELECT t2.house_number, t1.name FROM restaurant AS t1 JOIN location AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "alameda" AND t1.rating > 2.5;
SELECT T1.Fname, T1.LName FROM Student AS T1 JOIN Voting_record AS T2 ON T1.StuID = T2.Treasurer_Vote WHERE T2.Election_Cycle = "Spring"
SELECT "Card_Number", "Name", "Hometown" FROM "member" ORDER BY "Level" DESC 
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_season)
SELECT t2.house_number, t2.street_name, t2.city_name FROM LOCATION AS t1 JOIN GEOGRAPHIC AS t2 ON t1.city_name = t2.city_name WHERE t2.region = "bay area";
SELECT gender, AVG(age) FROM Person GROUP BY gender
SELECT avg(Total_Passengers), max(Total_Passengers) FROM station WHERE Location = 'London' OR Location = 'Glasgow'
SELECT T1.customer_last_name, T1.customer_id, T1.phone_number FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.customer_first_name, T2.customer_last_name, T2.customer_phone FROM Customers_Cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.card_number = "4560596484842"
SELECT t2.house_number, t2.street_name FROM LOCATION AS t2 JOIN RESTAURANT AS t1 ON t1.id = t2.restaurant_id WHERE t2.city_name = "alameda";
SELECT T1.surname, T1.driverId FROM drivers AS T1 JOIN pitStops AS T2 ON T1.driverId = T2.driverId JOIN results AS T3 ON T1.driverId = T3.driverId GROUP BY T1.driverId HAVING COUNT(T2.stop) = 11 AND COUNT(T3.resultId) > 5
SELECT Name FROM county_public_safety ORDER BY Population DESC
SELECT Support_rate FROM candidate ORDER BY Support_rate DESC LIMIT 3
SELECT Team, Starting_Year FROM technician
SELECT t2.house_number, t1.name FROM LOCATION AS t2 JOIN RESTAURANT AS t1 ON t1.id = t2.restaurant_id WHERE t1.city_name IN (SELECT city_name FROM GEOGRAPHIC WHERE region = "bay area")
SELECT customer_name FROM Customers WHERE payment_method <> 'Cash'
SELECT count(*) FROM Web_client_accelerator WHERE id NOT IN (SELECT accelerator_id FROM accelerator_compatible_browser)
SELECT T1.Name, T2.Company FROM entrepreneur AS T2 JOIN people AS T1 ON T1.People_ID = T2.People_ID ORDER BY T2.Money_Requested DESC
SELECT count(DISTINCT instrument) FROM Instruments AS T1 JOIN Band AS T2 ON T1.BandmateId = T2.Id WHERE T2.Lastname = "Heilo"
SELECT Name FROM people WHERE Age = 35 OR Age = 36
SELECT Park FROM roller_coaster ORDER BY Speed DESC LIMIT 1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins";
SELECT T1.artist_name, T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.rating > 9
SELECT T1.name, T2.balance + T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T3.balance < T2.balance
SELECT COUNT(*) AS num_visits, fault_log_entry_id FROM Engineer_Visits GROUP BY fault_log_entry_id ORDER BY num_visits DESC LIMIT 1
SELECT population FROM state WHERE state_name = "california";
SELECT characteristic_name FROM Characteristics 
SELECT Type, COUNT(*) FROM artwork GROUP BY Type
SELECT t1.name, t1.age FROM pilot AS t1 JOIN match AS t2 ON t1.pilot_id = t2.winning_pilot ORDER BY t1.age LIMIT 1
SELECT mountain_altitude FROM mountain WHERE mountain_name = "mount mckinley";
SELECT Type FROM film_market_estimation WHERE Year = 1995
SELECT t2.house_number, t1.name FROM restaurant AS t1 JOIN location AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t1.food_type = "french" AND t1.rating = ( SELECT MAX(t1.rating) FROM restaurant AS t1 JOIN location AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t1.food_type = "french" );
SELECT service_id, service_details, COUNT(*) AS number FROM Services GROUP BY service_id, service_details ORDER BY number DESC LIMIT 1
SELECT T1.Country FROM appellations AS T1 JOIN wine AS T2 ON T1.Appelation = T2.Appelation GROUP BY T1.Appelation HAVING COUNT(*) <= 3
SELECT DISTINCT COUNT(t4.paperid), t3.authorid FROM paperkeyphrase AS t1 JOIN keyphrase AS t2 ON t1.keyphraseid = t2.keyphraseid JOIN paper AS t4 ON t4.paperid = t1.paperid JOIN writes AS t3 ON t3.paperid = t4.paperid WHERE t2.keyphrasename = "syntactic parsing" GROUP BY t3.authorid ORDER BY COUNT(t4.paperid) DESC;
SELECT T2.investor_id, avg(T1.amount_of_transaction) FROM Transactions AS T1 JOIN Investors AS T2 ON T1.investor_id = T2.investor_id GROUP BY T2.investor_id
SELECT count(DISTINCT Industry) FROM Companies
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.ID = t2.Swimmer_ID GROUP BY t1.name HAVING COUNT(t2.ID) >= 2
SELECT COUNT(*) , Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID GROUP BY Hometown
SELECT role_code FROM Roles
SELECT InvoiceDate FROM Customer AS T1 JOIN Invoice AS T2 ON T1.CustomerId = T2.CustomerId WHERE T1.FirstName = "Astrid" AND T1.LastName = "Gruber"
SELECT avg(revenue), max(revenue), sum(revenue) FROM manufacturers
SELECT * FROM Customer WHERE State = 'NY'
SELECT T1.Name, T2.District FROM phone AS T1 JOIN phone_market AS T3 ON T1.Phone_ID = T3.Phone_ID JOIN market AS T2 ON T3.Market_ID = T2.Market_ID
SELECT T1.Fname || ' ' || T1.Lname AS Full_Name FROM Faculty AS T1 JOIN Course AS T2 ON T1.FacID = T2.Instructor GROUP BY T1.FacID ORDER BY COUNT(*) DESC LIMIT 3
SELECT DISTINCT t1.keyphraseName FROM paperKeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseId = t1.keyphraseId JOIN paper AS t3 ON t3.paperId = t2.paperId JOIN writes AS t4 ON t4.paperId = t3.paperId JOIN author AS t5 ON t4.authorId = t5.authorId WHERE t5.authorName = "Luke Zettlemoyer";
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.ID = T2.ID WHERE T2.semester = 'Fall' AND T2.year = 2003
SELECT SUM(access_count) FROM Documents WHERE document_type_code = (SELECT document_type_code FROM Documents GROUP BY document_type_code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT t3.title FROM paper AS t3 JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t1 ON t4.authorid = t1.authorid JOIN paperkeyphrase AS t2 ON t2.paperid = t3.paperid JOIN keyphrase AS t5 ON t5.keyphraseid = t2.keyphraseid WHERE t1.authorname = "brian curless" AND t5.keyphrasename = "convolution";
SELECT count(Degrees) FROM degrees AS T1 JOIN campuses AS T2 ON T1.Campus = T2.Id WHERE T2.Campus = "San Francisco State University" AND T1.Year = 2004
SELECT COUNT(DISTINCT t1.name) FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.city = "Dallas" AND t1.rating > 3.5 AND t2.category_name = "Bars";
SELECT Party_name FROM party WHERE Party_ID NOT IN (SELECT Party_ID FROM member)
SELECT Governor, COUNT(*) FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1
SELECT T3.Policy_Type_Code FROM Customers AS T1 JOIN Policies AS T2 ON T1.Customer_ID = T2.Customer_ID JOIN Claim_Headers AS T3 ON T2.Policy_ID = T3.Policy_ID WHERE T1.Customer_Details = "Dayana Robel"
SELECT t1.name FROM author AS t1 JOIN writes AS t2 ON t1.aid = t2.aid JOIN publication AS t3 ON t2.pid = t3.pid JOIN journal AS t4 ON t3.jid = t4.jid WHERE t4.name = "PVLDB";
SELECT name FROM circuits WHERE country = 'UK' OR country = 'Malaysia'
SELECT T2.student_id, T2.first_name FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY AVG(T1.monthly_rental) DESC LIMIT 1
SELECT count(DISTINCT student_id) FROM Student_Course_Enrolment
SELECT T2.Name, T1.Date FROM news_report AS T3 JOIN event AS T1 ON T3.Event_ID = T1.Event_ID JOIN journalist AS T2 ON T3.journalist_ID = T2.journalist_ID
SELECT * FROM basketball_match 
SELECT College, COUNT(DISTINCT Author) FROM submission GROUP BY College ORDER BY COUNT(DISTINCT Author) DESC LIMIT 1
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id = T2.id WHERE T2.dept_name = 'History'
SELECT Student.StuID, SUM(Plays_Games.Hours_Played) FROM Student JOIN Plays_Games ON Student.StuID = Plays_Games.StuID GROUP BY Student.StuID
SELECT state_name FROM state WHERE area = (SELECT MIN(area) FROM state);
SELECT Date_Stored FROM All_Documents WHERE Document_Name = "Marry CV"
SELECT T1.project_details FROM Projects AS T1 JOIN Project_Outcomes AS T2 ON T1.project_id = T2.project_id JOIN Research_Outcomes AS T3 ON T2.outcome_code = T3.outcome_code WHERE T3.outcome_description = 'patents' INTERSECT SELECT T1.project_details FROM Projects AS T1 JOIN Project_Outcomes AS T2 ON T1.project_id = T2.project_id JOIN Research_Outcomes AS T3 ON T2.outcome_code = T3.outcome_code WHERE T3.outcome_description = 'papers'
SELECT student_id FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Attendance)
SELECT count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "Art" AND T2.customer_last_name = "Turcotte"
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election)
SELECT Status FROM city WHERE Population > 1500 OR Population < 500
SELECT T1.artist_name, count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3
SELECT citing FROM cite WHERE cited = (SELECT pid FROM publication WHERE title = "Making database systems usable");
SELECT min(bathroom_count), max(bathroom_count) FROM Apartments 
SELECT fname FROM Authors WHERE lname = "Ueno"
SELECT Location FROM gas_station ORDER BY Open_Year
SELECT Name, Price FROM Products
SELECT river_name FROM river WHERE traverse = "illinois";
SELECT count(*) , customer_id FROM Accounts GROUP BY customer_id
SELECT T1.first_name, T1.last_name, T1.salary FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id WHERE T3.city = 'London'
SELECT T1.name, count(*) FROM useracct AS T1 JOIN review AS T2 ON T1.u_id = T2.u_id GROUP BY T1.u_id, T1.name
SELECT T2.name, T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.ID JOIN student AS T3 ON T1.s_ID = T3.ID WHERE T3.dept_name = 'Math'
SELECT t1.Publisher FROM book_club AS t1 JOIN culture_company AS t2 ON t1.book_club_id = t2.book_club_id WHERE t1.Year = 1989 INTERSECT SELECT t1.Publisher FROM book_club AS t1 JOIN culture_company AS t2 ON t1.book_club_id = t2.book_club_id WHERE t1.Year = 1990
SELECT name FROM instructor WHERE dept_name = 'Statistics' ORDER BY salary LIMIT 1
SELECT Founder FROM Manufacturers WHERE Name = "Sony"
SELECT T1.date_order_placed FROM Orders AS T1 JOIN Shipments AS T2 ON T1.order_id = T2.order_id JOIN Invoices AS T3 ON T2.invoice_number = T3.invoice_number WHERE T3.invoice_number = 10
SELECT first_name, last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000
SELECT pName FROM Player WHERE yCard = 'yes' ORDER BY HS DESC
SELECT city, MAX(lat) FROM station GROUP BY city
SELECT t1.name FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.city = "Los Angeles" AND t2.category_name = "breweries";
SELECT T3.guest_first_name, T1.booking_start_date, T1.booking_end_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id JOIN Guests AS T3 ON T1.guest_id = T3.guest_id
SELECT Projects.Project_ID FROM Projects JOIN Documents ON Projects.Project_ID = Documents.Project_ID GROUP BY Projects.Project_ID HAVING COUNT(*) >= 2
SELECT count(*) , District_name FROM district JOIN store_district ON district.District_ID = store_district.District_ID GROUP BY District_name
SELECT avg(no_of_customers) FROM bank
SELECT city FROM Addresses
SELECT Location FROM cinema WHERE Openning_year = 2010 AND Location IN (SELECT Location FROM cinema WHERE Openning_year = 2011)
SELECT capital FROM state WHERE area = ( SELECT MIN ( area ) FROM state );
SELECT count(*) FROM Projects
SELECT T2.Name FROM Appointment AS T1 JOIN Physician AS T2 ON T1.Physician = T2.EmployeeID
SELECT avg(T1.lat) , avg(T1.long) FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.start_station_id
SELECT Shop_Name, Location FROM shop ORDER BY Shop_Name ASC
SELECT T1.Store_Name FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID = T2.Workshop_Group_ID WHERE T2.Product_Name = "film"
SELECT COUNT(river_name) FROM river WHERE traverse = "idaho";
SELECT T.pName FROM Tryout AS T JOIN College AS C ON T.cName = C.cName WHERE C.enr = (SELECT MAX(enr) FROM College)
SELECT T2.SCHOOL_CODE FROM professor AS T1 JOIN department AS T2 ON T1.DEPT_CODE = T2.DEPT_CODE GROUP BY T2.SCHOOL_CODE ORDER BY count(*) LIMIT 1
SELECT Type, COUNT(*) FROM ship GROUP BY Type
SELECT DISTINCT t3.paperId FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId WHERE t1.authorName = "Liwen Xiong" AND t3.year = 2015;
SELECT state_name FROM city WHERE city_name = (SELECT capital FROM state WHERE population = (SELECT MAX(population) FROM state));
SELECT state FROM College WHERE enr < (SELECT max(enr) FROM College)
SELECT product_name FROM Problems JOIN Product ON Problems.product_id = Product.product_id GROUP BY product_name ORDER BY COUNT(*) DESC LIMIT 3
SELECT classroom, count(*) FROM list WHERE grade = 0 GROUP BY classroom
SELECT t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name JOIN LOCATION AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.food_type = "american" AND t1.rating = (SELECT MAX(t1.rating) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name WHERE t2.region = "bay area" AND t1.food_type = "american");
SELECT t3.paperid FROM paperdataset AS t2 JOIN dataset AS t1 ON t2.datasetid = t1.datasetid JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN venue AS t4 ON t4.venueid = t3.venueid WHERE t1.datasetname = "RGB-D Object Dataset" AND t3.title = "Class consistent multi-modal fusion with binary features" AND t3.year = 2016 AND t4.venuename = "CVPR";
SELECT DISTINCT t2.datasetName FROM paperDataset AS t3 JOIN dataset AS t2 ON t3.datasetId = t2.datasetId JOIN paperKeyphrase AS t1 ON t1.paperId = t3.paperId JOIN keyphrase AS t4 ON t1.keyphraseId = t4.keyphraseId WHERE t4.keyphraseName = "semantic parsing";
SELECT count(DISTINCT StuID) FROM SportsInfo
SELECT COUNT(state_name) FROM state;
SELECT Hispanic FROM city WHERE Black > 10
SELECT T2.name FROM flight AS T1 JOIN aircraft AS T2 ON T1.aid = T2.aid WHERE T1.flno = 99
SELECT DISTINCT p.title FROM paper p JOIN writes w ON p.paperId = w.paperId JOIN author a ON w.authorId = a.authorId WHERE a.authorName = 'Peter Mertens' OR a.authorName = 'Dina Barbian';
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "KAWA" AND T2.lastname = "GORDON"
SELECT count(*) FROM player WHERE Points < 30 GROUP BY Position
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id = T2.building_id WHERE T1.building_short_name = "Columbus Square"
SELECT min(amount_of_transaction) FROM Transactions WHERE transaction_type_code = "PUR" AND share_count > 50
SELECT DISTINCT song_name FROM song WHERE resolution > (SELECT min(resolution) FROM song WHERE languages = 'English')
SELECT count(*) FROM routes AS T1 JOIN airlines AS T2 ON T1.alid = T2.alid JOIN airports AS T3 ON T1.dst_apid = T3.apid WHERE T2.name = 'American Airlines' AND T3.country = 'Italy'
SELECT city_name FROM city WHERE population/density = (SELECT MAX(population/density) FROM city WHERE country_name = 'USA')
SELECT Location FROM party JOIN party_host ON party.Party_ID = party_host.Party_ID JOIN host ON party_host.Host_ID = host.Host_ID WHERE host.Age > 50
SELECT cName FROM College WHERE (state = 'LA' AND enr > 15000) OR (state = 'AZ' AND enr < 13000)
SELECT Ship.Name FROM captain JOIN Ship ON captain.Ship_ID = Ship.Ship_ID ORDER BY captain.age LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN venue AS t2 ON t1.venueId = t2.venueId WHERE t1.year = 2015 AND t2.venueName = "pldi";
SELECT name, seating FROM track WHERE Year_Opened > 2000 ORDER BY seating
SELECT GType FROM Video_Games WHERE GName = "Call of Destiny"
SELECT Campus FROM enrollments WHERE TotalEnrollment_AY > 400 AND FTE_AY > 200 AND Year = 1956
SELECT count(DISTINCT Software_Platform) FROM device
SELECT count(*) FROM Roles
SELECT booking_start_date, booking_end_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.apt_type_code = "Duplex"
SELECT first_name, last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000
SELECT GName, GType FROM Video_Games ORDER BY GName
SELECT cName FROM College WHERE enr > (SELECT max(enr) FROM College WHERE state = 'FL')
SELECT Name, Age FROM editor
SELECT population FROM city WHERE country_name = "USA" AND state_name = "wisconsin"; 
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num LEFT JOIN class AS T3 ON T2.emp_num = T3.prof_num WHERE T3.prof_num IS NULL
SELECT Name FROM people ORDER BY Date_of_Birth ASC
SELECT District_name FROM district WHERE City_Area = (SELECT MIN(City_Area) FROM district);
SELECT COUNT(DISTINCT Position) FROM Member_of_club WHERE ClubID = (SELECT ClubID FROM Club WHERE ClubName = "Bootup Baltimore")
SELECT origin, destination FROM flight WHERE price > 300
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1
SELECT Votes FROM election ORDER BY Votes DESC
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM actor WHERE actor_id IN ( SELECT actor_id FROM film_actor GROUP BY actor_id HAVING COUNT(*) > 30 )
SELECT T2.Party, COUNT(*) FROM party AS T1 JOIN election AS T2 ON T1.Party_ID = T2.Party GROUP BY T2.Party
SELECT T2.Name FROM Staff AS T1 JOIN Tourist_Attractions AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID WHERE T2.Name = "US museum"
SELECT cName FROM College WHERE enr > (SELECT MAX(enr) FROM College WHERE state = 'FL')
SELECT zip_code, date FROM weather WHERE max_temperature_f >= 80
SELECT count(*) FROM list WHERE classroom = [classroom number]
SELECT Rank FROM captain WHERE Ship_ID NOT IN (SELECT Ship_ID FROM Ship WHERE Class = 'Third-rate ship of the line')
SELECT Name, Location, Year_Opened FROM track WHERE Seating > (SELECT avg(Seating) FROM track)
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3;
SELECT product_category_code, avg(product_price) FROM Products GROUP BY product_category_code
SELECT river_name FROM river GROUP BY river_name ORDER BY COUNT(DISTINCT traverse) DESC LIMIT 1;
SELECT count(*) FROM list
SELECT ClubLocation FROM Club WHERE ClubName = "Hopkins Student Enterprises"
SELECT Planned_Delivery_Date, Actual_Delivery_Date FROM Bookings 
SELECT name, city, country FROM airports ORDER BY elevation ASC LIMIT 1
SELECT DISTINCT product_name FROM Products ORDER BY product_name
SELECT Phone FROM Employee; 
SELECT avg(age), min(age), Class FROM captain GROUP BY Class
SELECT state_name FROM border_info WHERE border = "kentucky"; 
SELECT role_description FROM Staff_Roles WHERE role_code = "researcher";
SELECT SUM(t2.citation_num) FROM publication AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.year = 2005;
SELECT COUNT(*) FROM Students WHERE personal_name LIKE "%son%"
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T3.name = 'Brittany Harris' OR T2.year > 2000
SELECT T1.title FROM movie AS T1 JOIN genre AS T2 ON T1.mid = T2.mid WHERE T2.genre = 'Sci-Fi' AND T1.release_year = 2010
SELECT t2.authorid, COUNT(t2.authorid) AS num_papers FROM writes AS t2 JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN paperdataset AS t4 ON t4.paperid = t3.paperid JOIN dataset AS t1 ON t1.datasetid = t4.datasetid WHERE t1.datasetname = "ImageNet" GROUP BY t2.authorid ORDER BY num_papers DESC;
SELECT T1.donator_name FROM endowment AS T1 JOIN School AS T2 ON T1.School_id = T2.School_id WHERE T2.School_name = "Glenn" INTERSECT SELECT T1.donator_name FROM endowment AS T1 JOIN School AS T2 ON T1.School_id = T2.School_id WHERE T2.School_name = "Triton"
SELECT DISTINCT t3.paperid, t3.year FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "deep learning" ORDER BY t3.year DESC;
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num GROUP BY T1.stu_num HAVING COUNT(DISTINCT T2.class_code) = 1
SELECT DISTINCT t1.authorid FROM venue AS t3 JOIN paper AS t2 ON t3.venueid = t2.venueid JOIN writes AS t1 ON t1.paperid = t2.paperid WHERE t3.venuename = "NIPS";
SELECT population FROM city WHERE city_name = "seattle" AND state_name = "washington";
SELECT login_name, family_name FROM Course_Authors_and_Tutors
SELECT T1.emp_fname, T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T3.dept_code = T2.dept_code WHERE T3.dept_name = 'History' AND T2.prof_high_degree != 'Ph.D.'
SELECT gas_station.Station_ID, gas_station.Location, gas_station.Manager_Name FROM gas_station ORDER BY gas_station.Open_Year
SELECT course_id FROM SECTION WHERE semester = 'Fall' AND YEAR = 2009 EXCEPT SELECT course_id FROM SECTION WHERE semester = 'Spring' AND YEAR = 2010
SELECT count(DISTINCT product_type_code) FROM Products_for_Hire
SELECT salary FROM salary WHERE year = 2010 OR year = 2001
SELECT Name FROM Artist WHERE Name LIKE '%a%'
SELECT DISTINCT p.paperId FROM paper AS p JOIN writes AS w ON p.paperId = w.paperId JOIN author AS a ON w.authorId = a.authorId WHERE a.authorName = "sharon goldwater";
SELECT T1.director, T2.title, T2.stars FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID = T2.mID WHERE T1.director IS NOT NULL AND T2.stars = (SELECT MAX(stars) FROM Rating WHERE mID IN (SELECT mID FROM Movie WHERE director = T1.director)) ORDER BY T1.director
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.ID JOIN student AS T3 ON T1.s_id = T3.ID WHERE T3.dept_name = 'Math' ORDER BY T3.tot_cred
SELECT Name FROM program ORDER BY Launch DESC LIMIT 1
SELECT count(DISTINCT t3.Position) FROM Club AS t1 JOIN Member_of_club AS t2 ON t1.ClubID = t2.ClubID WHERE t1.ClubName = "Bootup Baltimore"
SELECT DISTINCT t2.venueName FROM venue AS t2 JOIN paper AS t1 ON t2.venueId = t1.venueId JOIN paperkeyphrase AS t3 ON t1.paperId = t3.paperId JOIN keyphrase AS t4 ON t3.keyphraseId = t4.keyphraseId WHERE t4.keyphraseName = "NLP" GROUP BY t2.venueName ORDER BY COUNT(t1.paperId) DESC;
SELECT T1.Name, T2.District FROM phone AS T1 JOIN phone_market AS T3 ON T1.Phone_ID = T3.Phone_ID JOIN market AS T2 ON T3.Market_ID = T2.Market_ID ORDER BY T2.Ranking ASC
SELECT capital FROM state WHERE state_name = (SELECT state_name FROM highlow WHERE highest_elevation = (SELECT MAX(highest_elevation) FROM highlow));
SELECT employees.first_name, employees.last_name FROM employees JOIN departments ON employees.department_id = departments.department_id WHERE departments.department_id = 70 OR departments.department_id = 90
SELECT Name, Class, Rank FROM captain
SELECT date_from FROM Project_Staff ORDER BY date_from ASC LIMIT 1
SELECT COUNT(*) FROM RESTAURANT AS r JOIN GEOGRAPHIC AS g ON r.CITY_NAME = g.CITY_NAME WHERE g.REGION = "bay area" AND r.FOOD_TYPE = "chinese";
SELECT count(*) FROM Companies WHERE Industry = 'Banking' OR Industry = 'Conglomerate'
SELECT COUNT(DISTINCT t3.paperId) FROM writes AS t1 JOIN author AS t2 ON t1.authorId = t2.authorId JOIN writes AS t3 ON t3.paperId = t1.paperId JOIN paper AS t4 ON t4.paperId = t3.paperId WHERE t2.authorName = "Noah Smith" AND t4.year >= 2009;
SELECT count(DISTINCT t2.ClubID) FROM Student AS t1 JOIN Member_of_club AS t2 ON t1.StuID = t2.StuID WHERE t1.LName = "Smith" AND t1.FName = "Linda"
SELECT t3.title, t3.year, t4.authorName, t2.numCiting FROM paper AS t3 JOIN paperKeyphrase AS t1 ON t3.paperId = t1.paperId JOIN keyphrase AS t2 ON t1.keyphraseId = t2.keyphraseId JOIN writes AS t4 ON t3.paperId = t4.paperId WHERE t2.keyphraseName = "dependent types" ORDER BY t2.numCiting DESC;
SELECT T1.student_details FROM Students AS T1 JOIN Student_Course_Registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM CLASS AS T1 JOIN EMPLOYEE AS T2 ON T1.PROF_NUM = T2.EMP_NUM WHERE T2.EMP_LNAME = "Graztevski"
SELECT Customer_Phone FROM Available_Policies
SELECT DISTINCT detention_type_code FROM Ref_Detention_Type
SELECT T1.Fname, T1.Lname FROM Faculty AS T1 JOIN Course AS T2 ON T1.FacID = T2.Instructor GROUP BY T1.FacID ORDER BY COUNT(*) DESC LIMIT 3
SELECT DISTINCT t3.paperid FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "Question Answering experiments";
SELECT country.country FROM country JOIN city ON country.country_id = city.country_id GROUP BY country.country_id HAVING COUNT(city.city_id) >= 3
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city)
SELECT Project_ID FROM Documents GROUP BY Project_ID HAVING COUNT(*) >= 2
SELECT product_id, product_type_code FROM Products ORDER BY product_price ASC LIMIT 1
SELECT T2.student_id FROM Courses AS T1 JOIN Student_Course_Attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.date_of_attendance
SELECT T2.Name, T1.Name FROM train_station AS T3 JOIN train AS T2 ON T3.Train_ID = T2.Train_ID JOIN station AS T1 ON T3.Station_ID = T1.Station_ID
SELECT S.Name, S.Main_Services FROM station AS S JOIN ( SELECT Station_ID, Total_Passengers FROM station ORDER BY Total_Passengers DESC LIMIT 3 ) AS T ON S.Station_ID = T.Station_ID
SELECT count(friend) FROM PersonFriend WHERE name = 'Dan'
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left" AND T1.height >= 180 AND T1.height <= 190
SELECT ClubLocation FROM Club WHERE ClubName = "Pen and Paper Gaming"
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"
SELECT fname, lname FROM Authors ORDER BY lname
SELECT avg(rating), avg(resolution) FROM song WHERE languages = 'Bangla'
SELECT LENGTH FROM river WHERE river_name = "rio grande";
SELECT count(*) FROM Ref_Colors
SELECT COUNT(DISTINCT t2.title) FROM publication AS t2 JOIN conference AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.year > 2000;
SELECT T1.Team FROM Elimination AS T1 GROUP BY T1.Team HAVING COUNT(*) > 3
SELECT team.name, team.team_id FROM team JOIN salary ON team.team_id = salary.team_id GROUP BY team.team_id ORDER BY AVG(salary.salary) ASC LIMIT 1;
SELECT avg(training_hours) FROM Player
SELECT bedType, avg(basePrice) FROM Rooms GROUP BY bedType
SELECT t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name JOIN LOCATION AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.food_type = "american" AND t1.rating = (SELECT MAX(t1.rating) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name WHERE t2.region = "bay area" AND t1.food_type = "american");
SELECT COUNT(DISTINCT t5.title) FROM publication_keyword AS t3 JOIN keyword AS t1 ON t3.kid = t1.kid JOIN publication AS t5 ON t5.pid = t3.pid JOIN writes AS t4 ON t4.pid = t5.pid JOIN author AS t2 ON t4.aid = t2.aid WHERE t2.name = "H. V. Jagadish" AND t1.keyword = "User Study";
SELECT Employee_ID FROM Employees WHERE Employee_ID NOT IN (SELECT DISTINCT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed)
SELECT count(*) , semester , year FROM section GROUP BY semester , year
SELECT name, address_road, city FROM branch ORDER BY open_year
SELECT count(*) FROM invoices WHERE billing_city = "Chicago" AND billing_state = "IL";
SELECT t2.title FROM publication AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB";
SELECT DISTINCT Type FROM Vocals
SELECT Type FROM school GROUP BY Type HAVING COUNT(*) = 2
SELECT T1.cName FROM College AS T1 JOIN Tryout AS T2 ON T1.cName = T2.cName WHERE T2.decision = 'yes' AND T2.pPos = 'goalie'
SELECT country, avg(elevation) FROM airports GROUP BY country
SELECT customer_name FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Orders)
SELECT Founder FROM Manufacturers WHERE Name LIKE 'S%'
SELECT T1.FacID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.Advisor GROUP BY T1.FacID HAVING COUNT(*) >= 2
SELECT product_name, typical_buying_price FROM Products
SELECT School_Colors FROM school ORDER BY Enrollment DESC LIMIT 1
SELECT count(*) FROM Vehicles;
SELECT Name FROM technician WHERE Age = 36 OR Age = 37
SELECT avg(age), job FROM Person GROUP BY job
SELECT name FROM organization WHERE continent = "North America";
SELECT t2.house_number, t1.name FROM LOCATION AS t2 JOIN RESTAURANT AS t1 ON t1.id = t2.restaurant_id WHERE t1.city_name IN (SELECT city_name FROM GEOGRAPHIC WHERE region = "bay area");
SELECT DISTINCT t4.citedpaperid, COUNT(t4.citedpaperid) FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN cite AS t4 ON t3.paperid = t4.citedpaperid WHERE t1.keyphrasename = "parsing" GROUP BY t4.citedpaperid ORDER BY COUNT(t4.citedpaperid) DESC;
SELECT Advisor, COUNT(*) FROM Student GROUP BY Advisor
SELECT T1.Location FROM party AS T1 JOIN party_host AS T2 ON T1.Party_ID = T2.Party_ID GROUP BY T1.Location ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM people ORDER BY Name ASC
SELECT t1.name, t2.house_number, t2.street_name FROM restaurant AS t1 JOIN location AS t2 ON t1.id = t2.restaurant_id WHERE t1.food_type = "arabic" AND t2.city_name = "mountain view" AND t1.rating > 2.5;
SELECT "Date_of_ceremony", "Result" FROM music_festival
SELECT DISTINCT artist_name FROM artist WHERE artist_name IN (SELECT artist_name FROM song WHERE languages = "English") AND artist_name NOT IN (SELECT artist_name FROM song WHERE rating > 8)
SELECT T1.driverId, T1.forename, T1.surname FROM drivers AS T1 JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.position = '1' GROUP BY T1.driverId HAVING COUNT(*) >= 2
SELECT document_status_description FROM Ref_Document_Status WHERE document_status_code = 'working'
SELECT T2.name, T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.ID JOIN student AS T3 ON T1.s_ID = T3.ID WHERE T3.dept_name = 'History'
SELECT Carrier FROM phone WHERE Memory_in_G < 32 INTERSECT SELECT Carrier FROM phone WHERE Memory_in_G > 64
SELECT Winery FROM wine GROUP BY Winery HAVING COUNT(*) >= 4
SELECT Committee FROM election AS e1 JOIN party AS p1 ON e1.Party = p1.Party_ID WHERE p1.Party = 'Democratic' INTERSECT SELECT Committee FROM election AS e2 JOIN party AS p2 ON e2.Party = p2.Party_ID WHERE p2.Party = 'Liberal'
SELECT personal_name, family_name FROM Students ORDER BY family_name
SELECT Company, Rank FROM company ORDER BY Sales_billion DESC
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Ryan" AND T2.last_name = "Goodwin" AND T1.lesson_status_code = "Completed";
SELECT city.city_name, city.population FROM city JOIN state ON city.state_name = state.state_name WHERE state.state_name = "wisconsin" AND city.population > 100000 ORDER BY city.population DESC;
SELECT Name, Score FROM wine WHERE Grape IN (SELECT Grape FROM grapes WHERE Color = "White")
SELECT Position FROM match_season AS T1 JOIN player AS T2 ON T1.Player = T2.Player WHERE T2.Team = (SELECT Team_id FROM team WHERE Name = 'Ryley Goldner')
SELECT Location FROM school ORDER BY Founded DESC
SELECT T2.Name FROM round AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID WHERE T1.Rank_in_Round > 3
SELECT state_name FROM state WHERE area = (SELECT MAX(area) FROM state);
SELECT T1.statement_id, T2.statement_details, T1.account_details FROM Accounts AS T1 JOIN Statements AS T2 ON T1.statement_id = T2.statement_id
SELECT County_name FROM county JOIN election ON county.County_Id = election.District GROUP BY county.County_Id HAVING COUNT(*) >= 2
SELECT Theme FROM farm_competition ORDER BY Year ASC
SELECT Name FROM wine WHERE Winery < "Brander"
SELECT Nurse FROM On_Call WHERE BlockFloor = 1 AND BlockCode = 1
SELECT state_name FROM city GROUP BY state_name ORDER BY SUM ( population ) LIMIT 1;
SELECT Builder FROM railway GROUP BY Builder ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM EMPLOYEE
SELECT Location, COUNT(*) FROM railway GROUP BY Location
SELECT LName FROM Student WHERE Major = 50
SELECT T1.date_incident_start, T1.date_incident_end FROM Behavior_Incident AS T1 JOIN Ref_Incident_Type AS T2 ON T1.incident_type_code = T2.incident_type_code WHERE T2.incident_type_code = "NOISE"
SELECT count(*) FROM Student
SELECT DISTINCT Famous_Release_date FROM artist 
SELECT DISTINCT t1.paperid FROM venue AS t2 JOIN paper AS t1 ON t2.venueid = t1.venueid WHERE t2.venuename = "chi";
SELECT name FROM instructor WHERE salary > (SELECT max(salary) FROM instructor WHERE dept_name = 'Biology')
SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed
SELECT sum(SALARY), DEPARTMENT_ID FROM employees GROUP BY DEPARTMENT_ID HAVING COUNT(*) > 2
SELECT student.name, department.dept_name FROM student JOIN department ON student.dept_name = department.dept_name ORDER BY student.tot_cred ASC
SELECT count(*) FROM architect WHERE gender = 'female'
SELECT DISTINCT COUNT(t1.paperid) FROM venue AS t2 JOIN paper AS t1 ON t2.venueid = t1.venueid WHERE t1.year = YEAR(CURDATE()) - 1 AND t2.venuename = "nature communications";
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported > ( SELECT max(date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "Rylan" AND T4.staff_last_name = "Homenick" )
SELECT count(*) FROM technician
SELECT T1.title, T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1
SELECT unit_of_measure FROM Ref_Product_Categories WHERE product_category_code = "Herbs"
SELECT COUNT(DISTINCT t3.paperId) FROM paperKeyphrase AS t1 JOIN keyphrase AS t4 ON t1.keyphraseId = t4.keyphraseId JOIN writes AS t3 ON t3.paperId = t1.paperId JOIN author AS t2 ON t3.authorId = t2.authorId WHERE t2.authorName = "Ed Desmond" AND t4.keyphraseName = "Semantic Parsing";
SELECT T1.FirstName, T1.LastName FROM list AS T1 LEFT JOIN teachers AS T2 ON T1.Classroom = T2.Classroom WHERE T1.Grade = 1 AND (T2.FirstName != "OTHA" OR T2.LastName != "MOYER")
SELECT highest_point FROM highlow WHERE state_name = ( SELECT state_name FROM state WHERE area = ( SELECT MIN ( area ) FROM state ) );
SELECT DISTINCT t3.paperid FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "monte carlo simulation" AND t3.year > 2011;
SELECT count(*) FROM list
SELECT T1.Employee_ID, COUNT(*) FROM Employees AS T1 JOIN Documents_to_be_Destroyed AS T2 ON T1.Employee_ID = T2.Destruction_Authorised_by_Employee_ID GROUP BY T1.Employee_ID
SELECT There is no SQL query provided to answer the question "how tall is guadalupe peak".
SELECT name FROM Person WHERE age > 40 AND name NOT IN (SELECT name FROM PersonFriend WHERE year < 30)
SELECT count(DISTINCT Artist_ID) FROM volume
SELECT t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name JOIN LOCATION AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.food_type = "american" AND t1.rating = (SELECT MAX(t1.rating) FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name WHERE t2.region = "bay area" AND t1.food_type = "american");
SELECT LName FROM Student AS t1 JOIN Member_of_club AS t2 ON t1.StuID = t2.StuID JOIN Club AS t3 ON t2.ClubID = t3.ClubID WHERE t3.ClubName = "Hopkins Student Enterprises"
SELECT T2.color_description FROM Products AS T1 JOIN Ref_Colors AS T2 ON T1.color_code = T2.color_code GROUP BY T2.color_description ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(HS), pPos FROM Player GROUP BY pPos
SELECT river_name FROM river WHERE traverse IN ( SELECT state_name FROM state WHERE population = ( SELECT MAX(population) FROM state ) );
SELECT avg(price_range), star_rating_code FROM Hotels GROUP BY star_rating_code
SELECT Customer_Details FROM Customers WHERE Customer_ID NOT IN (SELECT Customer_ID FROM Customer_Policies) 
SELECT T1.Working_year_starts FROM manager AS T1 ORDER BY T1.Level DESC
SELECT Fname, Lname, Phone FROM Faculty WHERE Sex = 'F'
SELECT AllergyType, COUNT(Allergy) FROM Allergy_Type GROUP BY AllergyType
SELECT t4.title FROM publication AS t4 JOIN conference AS t2 ON t4.cid = t2.cid JOIN writes AS t3 ON t3.pid = t4.pid JOIN author AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "VLDB";
SELECT t3.year, COUNT(t6.citingPaperId) AS numCitations FROM author AS t1 JOIN writes AS t2 ON t1.authorId = t2.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId JOIN cite AS t6 ON t3.paperId = t6.citedPaperId WHERE t1.authorName = "Luke Zettlemoyer" GROUP BY t3.year;
SELECT T1.Fname FROM Faculty AS T1 JOIN Faculty_Participates_in AS T2 ON T1.FacID = T2.FacID JOIN Activity AS T3 ON T2.actid = T3.actid WHERE T3.activity_name = 'Canoeing' OR T3.activity_name = 'Kayaking'
SELECT Country, COUNT(*) FROM perpetrator GROUP BY Country
SELECT count(*) , Software_Platform FROM device GROUP BY Software_Platform
SELECT T1.White, T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID = T2.County_ID
SELECT Appelation FROM appellations WHERE Appelation IN ( SELECT Appelation FROM wine WHERE Year > 2008 ) AND Area != 'Central Coast'
SELECT T3.amenity_name FROM Dorm AS T1 JOIN Has_amenity AS T2 ON T1.dormid = T2.dormid JOIN Dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T1.dorm_name = 'Smith Hall' ORDER BY T3.amenity_name
SELECT T1.account_id, T1.customer_id, T2.customer_first_name, T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id
SELECT COUNT(*) FROM RESTAURANT AS t1 JOIN GEOGRAPHIC AS t2 ON t1.CITY_NAME = t2.CITY_NAME WHERE t2.REGION = "bay area" AND t1.FOOD_TYPE = "chinese";
SELECT sum(Faculty) FROM faculty WHERE Year = 2002
SELECT characteristic_name FROM Characteristics GROUP BY characteristic_name HAVING COUNT(*) >= 2
SELECT start_station_name, start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Location FROM school WHERE School_ID IN (SELECT School_ID FROM player GROUP BY School_ID HAVING COUNT(*) > 1)
SELECT DISTINCT premises_type FROM Premises
SELECT count(*) FROM enzyme WHERE id NOT IN (SELECT enzyme_id FROM medicine_enzyme_interaction)
SELECT title, film_id FROM film WHERE rental_rate = 0.99 AND film_id IN (SELECT film_id FROM inventory GROUP BY film_id HAVING COUNT(*) < 3)
SELECT pets_allowed_yn, avg(price_range) FROM Hotels GROUP BY pets_allowed_yn
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1
SELECT sum(salary) FROM salary WHERE team_id = 'Boston Red Stockings' AND year = 2010
SELECT DISTINCT p.paperId FROM paper p JOIN venue v ON p.venueId = v.venueId JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId WHERE v.venueName = "NIPS" AND k.keyphraseName = "TAIL";
SELECT T1.Denomination FROM school AS T1 JOIN player AS T2 ON T1.School_ID = T2.School_ID GROUP BY T1.Denomination ORDER BY count(*) DESC LIMIT 1
SELECT gender, count(*) FROM artist GROUP BY gender
SELECT T1.Date_Opened, T1.Date_Closed FROM Customers_Policies AS T1 JOIN Customers AS T2 ON T1.Customer_ID = T2.Customer_ID WHERE T2.Customer_name LIKE "%Diana%"
SELECT T2.product FROM store AS T1 JOIN store_product AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Store_Name = "Miramichi"
SELECT state_name FROM highlow WHERE lowest_elevation = (SELECT MIN(lowest_elevation) FROM highlow);
SELECT T1.problem_description FROM Problem_Log AS T1 JOIN Staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop"
SELECT Name FROM furniture WHERE Price_in_Dollar < (SELECT max(Price_in_Dollar) FROM furniture_manufacte)
SELECT T1.grant_amount FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id = T2.grant_id WHERE T2.sent_date < '1986-08-26 20:49:27' AND T1.grant_end_date > '1989-03-16 18:27:16'
SELECT DISTINCT p.paperId FROM paper p JOIN venue v ON p.venueId = v.venueId JOIN writes w ON p.paperId = w.paperId JOIN author a ON w.authorId = a.authorId WHERE a.authorName = "Richard Ladner" AND v.venueName = "chi";
SELECT count(*) FROM Products
SELECT T2.Country FROM stadium AS T1 JOIN country AS T2 ON T1.Country = T2.Country GROUP BY T2.Country HAVING count(*) <= 3
SELECT Name FROM wine WHERE Year < (SELECT MIN(Year) FROM wine WHERE Winery = "Brander")
SELECT Name FROM artwork WHERE Artwork_ID NOT IN (SELECT Artwork_ID FROM nomination)
SELECT avg(Votes) FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID = T2.Representative_ID WHERE T2.Party = "Republican"
SELECT COUNT(DISTINCT t3.title) FROM writes AS t2 JOIN author AS t1 ON t2.aid = t1.aid JOIN publication AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish";
SELECT DISTINCT t3.title FROM writes AS t2 JOIN author AS t1 ON t2.authorid = t1.authorid JOIN paper AS t3 ON t2.paperid = t3.paperid WHERE t1.authorname = "Liwen Xiong" AND t3.year = YEAR(CURDATE())-1;
SELECT count(*) FROM advisor
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid = t1.aid JOIN movie AS t4 ON t4.mid = t5.msid JOIN directed_by AS t2 ON t4.mid = t2.msid JOIN director AS t3 ON t3.did = t2.did WHERE t1.name = "Taraneh Alidoosti" AND t3.name = "Asghar Farhadi";
SELECT DISTINCT p.paperId FROM paper p JOIN writes w ON p.paperId = w.paperId JOIN author a ON w.authorId = a.authorId WHERE a.authorName = "Peter Mertens" OR a.authorName = "Dina Barbian";
SELECT product_id FROM Order_Items GROUP BY product_id ORDER BY count(*) DESC LIMIT 1
SELECT population FROM city WHERE city_name = "boulder";
SELECT StuID FROM SportsInfo WHERE OnScholarship = 'Y'
SELECT rID FROM Reviewer WHERE rID NOT IN (SELECT rID FROM Rating WHERE stars = 4)
SELECT t3.authorid, t3.authorname, COUNT(t4.paperid) as num_papers FROM paperkeyphrase AS t1 JOIN keyphrase AS t2 ON t1.keyphraseid = t2.keyphraseid JOIN paper AS t4 ON t4.paperid = t1.paperid JOIN writes AS t3 ON t3.paperid = t4.paperid WHERE t2.keyphrasename = "syntactic parsing" GROUP BY t3.authorid ORDER BY num_papers DESC LIMIT 1;
SELECT t1.name, t1.full_address, t1.city, t1.state FROM business AS t1 JOIN review AS t2 ON t1.business_id = t2.business_id JOIN user AS t3 ON t2.user_id = t3.user_id WHERE t3.name = "Niloofar";
SELECT sum(amount) FROM payment
SELECT first_name, last_name, hire_date, salary, department_id FROM employees WHERE first_name NOT LIKE '%M%'
SELECT activity_name FROM Activity
SELECT Title FROM Songs WHERE SongId NOT IN (SELECT SongId FROM Vocals WHERE Type = "lead")
SELECT count(*) FROM airlines
SELECT avg(T2.fastestlapspeed), T1.name, T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2004 GROUP BY T1.name ORDER BY T1.year
SELECT customer_id, customer_details, date_moved_in FROM Customers JOIN Customer_Events ON Customers.customer_id = Customer_Events.customer_id JOIN Residents ON Customer_Events.resident_id = Residents.resident_id AND Customer_Events.property_id = Residents.property_id AND Customer_Events.date_moved_in = Residents.date_moved_in
SELECT Velocity FROM flight WHERE Pilot = 'Thompson'
SELECT T1.name FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id = T2.source_u_id GROUP BY T2.source_u_id ORDER BY avg(T2.trust) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T2.department_name, T3.city, T3.state_province FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id
SELECT sum(revenue) FROM manufacturers WHERE revenue > (SELECT max(revenue) FROM manufacturers WHERE headquarter = 'Austin')
SELECT DISTINCT t3.paperid FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "character recognition" AND t3.year < 2010;
SELECT resident_details FROM Residents WHERE resident_details LIKE "%Miss%"
SELECT origin FROM train GROUP BY origin HAVING COUNT(*) > 1
SELECT T2.Name FROM Staff AS T1 JOIN Tourist_Attractions AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID WHERE T2.Name = "US museum"
SELECT t1.name FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN category AS t3 ON t3.business_id = t1.business_id WHERE t1.city = "Los Angeles" AND t2.category_name = "Seafood" AND t3.category_name = "restaurant";
SELECT name FROM Person ORDER BY age DESC LIMIT 1
SELECT name, height, prominence FROM mountain WHERE Range != 'Aberdare Range'
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id WHERE T2.rating = 10
SELECT T1.catalog_name, T1.date_of_publication FROM Catalogs AS T1 JOIN Catalog_Structure AS T2 ON T1.catalog_id = T2.catalog_id WHERE T2.catalog_level_number > 5
SELECT transaction_id FROM Financial_Transactions WHERE transaction_amount > (SELECT avg(transaction_amount) FROM Financial_Transactions)
SELECT COUNT(DISTINCT t3.paperId) FROM venue AS t4 JOIN paper AS t3 ON t4.venueId = t3.venueId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "David M. Blei" AND t4.venueName = "AISTATS";
SELECT id, duration FROM trip ORDER BY duration DESC LIMIT 1 
SELECT DISTINCT p.paperId, p.title FROM paper p JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId JOIN writes w ON p.paperId = w.paperId JOIN author a ON w.authorId = a.authorId WHERE a.authorName = "brian curless" AND k.keyphraseName = "convolution";
SELECT fault_description, fault_status FROM Fault_Log
SELECT city_name FROM city WHERE population > 150000 AND state_name = "kansas";
SELECT T1.Name, T2.Name FROM roller_coaster AS T1 JOIN country AS T2 ON T1.Country_ID = T2.Country_ID
SELECT decor, count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor
SELECT river_name FROM river WHERE LENGTH = (SELECT MIN(LENGTH) FROM river WHERE country_name = 'USA');
SELECT song.song_name, song.rating, artist.artist_name FROM song JOIN artist ON song.artist_name = artist.artist_name WHERE song.languages = 'English' ORDER BY song.rating DESC
SELECT T1.Name FROM driver AS T1 JOIN school_bus AS T2 ON T1.Driver_ID = T2.Driver_ID ORDER BY T2.Years_Working DESC LIMIT 1
SELECT T2.product_id, T1.product_details FROM Products AS T1 JOIN Order_Items AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id ORDER BY SUM(order_quantity) DESC LIMIT 1
SELECT name FROM business WHERE state = "Texas" AND rating < 2
SELECT Party FROM representative WHERE State = "New York" INTERSECT SELECT Party FROM representative WHERE State = "Pennsylvania"
SELECT Name FROM church EXCEPT SELECT T1.Name FROM church AS T1 JOIN wedding AS T2 ON T1.Church_ID = T2.Church_ID WHERE T2.Year = 2015
SELECT song_name FROM song JOIN files ON song.f_id = files.f_id WHERE files.formats = 'mp3' AND song.resolution < 1000
SELECT t1.customer_name FROM Customers AS t1 JOIN Customers_Policies AS t2 ON t1.Customer_ID = t2.Customer_ID JOIN Available_Policies AS t3 ON t2.Policy_ID = t3.Policy_ID JOIN First_Notification_of_Loss AS t4 ON t2.Customer_ID = t4.Customer_ID AND t2.Policy_ID = t4.Policy_ID JOIN Services AS t5 ON t4.Service_ID = t5.Service_ID WHERE t5.Service_name = "Close a policy" OR t5.Service_name = "Upgrade a policy"
SELECT T1.customer_name, T1.payment_method FROM Customers AS T1 JOIN Mailshot_Customers AS T2 ON T1.customer_id = T2.customer_id JOIN Mailshot_Campaigns AS T3 ON T2.mailshot_id = T3.mailshot_id WHERE T3.outcome_code = 'Order' AND T1.customer_id IN ( SELECT customer_id FROM Mailshot_Customers JOIN Mailshot_Campaigns ON Mailshot_Customers.mailshot_id = Mailshot_Campaigns.mailshot_id WHERE outcome_code = 'No Response' )
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code JOIN course AS T4 ON T3.crs_code = T4.crs_code JOIN department AS T5 ON T5.dept_code = T4.dept_code WHERE T5.dept_name = 'Accounting' INTERSECT SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code JOIN course AS T4 ON T3.crs_code = T4.crs_code JOIN department AS T5 ON T5.dept_code = T4.dept_code WHERE T5.dept_name = 'Computer Info. Systems'
SELECT count(*) FROM Club WHERE ClubLocation = "HHH"
SELECT Candidate_ID FROM candidate ORDER BY oppose_rate LIMIT 1
SELECT rID FROM Reviewer WHERE name LIKE "%Mike%"
SELECT T1.address_line_1, T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING COUNT(*) >= 2
SELECT count(*) FROM Student WHERE Sex = 'F' AND Age < 25
SELECT COUNT(DISTINCT Name) FROM Photos
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name GROUP BY T1.name HAVING count(*) = 1
SELECT lowest_point FROM highlow WHERE state_name = "iowa";
SELECT t3.name FROM DOMAIN AS t3 JOIN domain_conference AS t1 ON t3.did = t1.did JOIN conference AS t2 ON t2.cid = t1.cid WHERE t2.name = "VLDB";
SELECT DISTINCT LName FROM Student WHERE StuID IN (SELECT President_Vote FROM Voting_record) AND Advisor != 2192
SELECT T1.rid FROM routes AS T1 JOIN airports AS T2 ON T1.src_apid = T2.apid JOIN airports AS T3 ON T1.dst_apid = T3.apid WHERE T2.country = 'United States' AND T3.country = 'United States'
SELECT T2.name FROM film AS T1 JOIN film_category AS T2 ON T1.film_id = T2.film_id WHERE T1.title = 'HUNGER ROOF'
SELECT problem_log_id FROM Problem_Log ORDER BY log_entry_date DESC LIMIT 1
SELECT T1.staff_name, T1.staff_gender FROM Staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.job_title_code = "Sales Person" AND T1.staff_id NOT IN ( SELECT T1.staff_id FROM Staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.job_title_code = "Clerical Staff" )
SELECT count(*) FROM Products WHERE Manufacturer != (SELECT Code FROM Manufacturers WHERE Name = 'Sony')
SELECT composer FROM tracks WHERE name = "Fast As a Shark"; 
SELECT crs_credit, crs_description FROM course WHERE crs_code = 'CIS-220'
SELECT DISTINCT t2.paperId FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN cite AS t3 ON t3.citingPaperId = t2.paperId JOIN author AS t4 ON t4.authorId = t3.citedPaperId WHERE t4.authorName = "Daniel Jurafsky";
SELECT T1.Minister, T1.Took_office, T1.Left_office FROM party AS T1 ORDER BY T1.Left_office
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T2.balance + T3.balance LIMIT 1
SELECT max(T2.fastestLapSpeed), T1.name, T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.year > 2004 GROUP BY T1.name ORDER BY T1.year
SELECT apt_number, room_count FROM Apartments
SELECT T1.customer_id, COUNT(*) AS num_cards FROM Customers_Cards AS T1 GROUP BY T1.customer_id ORDER BY num_cards DESC LIMIT 1
SELECT date_valid_from, date_valid_to FROM Customers_Cards WHERE card_number = '4560596484842'
SELECT flno, origin, destination FROM flight ORDER BY origin 
SELECT T2.Winery FROM wine AS T1 JOIN grapes AS T2 ON T1.Grape = T2.Grape WHERE T2.Color = "white" GROUP BY T2.Winery ORDER BY count(*) DESC LIMIT 3
SELECT state_name FROM border_info WHERE border = "idaho" AND state_name IN (SELECT state_name FROM highlow WHERE lowest_point = (SELECT MIN(lowest_elevation) FROM highlow));
SELECT T2.Member_Name, T3.Party_name FROM member AS T2 JOIN party AS T3 ON T2.Party_ID = T3.Party_ID
SELECT count(*) FROM Club AS t1 JOIN Member_of_club AS t2 ON t1.ClubID = t2.ClubID JOIN Student AS t3 ON t2.StuID = t3.StuID WHERE t3.LName = "Tai" AND t3.FName = "Eric"
SELECT T1.Advisor FROM Student AS T1 GROUP BY T1.Advisor HAVING COUNT(*) > 2
SELECT t6.name FROM CAST AS t4 JOIN actor AS t1 ON t4.aid = t1.aid JOIN movie AS t5 ON t5.mid = t4.msid JOIN directed_by AS t2 ON t5.mid = t2.msid JOIN director AS t3 ON t3.did = t2.did JOIN made_by AS t7 ON t5.mid = t7.msid JOIN producer AS t6 ON t6.pid = t7.pid WHERE t1.name = "Kate Winslet";
SELECT Ref_Shipping_Agents.shipping_agent_code FROM Ref_Shipping_Agents WHERE Ref_Shipping_Agents.shipping_agent_name = "UPS";
SELECT SUM(Undergraduate) FROM discipline_enrollments AS T1 JOIN campuses AS T2 ON T1.Campus = T2.Id WHERE T2.Campus = "San Jose State University"
SELECT COUNT(DISTINCT Major) AS num_majors, COUNT(DISTINCT city_code) AS num_city_codes FROM Student
SELECT COUNT(t4.paperId), t3.authorId FROM paperKeyphrase AS t1 JOIN keyphrase AS t2 ON t1.keyphraseId = t2.keyphraseId JOIN paper AS t4 ON t4.paperId = t1.paperId JOIN writes AS t3 ON t3.paperId = t4.paperId WHERE t2.keyphraseName = "syntactic parsing" GROUP BY t3.authorId ORDER BY COUNT(t4.paperId) DESC;
SELECT Campus FROM Campuses WHERE County = "Los Angeles"
SELECT count(*) FROM list WHERE Classroom IN (SELECT Classroom FROM teachers WHERE FirstName = "TARRING" AND LastName = "LEIA")
SELECT Rank FROM Faculty GROUP BY Rank ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT p.paperId FROM paper p JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId WHERE k.keyphraseName = "Question Answering";
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award"
SELECT t2.name FROM writes AS t2 JOIN author AS t1 ON t2.aid = t1.aid JOIN publication AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish" AND t3.year > 2000;
SELECT avg(pages_per_minute_color) FROM product
SELECT population FROM city WHERE city_name = "boulder";
SELECT Type, Nationality FROM ship
SELECT COUNT(t4.paperId), t3.authorId FROM paperKeyphrase AS t1 JOIN keyphrase AS t2 ON t1.keyphraseId = t2.keyphraseId JOIN paper AS t4 ON t4.paperId = t1.paperId JOIN writes AS t3 ON t3.paperId = t4.paperId WHERE t2.keyphraseName = "semantic parsing" AND t4.year > 2005 GROUP BY t3.authorId ORDER BY COUNT(t4.paperId) DESC;
SELECT Name, Damage_millions_USD FROM storm ORDER BY Max_speed DESC
SELECT Name FROM actor WHERE Musical_ID IN (SELECT Musical_ID FROM musical WHERE Name = 'The Phantom of the Opera')
SELECT sum(balance) FROM SAVINGS WHERE custid NOT IN (SELECT custid FROM ACCOUNTS WHERE name = 'Brown')
SELECT T1.Team, count(*) FROM Elimination AS T1 GROUP BY T1.Team
SELECT COUNT(DISTINCT t5.title) FROM organization AS t2 JOIN author AS t1 ON t2.oid = t1.oid JOIN writes AS t4 ON t4.aid = t1.aid JOIN publication AS t5 ON t4.pid = t5.pid JOIN conference AS t3 ON t5.cid = t3.cid WHERE t3.name = "VLDB" AND t2.name = "University of Michigan";
SELECT t3.title, t3.year FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "deep learning" ORDER BY t3.year DESC;
SELECT Name FROM storm WHERE Storm_ID NOT IN (SELECT Storm_ID FROM affected_region GROUP BY Storm_ID HAVING COUNT(*) >= 2)
SELECT t1.authorName FROM author AS t1 JOIN writes AS t2 ON t1.authorId = t2.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId JOIN venue AS t4 ON t3.venueId = t4.venueId WHERE t3.year = 2016 AND t4.venueName = "acl";
SELECT Company, Headquarters FROM company ORDER BY Market_Value DESC
SELECT COUNT(DISTINCT Patient.SSN) FROM Patient LEFT JOIN Prescribes ON Patient.SSN = Prescribes.Patient LEFT JOIN Medication ON Prescribes.Medication = Medication.Code WHERE Medication.Name != 'Procrastin-X' OR Medication.Name IS NULL
SELECT COUNT(DISTINCT t3.paperId) FROM paperKeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseId = t1.keyphraseId JOIN paper AS t3 ON t3.paperId = t2.paperId JOIN venue AS t4 ON t4.venueId = t3.venueId WHERE t1.keyphraseName = "Parsing" AND t3.year = 2014 AND t4.venueName = "ACL";
SELECT Name, Headquarter FROM Manufacturers ORDER BY Revenue DESC
SELECT SUM(t4.count) FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN checkin AS t4 ON t4.business_id = t1.business_id WHERE t1.name = "Cafe Zinho" AND t4.day = "Friday";
SELECT COUNT(DISTINCT t1.name) FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN category AS t3 ON t3.business_id = t1.business_id WHERE t1.city = "Edinburgh" AND t2.category_name = "Egyptian" AND t3.category_name = "restaurant";
SELECT COUNT(DISTINCT last_name) FROM actor
SELECT capital FROM state WHERE population = (SELECT MAX(population) FROM state)
SELECT DISTINCT t3.year FROM paper AS t3 JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t1 ON t4.authorid = t1.authorid JOIN venue AS t2 ON t3.venueid = t2.venueid WHERE t1.authorname = "Michael Stonebraker" AND t2.venuename = "VLDB" ORDER BY t3.year LIMIT 1;
SELECT T2.Lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.Bandmate = T2.Id WHERE T1.StagePosition = "back" GROUP BY T2.Lastname ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT dataset.datasetName FROM author JOIN writes ON author.authorId = writes.authorId JOIN paper ON writes.paperId = paper.paperId JOIN paperDataset ON paper.paperId = paperDataset.paperId JOIN dataset ON paperDataset.datasetId = dataset.datasetId WHERE author.authorName = "jitendra malik";
SELECT count(*) FROM building
SELECT * FROM albums ORDER BY title ASC
SELECT sum(share_count) FROM Transactions
SELECT Product_ID FROM Invoice_Items GROUP BY Product_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Participates_in AS T1 JOIN Student AS T2 ON T1.stuid = T2.StuID WHERE T2.Fname = "Mark" AND T2.Lname = "Giuliano"
SELECT count(*) FROM stadium
SELECT first_name, last_name FROM employees ORDER BY birth_date ASC LIMIT 1
SELECT count(*) FROM department WHERE dept_name IN (SELECT dept_name FROM course)
SELECT MAX(customer_code) AS largest_customer_code, MIN(customer_code) AS smallest_customer_code FROM Customers;
SELECT count(*) FROM Customer_Orders WHERE order_details = "Second time"
SELECT Nickname FROM school_details WHERE Division != 1
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_Id = T2.District WHERE T2.Committee = "Appropriations"
SELECT * FROM business WHERE rating = 3.5
SELECT flno FROM flight WHERE aid IN (SELECT aid FROM aircraft WHERE name = "Airbus A340-300")
SELECT EMPLOYEE_ID FROM employees WHERE SALARY > (SELECT AVG(SALARY) FROM employees)
SELECT Reign, Days_held FROM wrestler 
SELECT cName FROM College ORDER BY enr DESC LIMIT 3
SELECT border FROM border_info WHERE state_name = "ohio";
SELECT DEPARTMENT_ID FROM employees WHERE COMMISSION_PCT IS NOT NULL GROUP BY DEPARTMENT_ID HAVING COUNT(*) > 10
SELECT T1.Area FROM appellations AS T1 JOIN wine AS T2 ON T1.Appelation = T2.Appelation WHERE T2.Year < 2010 GROUP BY T1.Area ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM races WHERE year BETWEEN 2009 AND 2011
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1
SELECT Campus FROM Campuses WHERE Location = "Chico"
SELECT T1.state, T1.acc_type, T1.credit_score FROM customer AS T1 WHERE T1.no_of_loans = 0
SELECT count(*) FROM Accounts
SELECT role FROM cast AS T1 JOIN movie AS T2 ON T1.msid = T2.mid WHERE T2.title = "Daddy Long Legs"
SELECT avg(R.stars), M.title FROM Movie M JOIN Rating R ON M.mID = R.mID WHERE M.year = (SELECT MIN(year) FROM Movie)
SELECT max(gradepoint), min(gradepoint) FROM Gradeconversion
SELECT t4.title FROM publication AS t4 JOIN conference AS t2 ON t4.cid = t2.cid JOIN writes AS t3 ON t3.pid = t4.pid JOIN author AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "VLDB" AND t4.year > 2000;
SELECT Name FROM journalist WHERE journalist_ID NOT IN (SELECT journalist_ID FROM news_report)
SELECT COUNT(border) FROM border_info WHERE state_name = "kentucky";
SELECT t2.name FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid = t1.kid JOIN publication AS t3 ON t3.pid = t5.pid JOIN writes AS t4 ON t4.pid = t3.pid JOIN author AS t2 ON t4.aid = t2.aid WHERE t1.keyword = "Relational Database" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t3.title ) DESC LIMIT 1;
SELECT T2.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_ID = T2.cust_ID GROUP BY T2.cust_ID ORDER BY sum(amount) DESC
SELECT Name FROM climber ORDER BY Points DESC
SELECT DISTINCT t3.paperid, t3.title FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "Question Answering";
SELECT "International_Passengers", "Domestic_Passengers" FROM airport WHERE "Airport_Name" = "London Heathrow"
SELECT count(*) FROM Campuses
SELECT title, film_id FROM film WHERE rental_rate = 0.99 AND inventory_id < 3
SELECT t3.authorId, COUNT(t4.citingPaperId) AS numCitations FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN cite AS t4 ON t2.paperId = t4.citedPaperId JOIN writes AS t3 ON t3.paperId = t4.citingPaperId WHERE t1.authorName = "Daniel A Reed" GROUP BY t3.authorId ORDER BY numCitations DESC LIMIT 1
SELECT min(Age), avg(Age), max(Age) FROM Student
SELECT COUNT(city_name) FROM city WHERE state_name = "texas" AND population > 100000;
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Confirmed" AND T2.apt_number IN (SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Provisional")
SELECT t1.Store_Name FROM store AS t1 JOIN store_district AS t2 ON t1.Store_ID = t2.Store_ID WHERE t2.District_ID = (SELECT District_ID FROM district ORDER BY City_Population DESC LIMIT 1)
SELECT apt_type_code, AVG(room_count) FROM Apartments GROUP BY apt_type_code ORDER BY AVG(room_count) DESC LIMIT 3
SELECT T2.country, count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.alid = T2.apid GROUP BY T2.country ORDER BY count(*) DESC
SELECT count(DISTINCT SportName) FROM SportsInfo
SELECT t5.title FROM writes AS t3 JOIN author AS t2 ON t3.aid = t2.aid JOIN publication AS t5 ON t3.pid = t5.pid JOIN writes AS t4 ON t4.pid = t5.pid JOIN author AS t1 ON t4.aid = t1.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Divesh Srivastava" AND t5.citation_num > 200;
SELECT Account_Details FROM Accounts WHERE Account_Details LIKE "%5%" OR Account_Details = (SELECT MAX(Account_Details) FROM Accounts)
SELECT sum(crs_credit), dept_name FROM course JOIN department ON course.dept_code = department.dept_code GROUP BY dept_name
SELECT t1.name FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t1.food_type = "french" ORDER BY t1.rating DESC LIMIT 1;
SELECT DISTINCT t1.authorname FROM paperkeyphrase AS t2 JOIN keyphrase AS t4 ON t2.keyphraseid = t4.keyphraseid JOIN writes AS t3 ON t3.paperid = t2.paperid JOIN author AS t1 ON t3.authorid = t1.authorid WHERE t4.keyphrasename LIKE "sensor fusion";
SELECT t3.title FROM paper AS t3 JOIN paperkeyphrase AS t2 ON t3.paperid = t2.paperid JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid WHERE t1.keyphrasename = "Question Answering";
SELECT DISTINCT t2.title FROM paperkeyphrase AS t5 JOIN keyphrase AS t3 ON t5.keyphraseid = t3.keyphraseid JOIN writes AS t4 ON t4.paperid = t5.paperid JOIN paper AS t2 ON t4.paperid = t2.paperid JOIN author AS t1 ON t4.authorid = t1.authorid JOIN venue AS t6 ON t6.venueid = t2.venueid WHERE t1.authorname LIKE "Ranjit Jhala" AND t3.keyphrasename = "Liquid Haskell";
SELECT T1.Store_Name FROM store AS T1 JOIN store_district AS T2 ON T1.Store_ID = T2.Store_ID JOIN district AS T3 ON T2.District_ID = T3.District_ID WHERE T3.District_name = "Khanewal"
SELECT Projects.Name FROM Projects WHERE Projects.Hours > (SELECT AVG(Hours) FROM Projects)
SELECT max(Number_cities), min(Number_cities) FROM market
SELECT t1.keyword FROM DOMAIN AS t3 JOIN domain_keyword AS t2 ON t3.did = t2.did JOIN keyword AS t1 ON t1.kid = t2.kid WHERE t3.name = "Databases";
SELECT avg(Horizontal_Bar_Points) FROM gymnast
SELECT COUNT(river_name) FROM river WHERE river_name = "colorado";
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.year = 2004 AND T2.campus = "San Francisco State University"
SELECT Projects.Project_ID, Projects.Project_Details FROM Projects JOIN Documents ON Projects.Project_ID = Documents.Project_ID GROUP BY Projects.Project_ID HAVING COUNT(Documents.Document_ID) > 2
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS full_name, SALARY FROM employees WHERE COMMISSION_PCT IS NULL
SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1
SELECT name FROM actor WHERE birth_city = "Austin" AND birth_year > 1980;
SELECT product_category_description FROM Ref_Product_Categories WHERE product_category_code = "Spices"
SELECT s.Name, s.Type, s.Flag FROM Ship s WHERE s.Built_Year = (SELECT MAX(Built_Year) FROM Ship)
SELECT Building FROM Faculty
SELECT Team FROM player ORDER BY Age DESC LIMIT 1
SELECT Country, count(*) FROM people GROUP BY Country
SELECT t2.house_number, t1.name FROM restaurant AS t1 JOIN location AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t1.food_type = "french" AND t1.rating = ( SELECT MAX(t1.rating) FROM restaurant AS t1 JOIN location AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "san francisco" AND t1.food_type = "french" );
SELECT FirstName FROM list WHERE Classroom = 108
SELECT COUNT(*) FROM ALBUM
SELECT T2.Age FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID ORDER BY T1.Total_Points DESC
SELECT b.name FROM buildings AS b JOIN Office_locations AS o ON b.id = o.building_id GROUP BY b.name ORDER BY COUNT(o.company_id) DESC LIMIT 1
SELECT T3.compatible_since_year FROM Web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T1.id = T2.accelerator_id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T1.name = 'CACHEbox' AND T3.name = 'Internet Explorer'
SELECT COUNT(DISTINCT state_name) FROM city WHERE city_name = "springfield";
SELECT state_name FROM city WHERE city_name = "springfield";
SELECT T2.Pilot_name, T1.Fleet_Series FROM aircraft AS T1 JOIN pilot_record AS T3 ON T1.Aircraft_ID = T3.Aircraft_ID JOIN pilot AS T2 ON T3.Pilot_ID = T2.Pilot_ID ORDER BY T2.Rank ASC
SELECT COUNT(*) FROM paper p JOIN venue v ON p.venueId = v.venueId WHERE v.venueName = "ACL" AND p.year = 2015;
SELECT email, phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber";
SELECT city_name FROM city WHERE population = (SELECT MAX(population) FROM city);
SELECT capital FROM state WHERE state_name = "texas";
SELECT outcome_code, count(*) FROM Mailshot_Customers GROUP BY outcome_code
SELECT bedType, roomName FROM Rooms WHERE decor = "traditional"
SELECT Name FROM track WHERE Track_ID NOT IN (SELECT Track_ID FROM race)
SELECT state_name FROM state WHERE area = (SELECT MAX(area) FROM state);
SELECT count(*) FROM ACCOUNTS
SELECT nationality FROM actor WHERE name = "Christoph Waltz";
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1
SELECT LName FROM Student WHERE (Sex = 'female' OR (Sex = 'male' AND Age < 20)) OR city_code = 'BAL'
SELECT count(*) FROM postseason WHERE team_id_winner = 'Boston Red Stockings' OR team_id_loser = 'Boston Red Stockings'
SELECT T1.customer_id, T2.customer_first_name, T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM candidate)
SELECT phone_number, email_address FROM Customers WHERE amount_outstanding > 2000;
SELECT Location, Name FROM match JOIN aircraft ON match.Winning_Aircraft = aircraft.Aircraft_ID 
SELECT count(*) FROM Student WHERE Sex = 'F' AND Age < 25
SELECT building, room_number FROM classroom WHERE capacity BETWEEN 50 AND 100
SELECT state_name FROM highlow WHERE highest_point > (SELECT highest_point FROM highlow WHERE state_name = "colorado");
SELECT T1.name_first, T1.name_last, T2.player_id FROM player AS T1 JOIN manager_award AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID = T2.Location_ID WHERE T1.Address = "660 Shea Crescent" OR T2.How_to_Get_There = "walk"
SELECT product_name, typical_buying_price FROM Products 
SELECT T2.name, count(*) FROM flight AS T1 JOIN aircraft AS T2 ON T1.aid = T2.aid GROUP BY T2.name
SELECT Products.product_name, sum(Order_Items.order_quantity) FROM Products JOIN Order_Items ON Products.product_id = Order_Items.product_id GROUP BY Products.product_id
SELECT t3.title FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "dependent types"
SELECT city_name FROM city WHERE population = (SELECT MAX(population) FROM city WHERE state_name = "wyoming") AND state_name = "wyoming";
SELECT Time FROM Elimination WHERE Wrestler_ID = "Punk" OR Wrestler_ID = "Orton"
SELECT name FROM Person WHERE job = 'student' ORDER BY age DESC LIMIT 1
SELECT Role_Code, COUNT(*) FROM Employees GROUP BY Role_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT decor FROM Rooms WHERE roomName = "Recluse and defiance"
SELECT city_name FROM city WHERE population = (SELECT MAX(population) FROM city WHERE state_name = "wyoming") AND state_name = "wyoming";
SELECT count(*) FROM device
SELECT T1.customer_name, T1.customer_phone FROM Customers AS T1 LEFT JOIN Mailshot_Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.mailshot_id IS NULL
SELECT T1.title FROM course AS T1 JOIN section AS T2 ON T1.course_id = T2.course_id WHERE T2.building = 'Chandler' AND T2.semester = 'Fall' AND T2.year = 2010
SELECT DISTINCT song_name FROM song WHERE resolution > (SELECT resolution FROM song WHERE languages = 'English')
SELECT student_capacity, gender FROM Dorm WHERE dorm_name LIKE '%Donor%'
SELECT Founder FROM Manufacturers WHERE Name = 'Sony'
SELECT T1.customer_name, T2.active_from_date FROM Customers AS T1 JOIN Customer_Contact_Channels AS T2 ON T1.customer_id = T2.customer_id WHERE T2.channel_code = 'email'
SELECT Category FROM music_festival GROUP BY Category HAVING COUNT(*) > 1
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name, T1.category_id, COUNT(*) FROM category AS T1 JOIN film_category AS T2 ON T1.category_id = T2.category_id GROUP BY T1.category_id
SELECT avg(rating), languages FROM song GROUP BY languages
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.ID = T2.ID JOIN prereq AS T3 ON T2.course_id = T3.prereq_id JOIN course AS T4 ON T3.course_id = T4.course_id WHERE T4.title = "International Finance";
SELECT T1.product_name, T1.product_price FROM Products AS T1 JOIN Actual_Order_Products AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT sum(student_capacity) FROM Dorm
SELECT count(DISTINCT amenid) FROM Dorm_amenity
SELECT DISTINCT p.paperId FROM paper p JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId JOIN venue v ON p.venueId = v.venueId WHERE k.keyphraseName = "TAIL" AND v.venueName = "NIPS";
SELECT COUNT(DISTINCT p.paperId) FROM paper p JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId WHERE k.keyphraseName = "convolutional neural networks" AND p.year = 2016;
SELECT Project_ID, COUNT(*) FROM Documents GROUP BY Project_ID
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.country = "Spain" AND T1.year > 2017
SELECT T1.staff_name, T1.staff_id FROM Staff AS T1 JOIN Fault_Log AS T2 ON T1.staff_id = T2.recorded_by_staff_id LEFT JOIN Engineer_Visits AS T3 ON T2.fault_log_entry_id = T3.fault_log_entry_id WHERE T3.engineer_visit_id IS NULL
SELECT FirstName FROM teachers WHERE Classroom = 110
SELECT T1.sales_details, T2.date_of_transaction FROM Sales AS T1 JOIN Transactions AS T2 ON T1.sales_transaction_id = T2.transaction_id WHERE T2.amount_of_transaction < 3000
SELECT Name FROM captain ORDER BY age DESC
SELECT Winery FROM wine ORDER BY Score DESC LIMIT 1
SELECT avg(age), count(*) FROM Student GROUP BY city_code, sex WHERE sex = 'M'
SELECT Owner FROM channel ORDER BY Rating_in_percent/Share_in_percent DESC LIMIT 1
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country JOIN player AS T3 ON T2.Player = T3.Player WHERE T2.Position = "Defender"
SELECT Company, Rank FROM company ORDER BY Sales_billion DESC 
SELECT gender, count(*) FROM artist GROUP BY gender
SELECT t2.name FROM publication AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN writes AS t3 ON t3.pid = t4.pid JOIN author AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish";
SELECT State FROM representative GROUP BY State HAVING COUNT(*) >= 2
SELECT count(*) FROM Rooms
SELECT date_joined_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT count(DISTINCT Owner) FROM channel
SELECT COUNT(DISTINCT t2.title), t2.year FROM publication AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" GROUP BY t2.year;
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.mID ORDER BY count(*) DESC LIMIT 1
SELECT COUNT(*) FROM paper WHERE venueId IN (SELECT venueId FROM venue WHERE venueName = "ACL") AND year = 2015;
SELECT Phone, Room, Building FROM Faculty WHERE Lname = "Prince" AND Fname = "Jerry"
SELECT count(*) , city FROM airports WHERE country = 'United States' GROUP BY city ORDER BY count(*) DESC
SELECT f_id FROM files WHERE formats = "mp3"
SELECT instrument FROM Instruments AS T1 JOIN Songs AS T2 ON T1.SongId = T2.SongId WHERE T2.Title = "Le Pop"
SELECT * conference papers of subhasis chaudhuri FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId WHERE t1.authorName = "subhasis chaudhuri"; * list papers by subhasis chaudhuri FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId WHERE t1.authorName = "subhasis chaudhuri"; * When did ameet soni publish? SELECT COUNT(t3.paperId), t3.year FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId JOIN paper AS t3 ON t2.paperId = t3.paperId WHERE t1.authorName = "ameet soni" GROUP BY
SELECT count(*) FROM editor
SELECT count(*) FROM branch WHERE membership_amount > (SELECT avg(membership_amount) FROM branch)
SELECT Name, Cost FROM Procedures ORDER BY Cost DESC
SELECT Name FROM manager ORDER BY Level ASC
SELECT avg(Years_working) FROM journalist
SELECT School_name, Budgeted, Invested FROM School JOIN budget ON School.School_id = budget.School_id WHERE Year >= 2002
SELECT name, distance FROM aircraft
SELECT t1.name FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.rating > 3.5 AND t2.category_name = "restaurant";
SELECT city FROM Customers WHERE city NOT IN (SELECT city FROM Performers)
SELECT t2.title FROM paperkeyphrase AS t5 JOIN keyphrase AS t3 ON t5.keyphraseid = t3.keyphraseid JOIN writes AS t4 ON t4.paperid = t5.paperid JOIN paper AS t2 ON t4.paperid = t2.paperid JOIN author AS t1 ON t4.authorid = t1.authorid JOIN venue AS t6 ON t6.venueid = t2.venueid WHERE t1.authorname LIKE "Eric C. Kerrigan" AND t3.keyphrasename = "Liquid" AND t6.venuename = "Automatica";
SELECT t3.fname, t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.sex = "F"
SELECT Weight FROM entrepreneur JOIN people ON entrepreneur.People_ID = people.People_ID ORDER BY Money_Requested DESC
SELECT Campuses.Campus FROM Campuses JOIN faculty ON Campuses.Id = faculty.Campus WHERE faculty.Year = 2002 GROUP BY Campuses.Campus HAVING MAX(faculty.Faculty) > (SELECT MAX(faculty.Faculty) FROM Campuses JOIN faculty ON Campuses.Id = faculty.Campus WHERE Campuses.County = "Orange")
SELECT Denomination FROM school GROUP BY Denomination HAVING COUNT(*) > 1
SELECT max(Support_rate), min(Consider_rate), min(Oppose_rate) FROM candidate
SELECT count(*) FROM song WHERE duration = '4:00'
SELECT Total_Points FROM gymnast WHERE Gymnast_ID = (SELECT Gymnast_ID FROM people WHERE Age = (SELECT MIN(Age) FROM people))
SELECT count(*) FROM airports WHERE name LIKE "%International%"
SELECT first_name, last_name FROM employees ORDER BY hire_date ASC LIMIT 10
SELECT T1.Name, T3.Visit_Date FROM Tourist_Attractions AS T1 JOIN Visits AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID JOIN Visitors AS T2 ON T3.Tourist_ID = T2.Tourist_ID WHERE T2.Tourist_Details = "Vincent" OR T2.Tourist_Details = "Vivian"
SELECT T1.Name FROM Ship AS T1 JOIN captain AS T2 ON T1.Ship_ID = T2.Ship_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.dst_apid = T2.apid JOIN airlines AS T3 ON T1.alid = T3.alid WHERE T2.country = 'Italy' AND T3.name = 'American Airlines'
SELECT roomName FROM Rooms WHERE basePrice BETWEEN 120 AND 150
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1
SELECT account_id FROM Financial_Transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM people JOIN gymnast ON people.People_ID = gymnast.Gymnast_ID
SELECT Title, Year, Director FROM movie ORDER BY Budget_million 
SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1
SELECT t1.title FROM paper AS t1 JOIN venue AS t2 ON t1.venueId = t2.venueId WHERE t1.year = 2015 AND t2.venueName = "pldi";
SELECT T1.customer_first_name, T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id = T2.customer_id
SELECT count(DISTINCT student_id) FROM Students_in_Detention
SELECT T1.date_of_enrolment FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id = T2.registration_id WHERE T2.test_result = "Pass"
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id = T2.course_id WHERE T2.prereq_id = 'Differential Geometry'
SELECT COUNT(DISTINCT t1.name) FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.city = "Pittsburgh" AND t1.rating = 4.5 AND t2.category_name = "restaurant";
SELECT count(*) FROM club_rank WHERE Total < 10
SELECT T1.course_name, T1.course_description FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id = T2.subject_id WHERE T2.subject_name = "Computer Science"
SELECT T1.state FROM College AS T1 JOIN Tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'mid' EXCEPT SELECT T1.state FROM College AS T1 JOIN Tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'goalie'
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top > 2 INTERSECT SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top < 2
SELECT Workshop_Group_ID FROM Drama_Workshop_Groups WHERE Address_ID IN (SELECT Address_ID FROM Addresses WHERE City_Town = "Feliciaberg")
SELECT Name FROM actor WHERE age != 20
SELECT billing_state FROM invoices GROUP BY billing_state ORDER BY count(*) DESC LIMIT 1
SELECT t1.bname FROM bank AS t1 JOIN customer AS t2 ON t1.branch_ID = t2.branch_ID GROUP BY t1.branch_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(enr) FROM College WHERE state = 'FL'
SELECT Name FROM county_public_safety ORDER BY Population DESC
SELECT avg(Profits_billion) FROM Companies
SELECT count(DISTINCT Advisor) FROM Student
SELECT fname FROM Authors ORDER BY fname ASC
SELECT count(*) FROM artist WHERE country = 'Bangladesh'
SELECT Fname, LName FROM Student WHERE Age > 18 AND Major = 600
SELECT T1.zip_code, T2.id FROM weather AS T1 JOIN trip AS T2 ON T1.zip_code = T2.zip_code GROUP BY T1.zip_code, T2.id HAVING AVG(T1.mean_temperature_f) > 60
SELECT station.lat, MIN(trip.duration) FROM station JOIN trip ON station.id = trip.end_station_id GROUP BY station.id, station.lat
SELECT T1.Name FROM Physician AS T1 JOIN Patient AS T2 ON T1.EmployeeID = T2.PCP GROUP BY T1.EmployeeID HAVING COUNT(*) > 1
SELECT T1.Fname FROM Student AS T1 JOIN Lives_in AS T2 ON T1.StuID = T2.stuid JOIN Dorm AS T3 ON T2.dormid = T3.dormid WHERE T3.dorm_name = "Smith Hall"
SELECT T1.Fname, T1.Major FROM Student AS T1 LEFT JOIN Has_Allergy AS T2 ON T1.StuID = T2.StuID WHERE T2.Allergy IS NULL OR T2.Allergy != 'soy'
SELECT T2.Date_of_Birth FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Investor = "Simon Woodroffe" OR T1.Investor = "Peter Jones"
SELECT COUNT(*) FROM Artist WHERE ArtistId NOT IN (SELECT ArtistId FROM Album)
SELECT T1.title, T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id GROUP BY T1.i_id ORDER BY AVG(T2.rank) DESC LIMIT 1
SELECT COUNT(DISTINCT t2.title) FROM CAST AS t3 JOIN actor AS t1 ON t3.aid = t1.aid JOIN movie AS t2 ON t2.mid = t3.msid WHERE t1.name = "Shahab Hosseini";
SELECT count(*) FROM CLASS AS T1 JOIN professor AS T2 ON T1.PROF_NUM = T2.EMP_NUM JOIN employee AS T3 ON T2.EMP_NUM = T3.EMP_NUM WHERE T3.EMP_LNAME = 'Graztevski'
SELECT song_name FROM song WHERE rating < (SELECT min(rating) FROM song WHERE genre_is = 'blues')
SELECT T1.location FROM cinema AS T1 WHERE T1.openning_year >= 2010 GROUP BY T1.location ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT name FROM instructor ORDER BY name 
SELECT T1.id, T1.name, T1.FDA_approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC
SELECT traverse FROM river WHERE river_name = "ohio";
SELECT t3.title FROM paper AS t3 JOIN paperkeyphrase AS t1 ON t1.paperid = t3.paperid JOIN keyphrase AS t2 ON t2.keyphraseid = t1.keyphraseid JOIN author AS t4 ON t4.authorid = t3.authorid JOIN venue AS t5 ON t5.venueid = t3.venueid WHERE t2.keyphrasename = "semantic parsing" AND t4.authorname = "li dong" AND t5.venuename = "acl" AND t3.year = 2016;
SELECT product_name, product_category_code FROM Products ORDER BY product_price DESC LIMIT 1
SELECT t1.customer_name FROM Customers AS t1 JOIN Customer_Orders AS t2 ON t1.customer_id = t2.customer_id WHERE t1.payment_method_code = "Credit Card" GROUP BY t1.customer_id HAVING COUNT(t2.order_id) > 2
SELECT DISTINCT COUNT(t4.citedPaperId) FROM paper AS t3 JOIN cite AS t4 ON t3.paperId = t4.citedPaperId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "noah a smith";
SELECT count(*) FROM Products AS t1 JOIN Product_Characteristics AS t2 ON t1.product_id = t2.product_id JOIN Characteristics AS t3 ON t2.characteristic_id = t3.characteristic_id JOIN Ref_Colors AS t4 ON t1.color_code = t4.color_code WHERE t4.color_description = 'red' AND t3.characteristic_name = 'slow'
SELECT name FROM club ORDER BY name DESC
SELECT LENGTH FROM river WHERE LENGTH = (SELECT MAX(LENGTH) FROM river WHERE traverse = "texas");
SELECT count(*) FROM Problems WHERE product_id = (SELECT product_id FROM Product WHERE product_name = "voluptatem")
SELECT state_name FROM state;
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_ID = T2.cust_ID WHERE T2.amount > 3000
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city = "Palo Alto")
SELECT Name, Street_address, Floors FROM building ORDER BY Floors 
SELECT Orders.order_id, SUM(Order_Items.product_quantity) FROM Orders JOIN Order_Items ON Orders.order_id = Order_Items.order_id GROUP BY Orders.order_id
SELECT Name FROM Tourist_Attractions WHERE Tourist_Attraction_ID IN (SELECT Tourist_Attraction_ID FROM Tourist_Attraction_Features WHERE Feature_ID IN (SELECT Feature_ID FROM Features WHERE Feature_Details = 'Parking' OR Feature_Details = 'Shopping'))
SELECT Height, Weight FROM people ORDER BY Height DESC
SELECT GName FROM Video_Games AS VG JOIN Plays_Games AS PG ON VG.GameID = PG.GameID GROUP BY GName ORDER BY SUM(Hours_Played) DESC LIMIT 1
SELECT FacID, COUNT(*) FROM Student GROUP BY FacID
SELECT Name FROM branch JOIN membership_register_branch ON branch.Branch_ID = membership_register_branch.Branch_ID GROUP BY branch.Branch_ID ORDER BY COUNT(*) DESC LIMIT 3
SELECT GName FROM Video_Games WHERE GType = "Collectible card game"
SELECT roomName FROM Rooms ORDER BY basePrice ASC
SELECT max(customer_code) , min(customer_code) FROM Customers
SELECT product FROM product WHERE max_page_size = "A4" OR pages_per_minute_color < 5
SELECT T1.name FROM student AS T1 JOIN department AS T2 ON T1.dept_name = T2.dept_name WHERE T2.dept_name = 'History' ORDER BY T1.tot_cred DESC LIMIT 1
SELECT city_name FROM city WHERE population = (SELECT MAX(population) FROM city WHERE state_name = "wyoming") AND state_name = "wyoming";
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID = T2.stuid GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1
SELECT interaction_type, count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.creation FROM department AS T1 JOIN management AS T2 ON T1.department_id = T2.department_id JOIN head AS T3 ON T2.head_id = T3.head_id WHERE T3.born_state = 'Alabama'
SELECT T1.name, COUNT(*) AS num_tweets FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid = T2.uid GROUP BY T1.uid HAVING COUNT(*) > 1
SELECT Name FROM Nurse AS T1 JOIN Appointment AS T2 ON T1.EmployeeID = T2.PrepNurse OR T1.EmployeeID = T2.Physician GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM pilot WHERE Age >= 25
SELECT Name FROM city ORDER BY Name ASC
SELECT t1.city FROM category AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "MGM Grand Buffet" AND t1.state = "Texas" AND t2.category_name = "restaurant";
SELECT Grade FROM list WHERE Classroom = 103
SELECT count(*) , Accreditation_type FROM phone GROUP BY Accreditation_type
SELECT COUNT(DISTINCT t3.title) FROM director AS t2 JOIN directed_by AS t1 ON t2.did = t1.did JOIN movie AS t3 ON t3.mid = t1.msid WHERE t2.name = "Quentin Tarantino" AND (t3.release_year < 2002 OR t3.release_year > 2010);
SELECT T1.first_name, T1.last_name, T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1
SELECT T2.Fname, T2.Lname FROM Member_of AS T1 JOIN Faculty AS T2 ON T1.FacID = T2.FacID WHERE T1.DNO = 520
SELECT SUM(population) FROM state WHERE state_name IN (SELECT border FROM border_info WHERE state_name = "texas");
SELECT avg(Height), avg(Weight) FROM people WHERE Sex = 'M'
SELECT birth_city FROM actor WHERE name = "Kevin Spacey";
SELECT Name FROM people WHERE Height > 200 OR Height < 190
SELECT Open_year FROM branch GROUP BY Open_year HAVING COUNT(*) >= 2
SELECT Name FROM Scientists WHERE SSN IN (SELECT Scientist FROM AssignedTo)
SELECT `catalog_entry_name` FROM `Catalog_Contents` WHERE `length` < 3 OR `length` > 5
SELECT T2.Name FROM wine AS T2 JOIN grapes AS T1 ON T1.Grape = T2.Grape WHERE T1.Color = "Red" AND T2.Price > 50
SELECT T2.Region_name, count(*) FROM storm AS T1 JOIN affected_region AS T2 ON T1.Storm_ID = T2.Storm_ID JOIN region AS T3 ON T2.Region_id = T3.Region_id GROUP BY T2.Region_name
SELECT * FROM employees WHERE HIRE_DATE < "2002-06-21"
SELECT T1.Customer_name FROM Customers AS T1 JOIN Customers_Policies AS T2 ON T1.Customer_ID = T2.Customer_ID GROUP BY T1.Customer_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Product_Name FROM Products GROUP BY Product_Name HAVING AVG(Product_Price) < 1000000
SELECT area FROM state WHERE state_name = "new mexico";
SELECT employees.first_name, departments.department_name FROM employees JOIN departments ON employees.department_id = departments.department_id
SELECT count(*) FROM chip_model WHERE WiFi = 'No'
SELECT count(*) FROM Ref_Colors
SELECT COUNT(DISTINCT t2.paperId) FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "Christopher D. Manning";
SELECT area FROM state WHERE state_name = "new mexico";
SELECT course_id FROM section WHERE semester = 'Fall' AND year = 2009 OR semester = 'Spring' AND year = 2010
SELECT GDP FROM city ORDER BY Regional_Population DESC LIMIT 1
SELECT city_name FROM city WHERE population = (SELECT MAX(population) FROM city WHERE state_name IN (SELECT state_name FROM state WHERE area = (SELECT MIN(area) FROM state))) AND state_name IN (SELECT state_name FROM state WHERE area = (SELECT MIN(area) FROM state));
SELECT Fname FROM Student ORDER BY Age DESC
SELECT t1.title, t1.film_id FROM film AS t1 JOIN inventory AS t2 ON t1.film_id = t2.film_id GROUP BY t1.film_id ORDER BY count(*) DESC LIMIT 1
SELECT LName FROM Student WHERE Sex = 'F' ORDER BY Age DESC
SELECT DISTINCT paperId FROM paper WHERE year != (SELECT MAX(year) FROM paper); 
SELECT Birth_Place FROM people GROUP BY Birth_Place ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t2.venueName FROM paperkeyphrase AS t1 JOIN keyphrase AS t2 ON t1.keyphraseId = t2.keyphraseId JOIN venue AS t3 ON t1.paperId = t3.venueId WHERE t2.keyphraseName = "Trophic Cascade";
SELECT T1.staff_first_name, T1.staff_last_name FROM Staff AS T1 JOIN Problem_Log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T2.problem_id = 1
SELECT Book_Title, Author_or_Editor FROM book_club WHERE Year > 1989
SELECT river_name FROM river WHERE traverse = "illinois";
SELECT location_name, location_description FROM Ref_Locations WHERE location_code = 'x'
SELECT product_name, product_description FROM Products_for_Hire WHERE product_type_code = 'Cutlery' AND daily_hire_cost < 20
SELECT AllergyType, COUNT(*) FROM Allergy_Type JOIN Has_Allergy ON Allergy_Type.Allergy = Has_Allergy.Allergy GROUP BY AllergyType
SELECT FirstName, LastName FROM Customer WHERE Email = "luisg@embraer.com.br"
SELECT AppointmentID FROM Appointment ORDER BY Start DESC LIMIT 1
SELECT T1.Position, COUNT(*) FROM match_season AS T1 GROUP BY T1.Position
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.year > 40 AND T2.year < 30
SELECT Name FROM pilot ORDER BY Age DESC
SELECT Name, COUNT(Train_ID) FROM train_station JOIN station ON train_station.Station_ID = station.Station_ID GROUP BY station.Name
SELECT customer_status_code, COUNT(*) FROM Customers GROUP BY customer_status_code
SELECT mountain_name FROM mountain WHERE country_name = 'USA' AND mountain_altitude = (SELECT MAX(mountain_altitude) FROM mountain WHERE country_name = 'USA');
SELECT Participant_ID, Participant_Type_Code, Participant_Details FROM Participants 
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Plays_Games
SELECT b.bname FROM bank AS b JOIN loan AS l ON b.branch_ID = l.branch_ID JOIN customer AS c ON l.cust_ID = c.cust_ID WHERE c.credit_score < 100
SELECT COUNT(t4.citingPaperId) FROM paper AS t3 JOIN cite AS t4 ON t3.paperId = t4.citingPaperId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "noah a smith";
SELECT player.name_first, player.name_last FROM player WHERE player.weight > 220 OR player.height < 75
SELECT population FROM state WHERE area = (SELECT MAX(area) FROM state);
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME FROM EMPLOYEES WHERE SALARY > (SELECT SALARY FROM EMPLOYEES WHERE EMPLOYEE_ID = 163)
SELECT city_code FROM Student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1
SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1
SELECT COUNT(DISTINCT paperId) FROM writes WHERE authorId = (SELECT authorId FROM author WHERE authorName = "Christopher D. Manning");
SELECT P.product_name FROM Products AS P JOIN Ref_Colors AS C ON P.color_code = C.color_code JOIN Product_Characteristics AS PC ON P.product_id = PC.product_id JOIN Characteristics AS CH ON PC.characteristic_id = CH.characteristic_id WHERE C.color_description = 'red' AND CH.characteristic_name = 'fast'
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber)
SELECT t3.title FROM writer AS t2 JOIN written_by AS t1 ON t2.wid = t1.wid JOIN movie AS t3 ON t3.mid = t1.msid JOIN producer AS t4 ON t4.pid = t3.pid WHERE t2.name = "Woody Allen" AND t4.name = "Woody Allen";
SELECT state_name FROM state WHERE area = (SELECT MAX(area) FROM state WHERE state_name IN (SELECT traverse FROM river WHERE river_name = "rio grande")) AND state_name IN (SELECT traverse FROM river WHERE river_name = "rio grande");
SELECT count(*) FROM book_club
SELECT T1.StuID FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID = T2.stuid JOIN Activity AS T3 ON T2.actid = T3.actid WHERE T1.Age < 20
SELECT avg(Horizontal_Bar_Points) FROM gymnast
SELECT T2.emp_fname, T4.prof_office, T3.crs_description, T5.dept_name FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN professor AS T4 ON T2.emp_num = T4.emp_num JOIN department AS T5 ON T4.dept_code = T5.dept_code
SELECT Campus FROM faculty WHERE Year = 2004 AND Faculty BETWEEN 600 AND 1000
SELECT t1.text FROM review AS t1 JOIN user AS t2 ON t1.user_id = t2.user_id WHERE t2.name = "Patrick" AND t1.rating > 4
SELECT Lname FROM Faculty WHERE FacID IN (SELECT FacID FROM Member_of WHERE DNO IN (SELECT DNO FROM Department WHERE DName = 'Computer Science'))
SELECT Publisher, count(*) FROM book_club GROUP BY Publisher
SELECT T1.Reign FROM wrestler AS T1 LEFT JOIN elimination AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID WHERE T1.Location != 'Tokyo' OR T1.Location != 'Japan'
SELECT COUNT(city_name) FROM city WHERE state_name = "texas" AND population > 500000;
SELECT count(*) FROM Club AS t1 JOIN Member_of_club AS t2 ON t1.ClubID = t2.ClubID JOIN Student AS t3 ON t2.StuID = t3.StuID WHERE t3.LName = "Smith" AND t3.Fname = "Linda"
SELECT count(*) FROM classroom WHERE building != 'Lamberton'
SELECT density FROM state WHERE capital = "austin";
SELECT product_name FROM Products ORDER BY product_price DESC LIMIT 1
SELECT Name FROM Genre 
SELECT Location FROM wrestler GROUP BY Location HAVING COUNT(*) > 2
SELECT avg(Height), avg(Weight) FROM people WHERE Sex = "M"
SELECT count(DISTINCT dst_apid) FROM routes WHERE airline = 'AA'
SELECT count(DISTINCT t1.College) FROM player AS t1 JOIN team AS t2 ON t1.Team = t2.Team_id WHERE t2.Name = "Columbus Crew"
SELECT Name FROM artwork ORDER BY Name ASC
SELECT Poll_Source FROM candidate GROUP BY Poll_Source ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM storm AS T1 JOIN affected_region AS T2 ON T1.Storm_ID = T2.Storm_ID GROUP BY T1.Storm_ID HAVING COUNT(DISTINCT T2.Region_id) >= 2 AND SUM(T2.Number_city_affected) >= 10
SELECT density FROM state WHERE state_name = "wyoming";
SELECT t1.name FROM author AS t1 JOIN writes AS t2 ON t1.aid = t2.aid JOIN publication AS t3 ON t2.pid = t3.pid JOIN journal AS t4 ON t3.jid = t4.jid WHERE t4.name = "PVLDB" AND t3.year = 2010;
SELECT first_name, last_name, hire_date, salary, department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id ASC
SELECT T1.Party_Theme, T2.Name FROM party AS T1 JOIN party_host AS T3 ON T1.Party_ID = T3.Party_ID JOIN host AS T2 ON T3.Host_ID = T2.Host_ID
SELECT Customer_name FROM Customers ORDER BY Customer_ID ASC
SELECT T2.Name FROM Album AS T1 JOIN Artist AS T2 ON T1.ArtistId = T2.ArtistId WHERE T1.Title = "Balls to the Wall";
SELECT T2.course_id, COUNT(T1.student_id), T3.course_name FROM Students AS T1 JOIN Student_Course_Registrations AS T2 ON T1.student_id = T2.student_id JOIN Courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id, T3.course_name
SELECT DISTINCT t3.year FROM writes AS t2 JOIN author AS t1 ON t2.authorid = t1.authorid JOIN paper AS t3 ON t2.paperid = t3.paperid WHERE t1.authorname = "Pedro Domingos" GROUP BY t3.year;
SELECT Name FROM people ORDER BY Age DESC LIMIT 5
SELECT T2.Name, T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID
SELECT Fname, Lname FROM Student WHERE Major != (SELECT Major FROM Student GROUP BY Major ORDER BY COUNT(*) DESC LIMIT 1)
SELECT conference.name FROM conference JOIN publication ON conference.cid = publication.cid WHERE publication.title = "Making database systems usable";
SELECT T1.Name, T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID
SELECT CONCAT(first_name, ' ', last_name) AS full_name, actor_id FROM actor WHERE actor_id = ( SELECT actor_id FROM film_actor GROUP BY actor_id ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT t1.phone_number FROM Customers AS t1 JOIN Complaints AS t2 ON t1.customer_id = t2.customer_id ORDER BY t2.date_complaint_raised DESC LIMIT 1
SELECT T2.Region_name FROM region AS T2 JOIN affected_region AS T1 ON T2.Region_id = T1.Region_id GROUP BY T2.Region_name HAVING COUNT(T1.Storm_ID) >= 2
SELECT DISTINCT t2.citingPaperId FROM paper AS t1 JOIN cite AS t2 ON t1.paperId = t2.citedPaperId GROUP BY t2.citingPaperId HAVING COUNT(DISTINCT t2.citedPaperId) > 10;
SELECT "Directed_by" FROM film
SELECT Festival_Name FROM festival_detail ORDER BY Year DESC LIMIT 3
SELECT Software_Platform, COUNT(*) AS Frequency FROM device GROUP BY Software_Platform ORDER BY Frequency DESC
SELECT customer_name FROM Customers WHERE payment_method = "Cash"
SELECT count(*) FROM actor
SELECT DISTINCT LName FROM Student WHERE StuID IN (SELECT President_Vote FROM Voting_record WHERE Advisor = 8741)
SELECT DISTINCT name FROM races WHERE year BETWEEN 2014 AND 2017
SELECT * FROM election 
SELECT Residence FROM player WHERE Gender = "M" INTERSECT SELECT Residence FROM player WHERE Gender = "F"
SELECT T1.Author, T2.Result FROM submission AS T1 JOIN Acceptance AS T2 ON T1.Submission_ID = T2.Submission_ID
SELECT T3.name FROM procedures AS T3 WHERE T3.cost > 1000 AND T3.code NOT IN ( SELECT T2.treatment FROM trained_in AS T2 JOIN physician AS T1 ON T1.employeeid = T2.physician WHERE T1.name = "John Wen" )
SELECT river_name FROM river GROUP BY river_name ORDER BY COUNT(DISTINCT traverse) DESC LIMIT 1
SELECT t3.title FROM paper AS t3 JOIN venue AS t4 ON t3.venueId = t4.venueId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "ali farhadi" AND t3.year = 2016 AND t4.venueName = "eccv";
SELECT count(*) FROM College WHERE enr > 15000
SELECT Name FROM wine ORDER BY Name ASC
SELECT FirstName FROM list WHERE Classroom = 108
SELECT Employee_ID FROM Documents_to_be_Destroyed WHERE Destruction_Authorised_by_Employee_ID IS NOT NULL
SELECT t4.title FROM publication_keyword AS t2 JOIN keyword AS t1 ON t2.kid = t1.kid JOIN publication AS t4 ON t4.pid = t2.pid JOIN journal AS t3 ON t4.jid = t3.jid WHERE t3.name = "PVLDB" AND t1.keyword = "Keyword search";
SELECT count(DISTINCT DEPT_ADDRESS), SCHOOL_CODE FROM DEPARTMENT GROUP BY SCHOOL_CODE
SELECT COUNT(*) FROM Papers
SELECT account_id FROM Financial_Transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_phone, customer_email FROM Customers WHERE customer_first_name = "Aniyah" AND customer_last_name = "Feest"
SELECT DISTINCT p.title FROM paper AS p JOIN writes AS w ON p.paperId = w.paperId JOIN author AS a ON w.authorId = a.authorId WHERE a.authorName = "Peter Mertens" OR a.authorName = "Dina Barbian";
SELECT COUNT(*) FROM employees WHERE country = "Canada";
SELECT name, salary FROM instructor WHERE salary < (SELECT AVG(salary) FROM instructor WHERE dept_name = 'Physics')
SELECT count(*) FROM Ref_Document_Types
SELECT T1.customer_name, T1.customer_details FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road"
SELECT population FROM city WHERE city_name = (SELECT capital FROM state WHERE area = (SELECT MAX(area) FROM state))
SELECT DISTINCT t1.keyphraseid FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t5 ON t4.authorid = t5.authorid WHERE t5.authorname = "dan klein" AND t3.venueId IN (SELECT venueId FROM venue WHERE venueName = "emnlp");
SELECT COUNT(DISTINCT Event_ID) FROM Participants_in_Events WHERE Participant_ID IN (SELECT Participant_ID FROM Participants WHERE Participant_Details LIKE "%Dr.%")
SELECT payment_method_code , count(*) FROM Customer_Payments GROUP BY payment_method_code
SELECT County_name FROM county ORDER BY Population ASC
SELECT gender_code, COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC
SELECT t2.name FROM publication_keyword AS t5 JOIN keyword AS t1 ON t5.kid = t1.kid JOIN publication AS t3 ON t3.pid = t5.pid JOIN writes AS t4 ON t4.pid = t3.pid JOIN author AS t2 ON t4.aid = t2.aid WHERE t1.keyword = "Relational Database" GROUP BY t2.name HAVING COUNT(DISTINCT t3.title) > 10;
SELECT avg(Money_Requested) FROM entrepreneur
SELECT COUNT(t3.paperId), t1.keyphraseId FROM paperKeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseId = t1.keyphraseId JOIN paper AS t3 ON t3.paperId = t2.paperId JOIN venue AS t4 ON t4.venueId = t3.venueId WHERE t3.year = 2015 AND t4.venueName = "NIPS" GROUP BY t1.keyphraseId ORDER BY COUNT(t3.paperId) DESC;
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"
SELECT avg(price) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn"
SELECT bname FROM bank WHERE branch_ID = (SELECT branch_ID FROM loan GROUP BY branch_ID ORDER BY SUM(amount) DESC LIMIT 1)
SELECT Name FROM program WHERE Origin != "Beijing"
SELECT Location FROM festival_detail ORDER BY Num_of_Audience DESC LIMIT 1
SELECT T2.problem_id, T2.problem_log_id FROM Staff AS T1 JOIN Problem_Log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T1.staff_first_name = "Rylan" AND T1.staff_last_name = "Homenick"
SELECT DISTINCT driverId FROM pitStops WHERE duration > (SELECT duration FROM pitStops WHERE raceId = 841)
SELECT T1.Name FROM Patient AS T1 JOIN Undergoes AS T2 ON T1.SSN = T2.Patient ORDER BY T2.DateUndergoes DESC LIMIT 1
SELECT DISTINCT t3.paperid FROM author AS t1 JOIN writes AS t2 ON t1.authorid = t2.authorid JOIN cite AS t3 ON t2.paperid = t3.citingpaperid WHERE t1.authorname = "Daniel Jurafsky";
SELECT t1.fname, t1.lname FROM Authors AS t1 JOIN Authorship AS t2 ON t1.authID = t2.authID JOIN Inst AS t3 ON t2.instID = t3.instID WHERE t3.name = "Google"
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn"
SELECT T2.school_code FROM DEPARTMENT AS T1 JOIN SCHOOL AS T2 ON T1.school_code = T2.school_code WHERE T1.dept_name = "Accounting"
SELECT t1.customer_name FROM Customers AS t1 JOIN Customer_Orders AS t2 ON t1.customer_id = t2.customer_id WHERE t1.payment_method = (SELECT payment_method FROM Customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)
SELECT customer_id FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)
SELECT T1.Company, COUNT(*) FROM company AS T1 JOIN station_company AS T2 ON T1.Company_ID = T2.Company_ID GROUP BY T1.Company
SELECT Competition, COUNT(*) FROM match GROUP BY Competition
SELECT Category FROM music_festival WHERE Result = "Awarded"
SELECT T2.Title, MAX(T1.Price) FROM schedule AS T1 JOIN film AS T2 ON T1.Film_ID = T2.Film_ID GROUP BY T2.Title
SELECT DISTINCT Fname FROM Student AS T1 JOIN Voting_record AS T2 ON T1.StuID = T2.Vice_President_Vote WHERE T1.city_code != "PIT"
SELECT Room, COUNT(*) FROM Reservations GROUP BY Room ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Headquartered_City FROM store_district AS T1 JOIN district AS T2 ON T1.District_ID = T2.District_ID GROUP BY T2.Headquartered_City ORDER BY count(*) DESC LIMIT 1;
SELECT COUNT(*) FROM faculty AS T1 JOIN degrees AS T2 ON T1.Campus = T2.Campus AND T1.Year = T2.Year WHERE T2.Year = 2001 AND T2.Degrees = (SELECT MIN(Degrees) FROM degrees WHERE Year = 2001)
SELECT T1.Location, T2.Name FROM party AS T1 JOIN party_host AS T3 ON T1.Party_ID = T3.Party_ID JOIN host AS T2 ON T3.Host_ID = T2.Host_ID ORDER BY T2.Age ASC
SELECT COUNT(DISTINCT t2.title) FROM publication_keyword AS t4 JOIN keyword AS t1 ON t4.kid = t1.kid JOIN publication AS t2 ON t2.pid = t4.pid JOIN conference AS t3 ON t2.cid = t3.cid WHERE t3.name = "VLDB" AND t1.keyword = "Information Retrieval";
SELECT T2.brand FROM camera_lens AS T2 JOIN photos AS T3 ON T2.id = T3.camera_lens_id JOIN mountain AS T4 ON T3.mountain_id = T4.id WHERE T4.Range = 'Toubkal Atlas' INTERSECT SELECT T2.brand FROM camera_lens AS T2 JOIN photos AS T3 ON T2.id = T3.camera_lens_id JOIN mountain AS T4 ON T3.mountain_id = T4.id WHERE T4.Range = 'Lasta Massif'
SELECT state_name FROM mountain WHERE mountain_altitude = (SELECT MAX(mountain_altitude) FROM mountain);
SELECT year, avg(attendance) FROM home_game GROUP BY year
SELECT T1.Title, T2.Type FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID = T2.Film_ID
SELECT friend FROM PersonFriend AS t1 JOIN PersonFriend AS t2 ON t1.friend = t2.name WHERE t1.name = 'Alice'
SELECT Allergy, AllergyType FROM Allergy_Type
SELECT count(*) FROM review AS t1 JOIN neighbourhood AS t2 ON t1.business_id = t2.business_id WHERE t2.neighbourhood_name = "South Summerlin"
SELECT count(*) , Claim_ID FROM Settlements GROUP BY Claim_ID
SELECT state FROM park GROUP BY state HAVING count(*) > 2
SELECT preferred_foot, avg(overall_rating) FROM Player_Attributes GROUP BY preferred_foot
SELECT count(*) FROM csu_fees WHERE CampusFee > (SELECT avg(CampusFee) FROM csu_fees)
SELECT product_id FROM Order_Items GROUP BY product_id HAVING COUNT(*) > 3 OR SUM(total_amount_purchased) > 80000
SELECT * FROM employees WHERE FIRST_NAME LIKE '%D%' OR FIRST_NAME LIKE '%S%' ORDER BY SALARY DESC
SELECT avg(product_price) FROM Products WHERE product_type_code = "clothes"
SELECT name, job FROM Person ORDER BY name
SELECT headquarters FROM company WHERE headquarters NOT IN (SELECT headquarters FROM company WHERE main_industry = 'Banking')
SELECT Official_Name, Status FROM city ORDER BY Population DESC LIMIT 1
SELECT T2.Character FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID ORDER BY T1.age DESC
SELECT catalog_entry_name FROM Catalog_Contents ORDER BY capacity ASC LIMIT 1;
SELECT billing_country, AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;
SELECT catalog_entry_name FROM Catalog_Contents ORDER BY price_in_dollars DESC LIMIT 1
SELECT count(*) FROM Student AS T1 JOIN Has_Allergy AS T2 ON T1.StuID = T2.StuID JOIN Allergy_Type AS T3 ON T2.Allergy = T3.Allergy WHERE T1.Sex = 'M' AND T3.AllergyType = 'Food'
SELECT document_name FROM Documents WHERE document_name LIKE "%CV%"
SELECT DISTINCT Name FROM wine WHERE Score > 90
SELECT customer_phone FROM Customers UNION SELECT supplier_phone FROM Suppliers
SELECT t3.title FROM Authors AS t1 JOIN Authorship AS t2 ON t1.authID = t2.authID JOIN Papers AS t3 ON t2.paperID = t3.paperID WHERE t1.fname = "Jeremy" AND t1.lname = "Gibbons"
SELECT T1.name, T1.Capacity FROM stadium AS T1 JOIN event AS T2 ON T1.ID = T2.Stadium_ID WHERE T2.Name = "World Junior"
SELECT Activity.activity_name, count(DISTINCT Faculty_Participates_in.FacID) FROM Activity JOIN Faculty_Participates_in ON Activity.actid = Faculty_Participates_in.actid GROUP BY Activity.activity_name
SELECT "Song" FROM volume WHERE Weeks_on_Top > 1
SELECT product FROM product WHERE max_page_size != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Aircraft FROM aircraft AS T1 JOIN match AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft HAVING COUNT(*) >= 2
SELECT count(*) , month FROM tip GROUP BY month
SELECT count(*) FROM country
SELECT max(training_hours), avg(training_hours), min(training_hours) FROM Player
SELECT Region_name FROM region ORDER BY Region_name ASC
SELECT T1.first_name, T2.job_id FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Finance"
SELECT T1.booking_start_date, T1.booking_end_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.bedroom_count > 2
SELECT SUM(Points) FROM player 
SELECT count(*) FROM Student
SELECT title FROM publication WHERE citation_num > 200;
SELECT COUNT(*) FROM station WHERE city = "Mountain View"
SELECT Role_Code FROM Employees GROUP BY Role_Code ORDER BY COUNT(*) ASC LIMIT 1
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid = t1.aid JOIN tv_series AS t2 ON t2.sid = t3.msid WHERE t1.name = "Scott Foley";
SELECT avg(T2.STU_GPA) FROM ENROLL AS T1 JOIN STUDENT AS T2 ON T1.STU_NUM = T2.STU_NUM JOIN CLASS AS T3 ON T1.CLASS_CODE = T3.CLASS_CODE WHERE T3.CRS_CODE = 'ACCT-211'
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.dst_apid = T2.apid WHERE T2.country = 'Canada'
SELECT Name, Country FROM member
SELECT avg(Age) FROM gymnast JOIN people ON gymnast.Gymnast_ID = people.People_ID
SELECT employees.employee_id, jobs.job_title FROM employees JOIN jobs ON employees.job_id = jobs.job_id WHERE employees.department_id = 80;
SELECT avg(height) FROM player AS T1 JOIN player_college AS T2 ON T1.player_id = T2.player_id JOIN college AS T3 ON T2.college_id = T3.college_id WHERE T3.name_full = 'Yale University'
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)
SELECT T1.id, T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id = T2.stadium_id JOIN injury_accident AS T3 ON T2.id = T3.game_id GROUP BY T1.id, T1.name ORDER BY COUNT(*) DESC LIMIT 1
SELECT apt_type_code, COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC
SELECT Name FROM Products
SELECT T2.Member_Name, T3.Party_name FROM member AS T2 JOIN party AS T3 ON T2.Party_ID = T3.Party_ID
SELECT T.thing_id, T.Type_of_Thing_Code, O.organization_details FROM Things AS T JOIN Organizations AS O ON T.organization_id = O.organization_id
SELECT count(*) FROM Stay WHERE Room = 112
SELECT count(*) FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T1.state_province_county = "Georgia";
SELECT DISTINCT paperId FROM paper WHERE year = 2014;
SELECT t1.product_name, t1.typical_buying_price, t1.typical_selling_price FROM Products AS t1 JOIN Ref_Colors AS t2 ON t1.color_code = t2.color_code WHERE t2.color_description = 'yellow'
SELECT T1.date_of_enrolment, T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.personal_name = "Karson"
SELECT Character FROM actor ORDER BY age DESC
SELECT count(*) FROM Employees
SELECT count(DISTINCT Country) FROM climber
SELECT first_name FROM People ORDER BY first_name ASC
SELECT DISTINCT COUNT(t4.citedPaperId) FROM paper AS t3 JOIN cite AS t4 ON t3.paperId = t4.citedPaperId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "Dan Makumbi" AND t3.title = "Genetic Identity";
SELECT state_name FROM mountain WHERE mountain_name = "whitney";
SELECT last_name FROM Staff WHERE email_address LIKE "%wrau%"
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Allergy)
SELECT COUNT(DISTINCT t4.title) FROM organization AS t2 JOIN author AS t1 ON t2.oid = t1.oid JOIN writes AS t3 ON t3.aid = t1.aid JOIN publication AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan";
SELECT S.Submission_ID, A.Result FROM submission AS S JOIN Acceptance AS A ON S.Submission_ID = A.Submission_ID ORDER BY S.Scores DESC LIMIT 1
SELECT Customer_Phone FROM Available_Policies WHERE policy_type_code = (SELECT policy_type_code FROM Available_Policies GROUP BY policy_type_code ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T2.Name, T1.Title, T3.Date, T3.Price FROM film AS T1 JOIN schedule AS T3 ON T1.Film_ID = T3.Film_ID JOIN cinema AS T2 ON T3.Cinema_ID = T2.Cinema_ID
SELECT t1.title FROM publication AS t1 JOIN publication_keyword AS t2 ON t1.pid = t2.pid JOIN keyword AS t3 ON t2.kid = t3.kid JOIN conference AS t4 ON t1.cid = t4.cid WHERE t4.name = "VLDB" AND t3.keyword = "Information Retrieval";
SELECT DName FROM Department WHERE DNO NOT IN (SELECT DNO FROM Minor_in)
SELECT MAX(Milliseconds) AS LongestTrack, MIN(Milliseconds) AS ShortestTrack FROM Track
SELECT title FROM movie JOIN genre ON movie.mid = genre.mid WHERE genre.genre = "Sci-Fi" AND movie.release_year = 2010
SELECT name FROM swimmer ORDER BY meter_100 ASC
SELECT count(*) FROM Customers_Cards WHERE card_type_code = 'debit'
SELECT T1.pName, T1.HS FROM Player AS T1 JOIN Tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes'
SELECT Age FROM artist;
SELECT T1.name, T1.prominence FROM mountain AS T1 JOIN photos AS T2 ON T1.id = T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id = T3.id WHERE T3.brand <> 'Sigma'
SELECT title FROM item ORDER BY title 
SELECT T2.Date, T3.Player FROM injury_accident AS T1 JOIN game AS T2 ON T1.game_id = T2.id JOIN stadium AS T3 ON T2.stadium_id = T3.id ORDER BY T2.Season DESC
SELECT T1.login_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id WHERE T2.course_name = "advanced database"
SELECT DISTINCT type FROM mill WHERE architect_id IN (SELECT id FROM architect WHERE nationality = 'American' OR nationality = 'Canadian')
SELECT Election_Cycle, COUNT(*) FROM Voting_record GROUP BY Election_Cycle
SELECT Committee FROM election WHERE Party IN (SELECT Party_ID FROM party WHERE Party = 'Democratic')
SELECT * FROM people
SELECT order_id FROM Shipments ORDER BY shipment_date DESC LIMIT 1
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN department AS T4 ON T3.dept_code = T4.dept_code JOIN professor AS T5 ON T1.prof_num = T5.emp_num WHERE T4.dept_name = 'Accounting'
SELECT T1.Name FROM captain AS T1 WHERE T1.Rank = "Midshipman" OR T1.Rank = "Lieutenant"
SELECT response_received_date FROM Documents WHERE document_type_code IN (SELECT document_type_code FROM Document_Types WHERE document_description = 'Regular') OR grant_id IN (SELECT grant_id FROM Grants WHERE grant_amount > 100)
SELECT title FROM course WHERE dept_name = 'Statistics' INTERSECT SELECT title FROM course WHERE dept_name = 'Psychology'
SELECT order_id, customer_id FROM Orders ORDER BY date_order_placed LIMIT 1
SELECT Residence FROM player GROUP BY Residence HAVING COUNT(*) >= 2
SELECT name, city, country, elevation FROM airports WHERE city = 'New York'
SELECT grade, COUNT(DISTINCT classroom), COUNT(*) FROM list GROUP BY grade
SELECT river_name FROM river WHERE traverse = "illinois";
SELECT How_to_Get_There, COUNT(*) AS Total_Count FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY Total_Count DESC LIMIT 1
SELECT Settlements.Claim_ID, Claims.Start_Date FROM Settlements JOIN Claims ON Settlements.Claim_ID = Claims.Claim_ID WHERE Settlements.Amount_Claimed <= (SELECT AVG(Amount_Claimed) FROM Settlements)
SELECT T1.Name FROM Scientists AS T1 LEFT JOIN AssignedTo AS T2 ON T1.SSN = T2.Scientist LEFT JOIN Projects AS T3 ON T2.Project = T3.Code WHERE T3.Hours < (SELECT MAX(Hours) FROM Projects) OR T3.Hours IS NULL
SELECT T1.course_name, COUNT(*) FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name
SELECT count(*) FROM Accounts
SELECT DISTINCT t3.paperid FROM writes AS t3 JOIN author AS t2 ON t3.authorid = t2.authorid JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t1 ON t4.authorid = t1.authorid WHERE t2.authorname = "Peter Mertens" AND t1.authorname = "Dina Barbian";
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID = T2.stuid GROUP BY T1.StuID ORDER BY COUNT(*) DESC LIMIT 1
SELECT lowest_point FROM highlow WHERE state_name = "iowa";
SELECT T1.title, T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id GROUP BY T1.i_id ORDER BY AVG(T2.rating) DESC LIMIT 1
SELECT city_name FROM city WHERE population = (SELECT MAX(population) FROM city WHERE state_name = "wyoming") AND state_name = "wyoming";
SELECT Year FROM hosting_city WHERE Host_City = (SELECT City_ID FROM city WHERE City = "Taizhou ( Zhejiang )")
SELECT City_Town FROM Addresses WHERE Address_ID IN (SELECT Address_ID FROM Clients) AND Address_ID NOT IN (SELECT Address_ID FROM Performers)
SELECT T1.customer_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Packing"
SELECT count(DISTINCT job) FROM Person
SELECT Name, Type, Flag FROM Ship WHERE Built_Year = (SELECT MAX(Built_Year) FROM Ship)
SELECT t1.title, COUNT(t3.citingPaperId) FROM paper AS t1 JOIN cite AS t3 ON t1.paperId = t3.citedPaperId JOIN venue AS t2 ON t2.venueId = t1.venueId WHERE t1.year = 2010 AND t2.venueName = "EMNLP" GROUP BY t1.paperId ORDER BY COUNT(t3.citingPaperId) DESC;
SELECT t3.title, COUNT(t4.citedpaperid) AS numCitations FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN cite AS t4 ON t3.paperid = t4.citedpaperid WHERE t1.keyphrasename = "parsing" GROUP BY t3.title ORDER BY numCitations DESC;
SELECT state_name FROM state WHERE population = (SELECT MAX(population) FROM state);
SELECT Type FROM ship WHERE Tonnage > 6000 INTERSECT SELECT Type FROM ship WHERE Tonnage < 4000
SELECT email_address, phone_number FROM Customers ORDER BY email_address, phone_number
SELECT count(*) , Statement_ID FROM Accounts GROUP BY Statement_ID
SELECT T1.customer_name FROM Customers AS T1 JOIN Mailshot_Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.outcome_code = 'Order' GROUP BY T1.customer_name HAVING COUNT(T2.mailshot_id) >= 2
SELECT document_id, count(*) FROM Draft_Copies GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT t3.name FROM Authors AS t1 JOIN Authorship AS t2 ON t1.authID = t2.authID JOIN Inst AS t3 ON t2.instID = t3.instID WHERE t1.fname = "Katsuhiro" AND t1.lname = "Ueno"
SELECT population FROM state WHERE area = ( SELECT MAX ( area ) FROM state );
SELECT count(DISTINCT Party_name) FROM party
SELECT T1.Month FROM happy_hour AS T1 JOIN happy_hour_member AS T2 ON T1.HH_ID = T2.HH_ID GROUP BY T1.Month HAVING count(*) > 2;
SELECT YEAR FROM publication WHERE title = "Making database systems usable";
SELECT t1.last_name FROM Staff AS t1 JOIN Complaints AS t2 ON t1.staff_id = t2.staff_id JOIN Products AS t3 ON t2.product_id = t3.product_id WHERE t3.product_price = (SELECT MIN(product_price) FROM Products)
SELECT Region_name FROM region WHERE Region_id NOT IN (SELECT Region_id FROM affected_region)
SELECT booking_start_date, booking_end_date FROM Apartment_Bookings AS t1 JOIN Apartments AS t2 ON t1.apt_id = t2.apt_id WHERE t2.apt_type_code = "Duplex"
SELECT Advisor, COUNT(*) AS num_students FROM Student GROUP BY Advisor ORDER BY num_students DESC LIMIT 1
SELECT T1.Campus FROM Campuses AS T1 JOIN faculty AS T2 ON T1.Id = T2.Campus WHERE T2.Year = 2003 ORDER BY T2.Faculty DESC LIMIT 1
SELECT max(rank) FROM review
SELECT T1.investor_id, AVG(T2.share_count) FROM Investors AS T1 JOIN Transactions AS T2 ON T1.investor_id = T2.investor_id GROUP BY T1.investor_id
SELECT Name FROM people WHERE Height < (SELECT avg(Height) FROM people)
SELECT County_name FROM county WHERE Population = (SELECT MAX(Population) FROM county); 
SELECT acc_type, AVG(acc_bal) FROM customer WHERE credit_score < 50 GROUP BY acc_type
SELECT avg(Weeks_on_Top) FROM volume WHERE Artist_ID IN (SELECT Artist_ID FROM artist WHERE Age <= 25)
SELECT name FROM enzyme ORDER BY name DESC
SELECT DName FROM Department WHERE Building = "Mergenthaler"; 
SELECT T2.District_name FROM store AS T1 JOIN store_district AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Type = 'City Mall' INTERSECT SELECT T2.District_name FROM store AS T1 JOIN store_district AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Type = 'Village Store'
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top > 2
SELECT Police_force FROM county_public_safety WHERE Location != 'East'
SELECT T2.Store_Name FROM Bookings AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Workshop_Group_ID = T2.Workshop_Group_ID WHERE T1.Status_Code = "stop"
SELECT state, SUM(acc_bal) FROM customer WHERE credit_score > 100 GROUP BY state
SELECT t3.year FROM writes AS t3 JOIN author AS t2 ON t3.authorid = t2.authorid JOIN writes AS t4 ON t4.paperid = t3.paperid JOIN author AS t1 ON t4.authorid = t1.authorid WHERE t2.authorname = "Peter Mertens" AND t1.authorname = "Dina Barbian";
SELECT count(DISTINCT T2.Furniture_ID), T1.Name FROM manufacturer AS T1 JOIN furniture_manufacte AS T2 ON T1.Manufacturer_ID = T2.Manufacturer_ID GROUP BY T1.Name
SELECT count(*) FROM people WHERE Is_Male = 'Female' AND Age > 30
SELECT T2.apt_type_code, T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id = T2.building_id WHERE T1.building_manager = "Kyle"
SELECT T1.StuID, COUNT(T2.SportName), SUM(T2.GamesPlayed) FROM Student AS T1 JOIN SportsInfo AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT COUNT(DISTINCT Team) FROM Elimination
SELECT t2.title FROM CAST AS t3 JOIN actor AS t1 ON t3.aid = t1.aid JOIN movie AS t2 ON t2.mid = t3.msid WHERE t1.name = "Robin Wright";
SELECT COUNT(river_name) FROM river WHERE river_name = "colorado";
SELECT Patient FROM Stay WHERE Room = 111 ORDER BY StayEnd DESC LIMIT 1
SELECT DISTINCT product_color FROM Products
SELECT t1.Fname, t1.LName FROM Student AS t1 JOIN Visits_Restaurant AS t2 ON t1.StuID = t2.StuID GROUP BY t2.StuID ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Customers AS c JOIN Customers_Policies AS cp ON c.Customer_ID = cp.Customer_ID WHERE c.Customer_name = "Dayana Robel"
SELECT DISTINCT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Enrolled_in WHERE Grade IN (SELECT lettergrade FROM Gradeconversion WHERE gradepoint >= 3.8))
SELECT DISTINCT t3.paperid FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN venue AS t4 ON t4.venueid = t3.venueid WHERE t1.keyphrasename = "Parsing" AND t3.year = 2012 AND t4.venuename = "acl";
SELECT T2.Name FROM people AS T1 JOIN wedding AS T3 ON T1.People_ID = T3.Male_ID OR T1.People_ID = T3.Female_ID JOIN church AS T2 ON T2.Church_ID = T3.Church_ID WHERE T1.Age > 30
SELECT T2.Author FROM submission AS T2 JOIN acceptance AS T1 ON T2.Submission_ID = T1.Submission_ID GROUP BY T2.Author HAVING COUNT(DISTINCT T1.Workshop_ID) > 1
SELECT sum(salary) FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.name_first = 'Len' AND T2.name_last = 'Barker' AND T1.year BETWEEN 1985 AND 1990
SELECT product_type_code, AVG(product_price) FROM Products GROUP BY product_type_code
SELECT Location FROM cinema WHERE Capacity > 300 GROUP BY Location HAVING count(*) >= 2
SELECT DISTINCT customer_name FROM Customers JOIN Customer_Orders ON Customers.customer_id = Customer_Orders.customer_id WHERE Customer_Orders.order_status_code = "Pending" ORDER BY Customers.customer_id
SELECT Name FROM company WHERE Industry = "banking" OR Industry = "retailing"
SELECT T1.Advisor FROM Student AS T1 GROUP BY T1.Advisor HAVING COUNT(*) >= 2
SELECT t4.title FROM organization AS t2 JOIN author AS t1 ON t2.oid = t1.oid JOIN writes AS t3 ON t3.aid = t1.aid JOIN publication AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan" AND t4.year > 2000;
SELECT Advisor, count(*) FROM Student GROUP BY Advisor
SELECT T2.course_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id WHERE T1.personal_name = "Julio"
SELECT COUNT(t4.citedPaperId) FROM paper AS t3 JOIN cite AS t4 ON t3.paperId = t4.citedPaperId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "Noah A Smith";
SELECT t3.policy_type_code FROM Customers AS t1 JOIN Customers_Policies AS t2 ON t1.Customer_ID = t2.Customer_ID JOIN Available_Policies AS t3 ON t2.Policy_ID = t3.Policy_ID WHERE t1.Customer_name = "Dayana Robel"
SELECT state_name FROM city WHERE city_name = "montana"
SELECT T1.cell_mobile_number FROM People AS T1 JOIN Candidates AS T2 ON T1.person_id = T2.candidate_id JOIN Candidate_Assessments AS T3 ON T2.candidate_id = T3.candidate_id WHERE T3.asessment_outcome_code = "Fail"
SELECT sum(beds) FROM Rooms WHERE bedType = "King"
SELECT MAX(Milliseconds) AS longest_duration, MIN(Milliseconds) AS shortest_duration FROM Track WHERE GenreId = (SELECT GenreId FROM Genre WHERE Name = 'Pop')
SELECT count(*) FROM Voting_record
SELECT state_name FROM highlow WHERE highest_point > (SELECT highest_point FROM highlow WHERE state_name = "colorado");
SELECT avg(Damage_millions_USD), max(Damage_millions_USD) FROM storm WHERE Max_speed > 1000
SELECT roomName, basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1
SELECT T2.Sex FROM candidate AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Unsure_rate DESC LIMIT 1
SELECT T2.Name, T1.Scientist FROM AssignedTo AS T1 JOIN Projects AS T2 ON T1.Project = T2.Code GROUP BY T1.Project HAVING T2.Hours = (SELECT MIN(Hours) FROM Projects)
SELECT T1.artist_name, T1.gender FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE MONTH(T2.releasedate) = 3
SELECT coupon_amount FROM Discount_Coupons WHERE coupon_id IN (SELECT coupon_id FROM Customers WHERE good_or_bad_customer = 'good') AND coupon_id IN (SELECT coupon_id FROM Customers WHERE good_or_bad_customer = 'bad')
SELECT t4.venueName FROM venue AS t4 JOIN paper AS t3 ON t4.venueId = t3.venueId JOIN writes AS t2 ON t2.paperId = t3.paperId JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "Peter Mertens";
SELECT river_name FROM river WHERE LENGTH = (SELECT MAX(LENGTH) FROM river WHERE traverse = "texas") AND traverse = "texas";
SELECT date_became_customer FROM Customers WHERE customer_id BETWEEN 10 AND 20
SELECT artist.Name FROM artist JOIN exhibition ON artist.Artist_ID = exhibition.Artist_ID JOIN exhibition_record ON exhibition.Exhibition_ID = exhibition_record.Exhibition_ID GROUP BY artist.Name HAVING AVG(exhibition_record.Attendance) > 200
SELECT avg(T1.Age), T2.city_code, T2.city_name FROM Student AS T1 JOIN City AS T2 ON T1.city_code = T2.city_code GROUP BY T2.city_code, T2.city_name
SELECT DISTINCT t3.paperid FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "Question Answering";
SELECT T2.emp_fname, T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T1.dept_code = T3.dept_code WHERE T3.dept_name = 'History' AND T1.prof_high_degree = 'Ph.D.'
SELECT t4.title FROM CAST AS t5 JOIN actor AS t1 ON t5.aid = t1.aid JOIN movie AS t4 ON t4.mid = t5.msid JOIN CAST AS t3 ON t4.mid = t3.msid JOIN actor AS t2 ON t3.aid = t2.aid WHERE t1.name = "Woody Strode" AND t2.name = "Jason Robards";
SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T1.gender = 'female' AND T2.friend = 'Zach'
SELECT roomName FROM Rooms JOIN Reservations ON Rooms.RoomId = Reservations.Room WHERE Reservations.FirstName LIKE '%ROY%'
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark"; 
SELECT course_description FROM Courses WHERE course_name = "database"
SELECT city_name FROM city WHERE population > 150000 AND state_name = "kansas";
SELECT lname FROM Authors WHERE fname = "Amal"
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*) > 3
SELECT COUNT(DISTINCT t3.title) FROM director AS t2 JOIN directed_by AS t1 ON t2.did = t1.did JOIN movie AS t3 ON t3.mid = t1.msid WHERE t2.name = "Quentin Tarantino" AND t3.release_year > 2010;
SELECT DISTINCT p.paperId, p.title FROM paper p JOIN writes w ON p.paperId = w.paperId JOIN author a ON w.authorId = a.authorId JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId WHERE a.authorName = "brian curless" AND k.keyphraseName = "convolution";
SELECT T1.customer_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.date_order_placed >= "2009-01-01" AND T2.date_order_placed <= "2010-01-01"
SELECT name, Location FROM enzyme
SELECT DISTINCT Location_Name FROM Locations
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING COUNT(*) > 3
SELECT Campus FROM Campuses WHERE Year < 1800
SELECT T1.College FROM match_season AS T1 JOIN player AS T2 ON T1.Player = T2.Player WHERE T1.Position = "Midfielder" INTERSECT SELECT T1.College FROM match_season AS T1 JOIN player AS T2 ON T1.Player = T2.Player WHERE T1.Position = "Defender"
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1
SELECT T1.StuID, COUNT(T2.SportName), SUM(T2.GamesPlayed) FROM Student AS T1 JOIN SportsInfo AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT count(*) , T1.grant_id FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id = T2.grant_id GROUP BY T1.grant_id ORDER BY count(*) DESC LIMIT 1
SELECT roomName, decor FROM Rooms WHERE bedType = 'King' ORDER BY basePrice;
SELECT T2.Region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.Region_id = T2.Region_id JOIN storm AS T3 ON T1.Storm_ID = T3.Storm_ID WHERE T3.Number_Deaths >= 10
SELECT Characteristics.characteristic_name FROM Characteristics JOIN Product_Characteristics ON Characteristics.characteristic_id = Product_Characteristics.characteristic_id JOIN Products ON Product_Characteristics.product_id = Products.product_id WHERE Products.product_name = "sesame" AND Characteristics.characteristic_type_code = "Grade"
SELECT COUNT(DISTINCT t2.paperId) FROM writes AS t2 JOIN author AS t1 ON t2.authorId = t1.authorId WHERE t1.authorName = "Christopher D. Manning";
SELECT DISTINCT UnitPrice FROM Track
SELECT amenity_name FROM Dorm_amenity ORDER BY amenity_name ASC
SELECT song_name FROM song WHERE rating < (SELECT MIN(rating) FROM song WHERE genre_is = 'blues')
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.name = 'Alice' AND T1.job = 'doctor'
SELECT title FROM course WHERE course_id IN (SELECT prereq_id FROM prereq WHERE course_id = 'International Finance')
SELECT sum(Amount_Payment) FROM Payments
SELECT building_address, building_phone FROM Apartment_Buildings WHERE building_manager = "Brenden"
SELECT T1.Position FROM match_season AS T1 JOIN country AS T2 ON T1.Country = T2.Country_id WHERE T2.Capital = 'Dublin'
SELECT T1.cmi_details FROM Customer_Master_Index AS T1 JOIN CMI_Cross_References AS T2 ON T1.master_customer_id = T2.master_customer_id WHERE T2.source_system_code = 'Tax'
SELECT T1.customer_id, CONCAT(T2.customer_first_name, ' ', T2.customer_last_name) AS full_name FROM Customers_Cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING COUNT(*) >= 2
SELECT T1.EMP_FNAME FROM EMPLOYEE AS T1 JOIN PROFESSOR AS T2 ON T1.EMP_NUM = T2.EMP_NUM WHERE T1.EMP_JOBCODE = 'PROF' ORDER BY T1.EMP_DOB
SELECT T2.Name FROM Physician AS T2 WHERE T2.EmployeeID NOT IN (SELECT T1.Physician FROM Appointment AS T1)
SELECT person_id FROM People WHERE email_address = "stanley.monahan@example.org"
SELECT city_name FROM city WHERE state_name = "texas";
SELECT phone, postal_code FROM address WHERE address = '1031 Daugavpils Parkway'
SELECT Memory_in_G, Carrier FROM phone 
SELECT avg(distance), avg(price) FROM flight WHERE origin = 'Los Angeles'
SELECT DISTINCT p.paperId, p.title FROM paper p JOIN paperKeyphrase pk ON p.paperId = pk.paperId JOIN keyphrase k ON pk.keyphraseId = k.keyphraseId JOIN writes w ON p.paperId = w.paperId JOIN author a ON w.authorId = a.authorId WHERE a.authorName = "brian curless" AND k.keyphraseName = "convolution";
SELECT avg(rating) FROM review WHERE year = 2014
SELECT t3.paperid, t3.title, t3.numCitedBy FROM paperkeyphrase AS t2 JOIN keyphrase AS t1 ON t2.keyphraseid = t1.keyphraseid JOIN paper AS t3 ON t3.paperid = t2.paperid WHERE t1.keyphrasename = "Artificial Intelligence" ORDER BY t3.numCitedBy DESC LIMIT 1;
SELECT h.name, h.born_state, h.age FROM head h JOIN management m ON h.head_ID = m.head_ID ORDER BY h.age
SELECT T1.surname, T1.driverId FROM drivers AS T1 JOIN pitStops AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T2.raceId = T3.raceId GROUP BY T1.driverId HAVING COUNT(DISTINCT T2.stop) = 11 AND COUNT(DISTINCT T3.raceId) > 5
SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Customer_Events)
SELECT DISTINCT t3.year FROM writes AS t2 JOIN author AS t1 ON t2.authorid = t1.authorid JOIN paper AS t3 ON t2.paperid = t3.paperid WHERE t1.authorname = "Mary Crainie" ORDER BY t3.year DESC LIMIT 1;
SELECT A.name, C.balance as checking_balance, S.balance as savings_balance FROM ACCOUNTS A JOIN CHECKING C ON A.custid = C.custid JOIN SAVINGS S ON A.custid = S.custid
SELECT count(*) FROM Customers AS T1 JOIN Customer_Addresses AS T2 ON T1.customer_id = T2.customer_id JOIN Addresses AS T3 ON T2.address_id = T3.address_id WHERE T3.city = 'Lake Geovannyton'
SELECT max(max_page_size) FROM product WHERE product_id IN (SELECT product_id FROM store_product GROUP BY product_id HAVING COUNT(*) > 3)
SELECT Employee_ID FROM Employees WHERE Employee_ID NOT IN (SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_Destroyed)
SELECT invoice_number FROM Invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"
SELECT state_name FROM state
SELECT T1.director, T2.title, T2.stars FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID = T2.mID WHERE T2.stars = (SELECT min(stars) FROM Rating WHERE mID = T1.mID) GROUP BY T1.director
SELECT name FROM employee ORDER BY salary LIMIT 3
SELECT dept_address FROM department WHERE school_code = 'BUS'
SELECT river_name FROM river WHERE traverse != "tennessee"; 
SELECT Name FROM wrestler ORDER BY Days_held DESC
SELECT Nominee FROM musical WHERE Award = "Tony Award" AND Nominee IN (SELECT Nominee FROM musical WHERE Award = "Drama Desk Award")
SELECT DISTINCT COUNT(t2.citingPaperId), t1.paperId FROM paper AS t1 JOIN cite AS t2 ON t1.paperId = t2.citedPaperId GROUP BY t1.paperId HAVING COUNT(t2.citingPaperId) >= 5;
SELECT DISTINCT t1.title FROM paper AS t1 JOIN cite AS t2 ON t1.paperId = t2.citingPaperId JOIN paper AS t3 ON t3.paperId = t2.citedPaperId JOIN writes AS t4 ON t4.paperId = t3.paperId JOIN author AS t5 ON t5.authorId = t4.authorId WHERE t5.authorName = "Daniel Jurafsky";
SELECT COUNT(DISTINCT t2.name) FROM domain_author AS t4 JOIN author AS t1 ON t4.aid = t1.aid JOIN DOMAIN AS t3 ON t3.did = t4.did JOIN organization AS t2 ON t2.oid = t1.oid WHERE t3.name = "Databases";
SELECT name, distance FROM aircraft WHERE aid = 12
SELECT t1.order_id FROM Shipments AS t1 WHERE t1.shipment_tracking_number = "3452"
SELECT classroom, count(DISTINCT grade) FROM list GROUP BY classroom
SELECT Position, Team FROM pilot
SELECT max(T1.duration) , max(T2.resolution) , T2.languages FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id GROUP BY T2.languages ORDER BY T2.languages ASC
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t3.service_name = "Close a policy" OR t3.service_name = "Upgrade a policy"
SELECT `highest_point` FROM highlow
SELECT COUNT(*) FROM Student_Tests_Taken WHERE test_result = "Fail"
SELECT name_first, name_last FROM player AS T1 JOIN all_star AS T2 ON T1.player_id = T2.player_id WHERE YEAR = 1998
SELECT T.Team FROM player AS P JOIN (SELECT MAX(Age) AS max_age FROM player) AS T1 ON P.Age = T1.max_age JOIN team AS T ON P.Team = T.Team
SELECT year, player_id, salary FROM salary WHERE year = 2001 ORDER BY salary DESC LIMIT 3
SELECT booking_start_date, booking_end_date FROM Apartment_Bookings
SELECT Type, avg(Tonnage) FROM ship GROUP BY Type
SELECT count(*) FROM camera_lens WHERE id NOT IN (SELECT camera_lens_id FROM photos)
SELECT T2.fname, T2.Age FROM SportsInfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.SportName = "Football" AND T2.StuID IN (SELECT StuID FROM SportsInfo WHERE SportName = "Lacrosse")
SELECT party.Party_name, region.Region_name FROM party JOIN region ON party.Region_ID = region.Region_ID
SELECT COUNT(*) FROM movie WHERE release_year = 2013
SELECT Campus FROM degrees GROUP BY Campus ORDER BY SUM(Degrees) DESC LIMIT 1
SELECT count(*) FROM body_builder
SELECT T2.protein_name, T1.Institution FROM Institution AS T1 JOIN protein AS T2 ON T1.Institution_id = T2.Institution_id
SELECT catalog_entry_name FROM Catalog_Contents
SELECT director FROM Movie WHERE director IS NOT NULL GROUP BY director HAVING count(*) = 1
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";
SELECT count(*) FROM Financial_Transactions AS t1 JOIN Accounts AS t2 ON t1.account_id = t2.account_id WHERE t2.account_name = "337"
SELECT Song FROM volume ORDER BY Song ASC
SELECT COUNT(city_name) FROM city WHERE state_name = "texas" AND population > 100000;
SELECT T1.Studio FROM film AS T1 WHERE T1.Director != "Walter Hill"
SELECT Party_Theme, Location FROM party
SELECT Customer_Details FROM Customers WHERE Customer_ID IN (SELECT Customer_ID FROM Policies WHERE Policy_Type_Code = "Deputy")
SELECT TYPE FROM Vocals AS V JOIN Band AS B ON V.Bandmate = B.Id JOIN Songs AS S ON V.SongId = S.SongId WHERE B.Firstname = "Solveig" AND S.Title = "A Bar in Amsterdam"
SELECT count(DISTINCT Country) FROM climber
SELECT * FROM swimmer
SELECT name FROM enzyme WHERE Product != 'Heme'
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id = t2.catalog_entry_id WHERE t2.catalog_level_number = 8
SELECT count(DISTINCT ID) FROM teaches
SELECT cust_name, acc_bal FROM customer WHERE cust_name LIKE '%a%'
SELECT highest_point FROM highlow WHERE highest_elevation = (SELECT MAX(highest_elevation) FROM highlow);
SELECT Budget_Type_Description FROM Ref_Budget_Codes WHERE Budget_Type_Code = "ORG"
SELECT Location FROM station
SELECT T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id = T2.maintenance_contract_company_id ORDER BY T2.contract_start_date ASC LIMIT 1
SELECT T2.Name FROM perpetrator AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT count(*) FROM technician
SELECT ObjectNumber FROM railway WHERE Railway_ID NOT IN (SELECT Railway_ID FROM train)
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T1.name LIKE '%ee%'
SELECT birth_year FROM actor WHERE name = "Benedict Cumberbatch";
SELECT Mascot FROM School WHERE Enrollment > (SELECT avg(Enrollment) FROM School)
SELECT t3.house_number, t1.name FROM restaurant AS t1 JOIN geographic AS t2 ON t1.city_name = t2.city_name JOIN location AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.food_type = "french" AND t1.rating > 2.5;
SELECT min(SALARY), DEPARTMENT_ID FROM employees GROUP BY DEPARTMENT_ID
SELECT cName FROM Tryout ORDER BY cName
SELECT t1.roomName FROM Rooms AS t1 JOIN Reservations AS t2 ON t1.RoomId = t2.Room GROUP BY t2.Room ORDER BY count(*) DESC LIMIT 1
SELECT Country FROM stadium GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT apt_number, room_count FROM Apartments
SELECT city.population FROM city JOIN state ON city.state_name = state.state_name WHERE state.state_name = "wisconsin" AND city.population > 100000;
SELECT state_name FROM border_info WHERE border IN ( SELECT border FROM border_info WHERE state_name = "colorado" );
SELECT s.name, s.average_attendance, s.total_attendance FROM stadium s WHERE s.id NOT IN (SELECT g.stadium_id FROM game g JOIN injury_accident ia ON g.id = ia.game_id)
SELECT Name FROM phone ORDER BY Price ASC
SELECT DISTINCT p.paperId, p.title FROM paper p JOIN venue v ON p.venueId = v.venueId JOIN writes w ON p.paperId = w.paperId JOIN author a ON w.authorId = a.authorId WHERE a.authorName = "Richard Ladner" AND v.venueName = "chi";
SELECT account_id, account_name, other_account_details FROM Accounts JOIN Customers ON Accounts.customer_id = Customers.customer_id WHERE Customers.customer_first_name = 'Meaghan'
SELECT T1.product_id, COUNT(*) FROM Product AS T1 JOIN Problems AS T2 ON T1.product_id = T2.product_id WHERE T2.date_problem_reported > '1986-11-13' GROUP BY T1.product_id
SELECT Physician.Name, COUNT(Patient.SSN) FROM Physician JOIN Patient ON Physician.EmployeeID = Patient.PCP GROUP BY Physician.Name
SELECT river_name FROM river WHERE LENGTH = (SELECT MAX(LENGTH) FROM river WHERE traverse = "texas") AND traverse = "texas";
SELECT T1.Country FROM stadium AS T1 WHERE T1.Opening_year <= 2006
SELECT T1.Name FROM Nurse AS T1 JOIN Undergoes AS T2 ON T1.EmployeeID = T2.AssistingNurse
SELECT Employees.Employee_ID, COUNT(Documents_to_be_Destroyed.Document_ID) FROM Employees LEFT JOIN Documents_to_be_Destroyed ON Employees.Employee_ID = Documents_to_be_Destroyed.Destroyed_by_Employee_ID GROUP BY Employees.Employee_ID
SELECT Date_of_ceremony FROM music_festival WHERE Category = "Best Song" AND Result = "Awarded"
SELECT T1.Name FROM channel AS T1 JOIN broadcast AS T2 ON T1.Channel_ID = T2.Channel_ID WHERE T2.Time_of_day = "morning"
SELECT Member_Name FROM member WHERE Party_ID NOT IN (SELECT Party_ID FROM party WHERE Party_name = "Progress Party")
SELECT T2.Name, T2.Score FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "White"
SELECT individual_first_name, individual_middle_name, individual_last_name FROM Individuals ORDER BY individual_last_name
SELECT name FROM Person WHERE name NOT IN (SELECT name FROM PersonFriend)
SELECT max(T1.wins) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings';
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY SUM(T1.Quantity) DESC LIMIT 1
SELECT t2.ClubName FROM Student AS t1 JOIN Member_of_club AS t2 ON t1.StuID = t2.StuID JOIN Club AS t3 ON t2.ClubID = t3.ClubID WHERE t1.LName = "Davis" AND t1.Fname = "Steven"
SELECT Grade, Classroom FROM list 
SELECT river_name FROM river WHERE LENGTH = (SELECT MAX(LENGTH) FROM river WHERE traverse = "texas") AND traverse = "texas";
SELECT Advisor FROM Student GROUP BY Advisor ORDER BY count(*) DESC LIMIT 1
SELECT T2.product FROM store AS T1 JOIN store_product AS T2 ON T1.Store_ID = T2.Store_ID WHERE T1.Store_Name = "Miramichi"
SELECT course_id FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT avg(stars) FROM Rating GROUP BY rID
SELECT sum(Amount_Payment) FROM Payments
SELECT rID FROM Rating WHERE stars != 4
SELECT avg(Capacity) FROM stadium WHERE Opening_year = 2005
SELECT Advisor FROM Student GROUP BY Advisor HAVING COUNT(*) > 2
SELECT bm.Team_Name, bm.ACC_Regular_Season FROM basketball_match AS bm JOIN university AS u ON bm.School_ID = u.School_ID ORDER BY u.Founded ASC LIMIT 1
SELECT city_name FROM city WHERE country_name = 'USA' AND population > 150000;
SELECT count(*) , Country FROM airport GROUP BY Country
SELECT sum(Amount_Paid), avg(Amount_Paid) FROM Claim_Headers
SELECT state_name FROM state WHERE capital = "salem";
SELECT T1.state, T1.enr FROM College AS T1 JOIN Tryout AS T2 ON T1.cName = T2.cName WHERE T2.decision = 'yes'
SELECT Founded FROM university ORDER BY Enrollment DESC LIMIT 1
SELECT artist_name FROM artist WHERE country = 'UK' AND preferred_genre IN (SELECT g_name FROM genre WHERE rating = 'English')
SELECT T1.School, T2.Nickname FROM university AS T1 JOIN basketball_match AS T2 ON T1.School_ID = T2.School_ID ORDER BY T1.Founded ASC
SELECT count(*) as num_students, state FROM College WHERE cName IN (SELECT cName FROM Tryout WHERE decision = 'yes') GROUP BY state
SELECT count(DISTINCT dst_ap) FROM routes WHERE airline = 'AA'
SELECT Name FROM Tourist_Attractions WHERE How_to_Get_There = "bus"
SELECT count(*) as num_instructors, avg(salary) as avg_salary FROM instructor WHERE dept_name = (SELECT dept_name FROM department ORDER BY budget DESC LIMIT 1)
SELECT Shop_Name FROM shop JOIN stock ON shop.Shop_ID = stock.Shop_ID GROUP BY shop.Shop_ID ORDER BY SUM(stock.Quantity) DESC LIMIT 1
SELECT dept_name, building FROM department ORDER BY budget DESC
SELECT T1.Claim_ID, T1.Date_Claim_Made, COUNT(*) AS Settlement_Count FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_ID = T2.Claim_ID GROUP BY T1.Claim_ID, T1.Date_Claim_Made ORDER BY Settlement_Count DESC LIMIT 1
SELECT count(*) FROM driver WHERE Home_city = 'Hartford' OR Age < 40
SELECT t1.title FROM paper AS t1 JOIN venue AS t2 ON t1.venueId = t2.venueId WHERE t1.year = 2015 AND t2.venueName = "pldi";
SELECT first_name, last_name FROM Candidates
SELECT T3.product_id, T2.product_details FROM Products AS T2 JOIN Order_Items AS T3 ON T2.product_id = T3.product_id GROUP BY T3.product_id ORDER BY SUM(T3.order_quantity) DESC LIMIT 1
SELECT count(*) FROM employee
SELECT count(DISTINCT course_id) FROM Student_Course_Enrolment
SELECT T1.driverId, T1.nationality FROM drivers AS T1 JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.milliseconds > 100000
SELECT Type FROM artwork GROUP BY Type ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.staff_name, T1.staff_gender FROM Staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.date_assigned_from LIKE "2016%"
SELECT count(*) FROM purchase AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.Level = 6
SELECT state_name FROM state WHERE area = (SELECT MIN(area) FROM state);
SELECT degrees FROM degrees WHERE Campus = "San Francisco State University" AND Year = 2001
SELECT roomName, RoomId FROM Rooms ORDER BY basePrice DESC LIMIT 3
SELECT name FROM actor WHERE birth_city = "Tehran";
SELECT AllergyType FROM Allergy_Type GROUP BY AllergyType ORDER BY count(*) ASC LIMIT 1
SELECT avg(Budget_million), max(Budget_million), min(Budget_million) FROM movie WHERE Year < 2000
SELECT born_state FROM head GROUP BY born_state HAVING COUNT(*) >= 3
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Weight DESC LIMIT 1
SELECT Theme FROM exhibition WHERE Exhibition_ID IN (SELECT Exhibition_ID FROM exhibition_record WHERE Attendance < 100 INTERSECT SELECT Exhibition_ID FROM exhibition_record WHERE Attendance > 500)
SELECT count(*) FROM exhibition WHERE Year >= 2005
SELECT building, max(capacity), avg(capacity) FROM classroom GROUP BY building
SELECT Major FROM Student WHERE Sex = 'F' GROUP BY Major ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM DEPARTMENT
SELECT Budget_Type_Code, Budget_Type_Description FROM Ref_Budget_Codes
SELECT roomName, basePrice FROM Rooms ORDER BY basePrice LIMIT 1
SELECT max(Years_Working), min(Years_Working), avg(Years_Working) FROM school_bus
SELECT Zip_code FROM county WHERE County_name = "Howard"
SELECT T2.product_name, COUNT(*) FROM Order_Items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id
SELECT Grape, Appelation FROM wine
SELECT t3.paperid FROM paperdataset AS t2 JOIN dataset AS t1 ON t2.datasetid = t1.datasetid JOIN paper AS t3 ON t3.paperid = t2.paperid JOIN venue AS t4 ON t4.venueid = t3.venueid WHERE t1.datasetname = "ImageNet" AND t3.year = 2014 AND t4.venuename = "eccv";
SELECT T1.teacher_id, T2.last_name FROM Detention AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.detention_type_code = "AFTER" GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT city_name FROM city WHERE population = (SELECT MAX(population) FROM city WHERE state_name = "wyoming") AND state_name = "wyoming";
SELECT artist_name FROM artist WHERE country = "UK" AND preferred_genre = "English"
SELECT t3.name FROM tip AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN USER AS t3 ON t3.user_id = t2.user_id WHERE t1.city = "Dallas";
SELECT Location_Code FROM Document_Locations GROUP BY Location_Code HAVING count(*) >= 3
SELECT T1.Code, T1.Fate, T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID
SELECT COUNT(*) FROM restaurant AS t1 JOIN LOCATION AS t2 ON t1.id = t2.restaurant_id WHERE t2.city_name = "palo alto" AND t1.food_type = "french";
SELECT DISTINCT Location FROM track
SELECT T2.lname FROM Authors AS T2 JOIN Authorship AS T1 ON T1.authID = T2.authID GROUP BY T1.authID ORDER BY COUNT(*) DESC LIMIT 1
