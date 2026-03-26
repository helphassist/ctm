-- CreateEnum
CREATE TYPE "TaskStatus" AS ENUM ('AGENDADO', 'ENVIADO', 'ERRO');

-- CreateTable
CREATE TABLE "tasks" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "message" TEXT NOT NULL,
    "event_datetime" TIMESTAMP(3) NOT NULL,
    "notify_before_minutes" INTEGER NOT NULL,
    "send_datetime" TIMESTAMP(3) NOT NULL,
    "status" "TaskStatus" NOT NULL DEFAULT 'AGENDADO',
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "sent_at" TIMESTAMP(3),
    "error_message" TEXT,

    CONSTRAINT "tasks_pkey" PRIMARY KEY ("id")
);
