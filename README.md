# Airport-Database
Assignment#2 @ Vaneeza Ahmad i210390, @ Minha Rehman i212534

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
For specialization, the key attributes of Sub-Classes (SSN of Person and Name of Corporation), were included in the table of Airplane.<br> 
When person is owner, the Corporation Name column is NULL and vice versa.

<h2>Relational Database Description</h2>

