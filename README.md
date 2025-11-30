# Room Planner Database

Database configuration and management for the **Room Planner** application, using MariaDB and Flyway.

## Tech Stack

- **Engine:** MariaDB (via Docker)
- **Migration Tool:** [Flyway](https://flywaydb.org/)

## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Flyway CLI](https://flywaydb.org/documentation/usage/commandline/)

## Getting Started

### 1. Start the Database

Launch the MariaDB container in the background. The database (`room-planner`) will be exposed on port `3306`.

```bash
docker-compose up -d
```

### 2. Apply Schema (Migrate)

Run the versioned SQL scripts located in the `sql/` folder to set up tables and schema. Configuration is handled via `flyway.conf`.

```bash
flyway migrate
```

**That's it!** The database is now ready and up-to-date.

---

## Useful Commands

| Command               | Description                                                         |
| :-------------------- | :------------------------------------------------------------------ |
| `docker-compose down` | Stop and remove the database container.                             |
| `flyway info`         | Check the status of applied and pending migrations.                 |
| `flyway clean`        | **Destructive:** Drops all objects (tables, views) from the schema. |

```

```
