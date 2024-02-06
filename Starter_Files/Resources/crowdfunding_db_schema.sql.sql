﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/r7Wap1
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" text   NOT NULL,
    "description" text   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" text   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" text   NOT NULL,
    "currency" text   NOT NULL,
    "launch_date" timestamp   NOT NULL,
    "end_date" timestamp   NOT NULL,
    "category_id" text   NOT NULL,
    "subcategory_id" text   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" text   NOT NULL,
    "category" text   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" text   NOT NULL,
    "subcategory" text   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "email" text   NOT NULL
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign" ("subcategory_id");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

