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

