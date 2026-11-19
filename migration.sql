CREATE TABLE "student_reviews" (
	"id" uuid PRIMARY KEY,
	"name" varchar(120) NOT NULL,
	"grade" varchar(250) NOT NULL,
	"rating" integer NOT NULL,
	"message" text NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "student_reviews_rating_range" CHECK ("rating" between 1 and 5),
	CONSTRAINT "student_reviews_message_length" CHECK (char_length("message") between 1 and 3000)
);
