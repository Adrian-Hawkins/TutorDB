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


# Setting Up AWS RDS Database with Terraform

## Prerequisites
- Ensure you have an [AWS account](https://aws.amazon.com/free/?gclid=EAIaIQobChMIwta8qsCohAMVDpJQBh3amgXUEAAYASAAEgIwnfD_BwE&trk=99f831a2-d162-429a-9a77-a89f6b3bd6cd&sc_channel=ps&ef_id=EAIaIQobChMIwta8qsCohAMVDpJQBh3amgXUEAAYASAAEgIwnfD_BwE:G:s&s_kwcid=AL!4422!3!645125273279!e!!g!!aws%20sign%20up!19574556890!145779847592&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all)
.
- Install [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) on your local machine.
- Install [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)(optional) and [SQL Server command-line tools (sqlcmd)](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility?view=sql-server-ver16&tabs=go%2Clinux&pivots=cs1-bash) for SQL Server management.

## Terraform Configuration

### provider.tf
```hcl
provider "aws" {
  region     = "eu-west-1"
  access_key = "<YOUR_ACCESS_KEY>"
  secret_key = "<YOUR_SECRET_KEY>"
}
```

### rds.tf
```hcl
resource "aws_db_instance" "tutordb" {
  identifier             = "tutordb"
  engine                 = "sqlserver-ex"
  engine_version         = "14.00.3465.1.v1"
  instance_class         = "db.t2.micro"
  allocated_storage      = 20
  storage_type           = "gp2"
  publicly_accessible    = true
  username               = "admin"
  password               = "<YOUR_PASSWORD>"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.allow_mssql.id]
  provisioner "local-exec" {
    command = <<-EOT
      sqlcmd -S ${self.endpoint} -U ${self.username} -P '${self.password}' -Q "CREATE DATABASE root;";
    EOT
  }
  tags = {
    created-using = "terraform"
  }

}
```

### Commands

```
terraform init
terraform apply -auto-approve
```

### Delete Database

```
terraform destroy -auot-approve
```

## Additional Documentation

### Confluence
There are several [Confluence Docs](https://bbdtutordb.atlassian.net/wiki/home) for better understanding of certain aspects of the database such as:
- [Tables and descriptions](https://bbdtutordb.atlassian.net/wiki/spaces/~712020da9ccb423bff49dcb50d6c8447b3889c/pages/2555905/Tables+and+descriptions) for an indepth analysis of all the tables and fields
- [Features: functions, views, triggers, seeds](https://bbdtutordb.atlassian.net/wiki/spaces/~712020da9ccb423bff49dcb50d6c8447b3889c/pages/2686986/Features+functions+views+triggers+seeds) for details of the various non-tabular aspects of the database
- [How to make the DB](https://bbdtutordb.atlassian.net/wiki/spaces/~712020da9ccb423bff49dcb50d6c8447b3889c/pages/1277953/How+to+make+the+DB) for a detailed explanation on the installation process

### dbdiagram
- [Database ERD](https://dbdiagram.io/d/TutorDB-65c3cc9cac844320aead7239)
