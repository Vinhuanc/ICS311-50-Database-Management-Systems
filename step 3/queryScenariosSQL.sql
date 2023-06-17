{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww17360\viewh18000\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b\fs32 \cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f1\b0 \cf0 select medicationClass, count(medicationClass) as count from medicationUseInfo group by medicationClass;
\f0\b \

\f1\b0 \
select mui.medicationClass, mui.mainPurpose, se.upperBody, se.lowerBody, ri.yearOfApproval, ri.prescriptionQuantity, ri.introduction, ri.URL, md.avgDose, md.doseRoute from medicationUseInfo mui inner join sideEffects se on mui.medicationID=se.medicationID join relatedInformation ri on se.medicationID = ri.medicationID join medicationDosage md on md.medicationID = ri.medicationID inner join medicationInfo mi on mi.medicationID = ri.medicationID where mi.genericName='Albuterol' ;\
\
select mi.genericName, mi.brandName, ri.prescriptionQuantity from medicationInfo mi inner join relatedInformation ri on mi.medicationID = ri.medicationID order by ri.prescriptionQuantity asc; \
\
select * from relatedInformation where yearOfApproval between 1942 and 1969;\
\
select mi.genericName, mi.brandName from medicationInfo mi join relatedInformation on mi.medicationID = relatedInformation.medicationID where yearOfApproval = 1972;\
\
select mi.genericName, mi.brandName, ri.introduction from medicationInfo mi join relatedInformation  ri on mi.medicationID=ri.medicationID ;\
\
select medicationID from medicationDosage where doseRoute like 'oral, injection, solution';\
\
select mi.genericName from medicationInfo mi join relatedInformation ri on mi.medicationID=ri.medicationID where ri.yearOfApproval = 1972 and ri.prescriptionQuantity > 10000000;
\f0\b \

\f1\b0 \
select medicationClass, count(medicationClass) as count from medicationUseInfo group by medicationClass having count(medicationClass) >2;
\f0\b \

\f1\b0 \
select mi.genericName, mi.brandName, se.upperBody, se.lowerBody from medicationInfo mi join sideEffects se on mi.medicationID=se.medicationID join\
 relatedInformation ri on se.medicationID=ri.medicationID group by mi.medicationID order by ri.prescriptionQuantity desc\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b \cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f1\b0 \cf0 Select genericName, brandName from medicationInfo order by genericName asc;\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b \cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f1\b0 \cf0 select * from hbpMedication;\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b \cf0 \
\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f1\b0 \cf0 CREATE VIEW hbpMedication AS\
select mi.genericName, mi.brandName from medicationInfo mi join medicationUseInfo mui\
on mi.medicationID=mui.medicationID where mui.medicationClass like 'Antihypertensive'\
}