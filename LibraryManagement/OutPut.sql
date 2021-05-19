
---To add s Student--
   exec USP_Student_Insert 6,'Karna',4
   --To view Students
   select * from  dbo.FN_Student_StudentDetails()

---To add a Book--
   exec USP_Book_Insert 4,'Aasman',2
   --To View Books
   select * from  dbo.FN_Book_BookDetails()

---To assign a Book  to Student---
   exec USP_BookAssign_Insert 6,4
   --To view Assign details
   select * from  dbo.FN_BookAssign_BookAssignDetails()

---return Book from student---
   exec USP_BookAssign_BookReturn 1,1

---To see the history of the Library---
   select * from dbo.FN_LibraryHistory()







select * from LibraryHistory
select * from Student
select * from Book
select * from BookAssign