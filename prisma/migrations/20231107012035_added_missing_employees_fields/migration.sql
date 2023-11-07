/*
  Warnings:

  - The primary key for the `Employee` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `employeeID` on the `Employee` table. All the data in the column will be lost.
  - The required column `employeeId` was added to the `Employee` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `title` to the `Employee` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Employee" DROP CONSTRAINT "Employee_pkey",
DROP COLUMN "employeeID",
ADD COLUMN     "employeeId" TEXT NOT NULL,
ADD COLUMN     "quote" TEXT,
ADD COLUMN     "title" TEXT NOT NULL,
ADD CONSTRAINT "Employee_pkey" PRIMARY KEY ("employeeId");
