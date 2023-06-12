# Airport-Database
Assignment#2 @ Database Systems Course

<h2>ERD Description</h2>
<u>Tool Used:</u> ERD Plus <br>
Min-Max notation is used to model constraints.<br>

<h3>Entities and Relationships:</h3>
<ul><li>Airplane has total participation with Plane_type and Hangar.</li>
<li>One Airplane will have only one Plane_type.</li> 
<li>Airplane will have only one owner but one Owner can own many Airplanes. This relationship has attribute of purchase date (Pdate).</li>
<li>One to many Airplanes can be stored in one Hangar.</li>
<li>Service is supposed as a weak entity. Airplane has identifying relationship with Service.</li>
<li>A person can be an Employee, a Pilot or an Owner. Disjoint specialization is depicted here.</li>
<li>An Employee has total participation with maintaining Service.</li>
<li>One Employee can work on many Plane_types. Total Participation between Employee and Plane type exists.</li>
<li>A Pilot can fly many plane types. There is Total Participation between Pilot and Plane_type.</li>
<li>An Owner can either be Person or a Corporation but not both. Hence, Union relationship is depicted for Owner entity.</li>
<li>An Owner has total participation with Airplane.</li>
</ul>

<h3>Some Challenges:</h3>
<ul><li>Modelling the specialization relationships to relational database.</li>
<li>Modelling Service as a weak entity.</li></ul>

<h3>Solutions:</h3>
For specialization; person, corporation, and owner tables are made. Where Owner contains the ssn of person owner and name of corporation owner.<br> 
When person is owner, the Corporation Name column is NULL and vice versa. <br>
For weak entity, the primary key of Airplane (on which service is dependent) was included as foreign key.

<h2>Relational Database Description</h2>
The database relational diagram has been provided. Each entity and relationship has been mapped to a table. <br>
Some challenges were faced during Query 13, 14 and 18. These were solved by adding multiple joins, subqueries and using union.

## A View of the Database
<p float="left">
<img src="https://github.com/Vaneeza-7/Airport-Database/blob/master/screenshots/sc5.png" width="800" height ="300">
<img src=https://github.com/Vaneeza-7/Airport-Database/blob/master/screenshots/sc4.png width="800">
<img src=https://github.com/Vaneeza-7/Airport-Database/blob/master/screenshots/sc3.png width="800">
<img src=https://github.com/Vaneeza-7/Airport-Database/blob/master/screenshots/sc2.png width="800">
<img src=https://github.com/Vaneeza-7/Airport-Database/blob/master/screenshots/sc1.png width="800">
</p>

## Authors
- [Vaneeza](https://github.com/Vaneeza-7)
- [Minha](https://github.com/Minha-Attique)

## License
This project is licensed under the [MIT License](LICENSE).
