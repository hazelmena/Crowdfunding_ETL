-- drop tables if exist
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;
-- creating the new tables
CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(45)   NOT NULL,
    "last_name" VARCHAR(45)   NOT NULL,
    "email" VARCHAR(60)   NOT NULL,
    PRIMARY KEY (contact_id)
    );
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(35)   NOT NULL,
    "subcategory" VARCHAR(35)   NOT NULL,
	primary key (subcategory_id)
);
CREATE TABLE "category" (
    "category_id" VARCHAR(35)   NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
	primary key (category_id)
);
CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "description" VARCHAR(100)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(100)   NOT NULL,
    "backers_count" VARCHAR(100)   NOT NULL,
    "country" VARCHAR(50)   NOT NULL,
    "currency" VARCHAR(50)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(35)   NOT NULL,
    "subcategory_id" VARCHAR(35)   NOT NULL,
		primary key (cf_id),
		foreign key (contact_id) references contacts(contact_id),
		foreign key (category_id) references category(category_id),
		foreign key (subcategory_id) references subcategory(subcategory_id)
);


SELECT * FROM contacts
SELECT * FROM subcategory
SELECT * FROM category
SELECT * FROM campaign

