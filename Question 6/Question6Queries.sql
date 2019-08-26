/* Query A */
select *
from `patient_registration`
where registration_date > 20020720 and registration_date < 20080820;

/* Query B */
update `patient_registration`
set `name` = "Ram"
where registration_number = "PT011";

/* Query C */
select `name`, `results`
from `tests`, `patient_registration`
where `date` = 20080720
and patient_reg_number = registration_number;

/* Query D */
select count(registration_number)
from patient_registration, doctors
where `doctors`.`name` = "ABC"
and `doctors`.`id` = `patient_registration`.`referral_doctor`;

/* Query E */
select *
from patient_registration, doctors
where `doctors`.`id` = `patient_registration`.`referral_doctor`;

/* Query F */
update `beds`, `patient_registration`
set `beds`.bed_number = 456
where registration_number = "PT023"
and `patient_registration`.`bed_number` = `beds`.`bed_number`;

/* Query  G */
update `beds`
set `beds`.`status` = "not allotted"
where `beds`.`bed_number` = 123;

/*Query H */
select *
from `beds`
where `status` = "not allotted"
and `ward_number` = 10;

/* Query I */
select distinct `patient_registration`.`name`
from `beds`, `doctors`, `patient_registration`
where `patient_registration`.`gender` = "male"
and `patient_registration`.`referral_doctor` = `doctors`.`id`
and `doctors`.`name` = "XYZ"
and `beds`.`ward_number` = 13;

/* Query J */
select *
from `patient_registration`, `doctors`
where `age` > 50
and `patient_registration`.`referral_doctor` = `doctors`.`id`
and `doctors`.`name` like "%das%";
