TutorDB Project!!
Terraform "compiles" all files into a terraform runtime component, and then this is used in the pipeline when deploying to AWS. Correct me if I'm wrong.
// Correction:

File usage:
- Tables
    = holds create and alter table commands (including creates with constraints).
    = multiple files, corresponding to each table in the ERD. 
    = will be added to terraform before deployment.

- Functions
    = holds useful user defined functions (UDFs), as well as stored procedures for bulk inserts or updates.
    = would recommend separating table-specific functions from JOINS and the like.
    = should be able to be accessed by an IAM user when interacting with the DB.


