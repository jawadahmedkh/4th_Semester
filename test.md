```mermaid
erDiagram
    DEPARTMENT {
        INT Dep_ID PK
        STRING Dep_name
        STRING HOD
    }
    COURSE {
        INT Course_ID PK
        STRING Course_Name
    }
    INSTRUCTOR {
        INT Inst_ID PK
        STRING Inst_name
    }
    STUDENT {
        INT Roll_No PK
        STRING Name
        STRING Email
    }

    DEPARTMENT ||--o{ COURSE : offers
    COURSE }o--|| STUDENT : enrolled_in
    COURSE }o--o{ INSTRUCTOR : taught_by

```