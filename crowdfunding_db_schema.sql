 DROP TABLE IF EXISTS campaign;
 DROP TABLE IF EXISTS category;
 DROP TABLE IF EXISTS contacts;
 DROP TABLE IF EXISTS subcategory;


CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "curency" VARCHAR   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR  NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" VARCHAR(20)   NOT NULL,
    "category" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(20)   NOT NULL,
    "subcategory" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

ALTER TABLE "campaign" DROP CONSTRAINT IF EXISTS "fk_campaign_contact_id";
ALTER TABLE "campaign" DROP CONSTRAINT IF EXISTS "fk_campaign_category_id";
ALTER TABLE "campaign" DROP CONSTRAINT IF EXISTS "fk_campaign_subcategory_id";

ALTER TABLE "campaign" DROP CONSTRAINT IF EXISTS "pk_campaign";
ALTER TABLE "category" DROP CONSTRAINT IF EXISTS "pk_category";
ALTER TABLE "contacts" DROP CONSTRAINT IF EXISTS "pk_contacts";
ALTER TABLE "subcategory" DROP CONSTRAINT IF EXISTS "pk_subcategory";




SELECT * FROM campaign
SELECT * FROM category
SELECT * FROM contacts
SELECT * FROM subcategory


ALTER TABLE "campaign" ADD CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id");
ALTER TABLE "category" ADD CONSTRAINT "pk_category" PRIMARY KEY ("category_id");
ALTER TABLE "contacts" ADD CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id");
ALTER TABLE "subcategory" ADD CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id");

