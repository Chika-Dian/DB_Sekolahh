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

