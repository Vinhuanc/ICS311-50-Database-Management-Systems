 create database Medications; use Medications;
create table medicationInfo( medicationID int(10) primary key, genericName varchar(100), brandName varchar(100)
);
create table medicationUseInfo( medicationID int(10) ,
medicationClass varchar(100) ,
mainPurpose varchar(100) ,
constraint pk_medicationUseInfo primary key (medicationID), constraint fk_medicationUseInfo foreign key(medicationID) references
medicationInfo(medicationID) );
create table sideEffects( medicationID int(10) ,
upperBody varchar(200) ,
lowerBody varchar(200) ,
constraint pk_sideEffects primary key (medicationID), constraint fk_sideEffects foreign key(medicationID) references
medicationInfo(medicationID) );
create table relatedInformation( medicationID int(10) ,
yearOfApproval YEAR , prescriptionQuantity varchar(10) , introduction varchar(2000) ,
URL varchar(500) ,
constraint pk_relatedInformation primary key (medicationID),
constraint fk_relatedInformation foreign key(medicationID) references medicationInfo(medicationID)
);
create table medicationDosage( medicationID int(10),
avgDose varchar(100),
doseRoute varchar(100),
constraint pk_medicationDosage primary key (medicationID), constraint fk_medicationDosage foreign key(medicationID) references
medicationInfo(medicationID) )

 Insert into MedicationInfo(medicationID, genericName, brandName) values
(1,'Atorvastatin','Lipitor'), (2,'Amoxicillin','Amoxil'), (3,'Lisinopril','Prinivil'), (4,'Levothyroxine','Synthroid'), (5,'Albuterol','Ventolin'), (6,'Metformin','Glucophage'), (7,'Amlodipine','Norvasc'), (8,'Metoprolol','Lopressor'), (9,'Omeprazole','Prilosec'), (10,'Losartan','Cozaar'), (11,'Azithromycin','Zithromax'), (12,'Prednisone','Deltasone'), (13,'Ibuprofen','Advil'), (14,'Hydrocodone/Acetamiophen','Norco'), (15,'Gabapentin','Neurontin');
Insert into MedicationUseInfo(medicationID, medicationClass, mainPurpose) values
(1,'Antihypertensive', 'Cholesterol'), (2,'Penicillin', 'Antibiotic'), (3,'Antihypertensive', 'Blood Pressure'), (4,'Thyroid', 'Thyroid'), (5,'bronchodilators', 'Asthma'), (6,'Antidiabetic', 'Diabetes'), (7,'Antihypertensive', 'Blood Pressure'), (8,'Antihypertensive', 'Blood Pressure'), (9,'Proton-pump', 'StomachAcid'), (10,'Antihypertensive', 'Blood Pressure'), (11,'Antibiotic', 'Antibiotic'), (12,'Anti-inflammatory', 'Inflammation'), (13,'NSAID', 'Pain'),
(14,'Narcotic', 'Pain'), (15,'Anticonvulsant', 'Seizures');
Insert into SideEffects(medicationID,upperBody,lowerBody) values
(1,'Drowsiness, Fever, Appetite changes, Sleep changes', 'Diarrhea, Constipation'), (2,'Stomach changes, Chest pain, Bloating, Headache', 'Constipation, Leg pain'), (3,'Dizziness, Headache, Nausea', 'Diarrhea, Constipation' ),
(4,'Weight change, Vomiting, Headache, Fever', 'Diarrhea, Constipation' ), (5,'Headache, Lung pain, Heart rate change', 'Urine change'),
(6,'Heartburn, Nausea, ', 'Diarrhea, Constipation, Gas' ),
(7,'Drowsiness, Nausea, Stomach pain, Headache', 'Diarrhea' ),
(8,'Dry mouth, Dizziness, Headache, Nausea', 'Constipation, Diarrhea, Gas' ), (9,'Headache, Nausea, Stomach pain,', 'Constipation, Diarrhea' ),

 (10,'Vision change, Hear beat change, Stomach pain, Dizziness', 'Weakness of legs' ), (11,'Nausea, Appetite change, Dizziness', 'Diarrhea' ),
