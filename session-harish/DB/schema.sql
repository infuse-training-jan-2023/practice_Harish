CREATE TABLE "users" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "phone" TEXT NOT NULL
);

CREATE TABLE "items"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "item" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "reminder" BOOLEAN
);


