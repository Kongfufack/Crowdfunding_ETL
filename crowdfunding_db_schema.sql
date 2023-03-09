-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "Cf_id" varchar(225)   NOT NULL,
    "Contact_id" int   NOT NULL,
    "Compant_name" varchar(225)   NOT NULL,
    "Description" varchar(225)   NOT NULL,
    "Goal" varchar(225)   NOT NULL,
    "Pledges" varchar(225)   NOT NULL,
    "Outcome" varchar(225)   NOT NULL,
    "Backers_count" varchar(225)   NOT NULL,
    "Country" varchar(225)   NOT NULL,
    "Currency" varchar(225)   NOT NULL,
    "Launched_data" date   NOT NULL,
    "End_data" date   NOT NULL,
    "Category_id" varchar(225)   NOT NULL,
    "Subcategory_id" varchar(225)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "Cf_id"
     )
);

CREATE TABLE "category" (
    "Category_id" varchar(225)   NOT NULL,
    "category" varchar(225)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "Category_id"
     )
);

CREATE TABLE "subcategory" (
    "Subcategory_id" varchar(225)   NOT NULL,
    "Subcategory" varchar(225)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "Subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "Contact_id" int   NOT NULL,
    "First_name" varchar(50)   NOT NULL,
    "Last_name" varchar(50)   NOT NULL,
    "Email" varchar(225)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "Contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_Contact_id" FOREIGN KEY("Contact_id")
REFERENCES "contacts" ("Contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_Category_id" FOREIGN KEY("Category_id")
REFERENCES "category" ("Category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_Subcategory_id" FOREIGN KEY("Subcategory_id")
REFERENCES "subcategory" ("Subcategory_id");

SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