(12,'Headache, Dizziness, Sleep changes', 'Diarrhea' ),
(13,'Thirst, Headache, Vision change, Sleep change', 'Fluid retention, Ankle
swelling' ),
(14,'Nausea, Vomiting, Dizziness', 'Constipation' ),
(15,'Dry mouth, Nausea, Vision change', 'Diarrhea, Swolleness of legs' );
Insert into RelatedInformation(medicationID,yearOfApproval,prescriptionQuantity,introduction,URL) values
(1,1996,24493971,"Atorvastatin is in a class of medications called HMG-CoA reductase inhibitors (statins). It works by slowing the production of cholesterol of the heart, brain, and other parts of the body","https://www.grxstatic.com/d4fuqqd5l3dbz/products/ DrugItem_28240.JPG"),
(2,1972,20368921,"Amoxicillin is an antibiotic used to treat a number of bacterial infections. These include middle ear infection, strep throat, pneumonia, skin infections, and urinary tract infections among others. ", "https://www.grxstatic.com/d4fuqqd5l3dbz/ products/DrugItem_10708.JPG" ),
(3,1978,19990170,"Lisinopril is an angiotensin-converting enzyme (ACE) inhibitor widely used in the therapy of hypertension and heart failure.", "https:// www.grxstatic.com/d4fuqqd5l3dbz/products/tms/DrugItem_1733.JPG" ), (4,1927,19698087, "Levothyroxine is used to treat hypothyroidism. It is also used with surgery and radioactive iodine therapy to treat thyroid cancer. Levothyroxine is in a class of medications called hormones. ", "https://www.grxstatic.com/d4fuqqd5l3dbz/ products/tms/DrugItem_7159.JPG" ),
(5,1972,19085418,"Albuterol is used to prevent and treat difficulty breathing, wheezing, shortness of breath, coughing, and chest tightness caused by lung diseases such as asthma and chronic obstructive pulmonary disease.", "https://www.grxstatic.com/ d4fuqqd5l3dbz/products/tms/Package_24672.JPG" ),
(6,1922,17430765,"Metformin is a biguanide oral hypoglycemic used primarily for treating type 2 diabetes mellitus. , metformin is associated with improved all-cause and cardiovascular mortality1 and decreased risk of some cancers.", "https:// www.grxstatic.com/d4fuqqd5l3dbz/products/DrugItem_24829.JPG" ), (7,1982,16419181, "Amlodipine is commonly used in the treatment of high blood pressure and angina. Amlodipine has antioxidant properties and an ability to enhance the production of nitric oxide.", "https://www.grxstatic.com/d4fuqqd5l3dbz/products/ DrugItem_23090.JPG" ),
(8,1969,15177787, "Metoprolol is an treatment for angina, heart failure, myocardial infarction, atrial fibrillation/flutter, and hypertension.", "https://www.grxstatic.com/ d4fuqqd5l3dbz/products/tms/DrugItem_18553.JPG" ),
(9,1979,12869290, "Omeprazole is a proton pump inhibitor used to treat GERD associated conditions such as heartburn and gastric acid hypersecretion, and to promote healing of tissue damage and ulcers.", "https://www.grxstatic.com/ d4fuqqd5l3dbz/products/cwf_tms/DrugItem_11707.PNG" ), (10,1986,11760646,"Losartan is an angiotensin II receptor blocker (ARB) used to treat hypertension.", "https://www.grxstatic.com/d4fuqqd5l3dbz/products/tms/

 DrugItem_13169.JPG" ),
(11,1980,11577286, "Azithromycin is indicated for the treatment of patients with mild to moderate infections caused by susceptible strains of the microorganisms.", "https:// www.grxstatic.com/d4fuqqd5l3dbz/products/DrugItem_23344.JPG" ), (12,1954,10999246,"Prednisone is a synthetic, anti-inflammatory glucocorticoid that derives from cortisone.Prednisone is an FDA-approved, delayed-release corticosteroid indicated as an anti-inflammatory or immunosuppressive agent to treat a broad range of diseases.", "https://www.grxstatic.com/d4fuqqd5l3dbz/products/tms/ Package_15991.JPG" ),
(13,1961,10951995, "Ibuprofen is a medication in the nonsteroidal anti-inflammatory drug (NSAID) class that is used for treating pain, fever, and inflammation. ", "https:// www.grxstatic.com/d4fuqqd5l3dbz/products/cwf_tms/DrugItem_22459.PNG" ), (14,1923,10409764, "Hydrocodone is an opioid used to treat pain and as a cough suppressant.Its an combination of acetaminophen/hydrocodone or ibuprofen/ hydrocodone for pain severe enough to require an opioid.", "https://www.grxstatic.com/ d4fuqqd5l3dbz/products/cwf_tms/DrugItem_25709.PNG" ),
(15,1993,98186341, "Gabapentin is an anticonvulsive medication that adjunct to more potent anticonvulsants.", "https://www.grxstatic.com/d4fuqqd5l3dbz/products/cwf_tms/ DrugItem_14345.PNG" );
INSERT INTO medicationDosage (medicationID,avgDose,doseRoute)
VALUES
(1,'20mg','oral, injection'), (2,'20mg','oral, topical, injection'), (3,'5mg','oral, injection, infusion'), (4,'2mcg','oral, injection'), (5,'10mg','nasal, oral'), (6,'500mg','oral, injection, solution'), (7,'10mg','oral, solution, injection'), (8,'100mg','oral, injection'), (9,'20mg','oral, injection'), (10,'50mg','oral, injection'), (11,'500mg','oral, injection'), (12,'40mg','oral, injection, solution'), (13,'400mg','oral, injection, solution'), (14,'2500mg','oral'), (15,'900mg','oral, injection');
———————————————————————————————————————
—————————————————————————————
select * from medicationInfo; select * from medicationUseInfo; select * from relatedInformation; select * from sideEffects;

select * from medicationDosage;
 