 siswa (
	id serial primary key,
	nama varchar(50) not null,
	umur int,
	jurusan varchar(50)
);
select * from siswa;

-- membuat tabel nilai
create table nilai (
	id serial primary key,
	id_siswa serial4 not null,
	mata_pelajaran varchar(50),

	nilai int,
	foreign key (id_siswa) references siswa(id)
);
select * from nilai;

-- mengisi value dari tabel siswa
insert into siswa (nama, umur, jurusan)
values 
('Andi', 15, 'IPA'),
('Budi', 16, 'IPS'),
('Dika', 16, 'IPA'),
('Dian', 17, 'IPS'),
('Chika', 18, 'TKJ'),
('Ian', 19, 'Multimedia'),
('Brilian', 19, 'Multimedia'),
('Yani', 19, 'Multimedia');
select * from siswa;

-- mengisi value dari tabel nilai
insert into nilai (id_siswa, mata_pelajaran, nilai)
values
(1, 'Matematika', 85),
(1, 'Matematika Peminatan', 80),
(2, 'Bahasa Inggris', 90),
(2, 'Sejarah', 90),
(3, 'TIK', 85),
(4, 'IPA', 70),
(5, 'Pemrograman', 75),
(5, 'Jaringan', 70),
(6, 'Bahasa Indonesia', 80),
(7, 'Manajemen', 100),
(8, 'Bahasa Mandarin', 60);
select * from nilai;




-- ini untuk menghitung nilai rata-rata pada masing-masing siswa
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.id_siswa
GROUP BY siswa.nama;

-- update pada tabel nilai kolom mata_pelajaran value Manajemen
-- menjadi value Kearsipan
UPDATE nilai
SET mata_pelajaran = 'Bahasa Jerman'
WHERE mata_pelajaran = 'Bahasa Mandarin';
-- menampilkan hasil dari update
select * from nilai;

-- menghapus value=Kearsipan dari kolom mata_pelajaran pada tabel nilai
delete from nilai
where mata_pelajaran = 'Bahasa Jerman';
-- menampilkan hasil dari delete
select * from nilai;

-- menghapus semua record di tabel
truncate table nilai;
-- menghapus semua record di tabel tetapi pada nmr id memulai dari awal/mulai dari angka 1 kembali
truncate table nilai restart identity;
-- menghapus database
drop database sekolah;

