select * from sys.symmetric_keys

select * from customers

alter table customers add acc_number char(25)

--the system cannot find the path specified.
backup database faradars to disk='D:\Pouya\SQL_Tutorial_My_Files\FaraDars\FD.dat'

create master key encryption by password = 'password123@321'

create certificate my_cerificate with subject='protect data'

alter table customers aDD enc_acc_number nvarchar(max) null
/*
update customers set 
acc_number = '1112-1213-1314'
*/
create symmetric key my_symmetrickey with algorithm=aes_128 encryption by certificate my_cerificate



--if we already have key start from here
open symmetric key my_symmetrickey decryption by certificate my_cerificate

--now showing b
update customers set enc_acc_number=ENCRYPTBYKEY(KEY_GUID('my_symmetrickey'),acc_number)

select * from customers

close symmetric key my_symmetrickey

open symmetric key my_symmetrickey decryption by certificate my_cerificate

select acc_number,enc_acc_number,convert(varchar,DECRYPTBYKEY(enc_acc_number)) as decrypted_acc_number from customers

alter table customers drop column acc_number

select * from customers

select enc_acc_number,convert(varchar,DECRYPTBYKEY(enc_acc_number)) as decrypted_acc_number from customers




