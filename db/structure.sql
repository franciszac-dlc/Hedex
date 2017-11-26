SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: data_records; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE data_records (
    id bigint NOT NULL,
    institution_id bigint,
    release_date date,
    acadyr_termno character varying,
    stud_count integer,
    enrolled integer,
    graduated integer,
    cost_per_stud double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: data_records_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE data_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE data_records_id_seq OWNED BY data_records.id;


--
-- Name: faculty_headcounts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE faculty_headcounts (
    id bigint NOT NULL,
    institution_id bigint,
    release_date date,
    acadyr_termno character varying,
    bacc integer,
    ms_ma integer,
    phd integer,
    maintainer character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: faculty_headcounts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE faculty_headcounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: faculty_headcounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE faculty_headcounts_id_seq OWNED BY faculty_headcounts.id;


--
-- Name: inst_contacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE inst_contacts (
    id bigint NOT NULL,
    institution_id bigint,
    contact_num character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: inst_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE inst_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: inst_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE inst_contacts_id_seq OWNED BY inst_contacts.id;


--
-- Name: institutions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE institutions (
    id bigint NOT NULL,
    name character varying,
    inst_class character varying,
    address_province character varying,
    address_municipality character varying,
    address_street_no character varying,
    cong_distr_num character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    region_id bigint
);


--
-- Name: institutions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE institutions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE institutions_id_seq OWNED BY institutions.id;


--
-- Name: institutions_tesda_courses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE institutions_tesda_courses (
    id bigint NOT NULL,
    institution_id bigint,
    tesda_course_id bigint
);


--
-- Name: institutions_tesda_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE institutions_tesda_courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: institutions_tesda_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE institutions_tesda_courses_id_seq OWNED BY institutions_tesda_courses.id;


--
-- Name: principals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE principals (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    p_name character varying
);


--
-- Name: principals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE principals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: principals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE principals_id_seq OWNED BY principals.id;


--
-- Name: regional_data_records; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE regional_data_records (
    id bigint NOT NULL,
    region_id bigint,
    release_date date,
    acadyr integer,
    cost_per_stud double precision,
    private_nonsec integer,
    private_sec integer,
    "special_HEI" integer,
    other_govt_schools integer,
    ched_supervised_institution integer,
    local_colleges_and_uni integer,
    "SUCs_main" character varying,
    "SUCs_sat" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: regional_data_records_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE regional_data_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: regional_data_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE regional_data_records_id_seq OWNED BY regional_data_records.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE regions (
    id bigint NOT NULL,
    region_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE regions_id_seq OWNED BY regions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sections (
    id bigint NOT NULL,
    name character varying,
    head_count integer,
    year integer,
    grade_level integer,
    institution_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    principal_id bigint
);


--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE sections_id_seq OWNED BY sections.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE teachers (
    id bigint NOT NULL,
    t_fname character varying,
    t_mname character varying,
    t_lname character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    principal_id bigint
);


--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE teachers_id_seq OWNED BY teachers.id;


--
-- Name: teachers_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE teachers_sections (
    id bigint NOT NULL,
    teacher_id bigint,
    section_id bigint
);


--
-- Name: teachers_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE teachers_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teachers_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE teachers_sections_id_seq OWNED BY teachers_sections.id;


--
-- Name: teachers_tesda_courses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE teachers_tesda_courses (
    id bigint NOT NULL,
    teacher_id bigint,
    tesda_course_id bigint
);


--
-- Name: teachers_tesda_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE teachers_tesda_courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teachers_tesda_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE teachers_tesda_courses_id_seq OWNED BY teachers_tesda_courses.id;


--
-- Name: tesda_course_sectors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tesda_course_sectors (
    id bigint NOT NULL,
    tcs_name character varying,
    tcs_desc character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: tesda_course_sectors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tesda_course_sectors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tesda_course_sectors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tesda_course_sectors_id_seq OWNED BY tesda_course_sectors.id;


--
-- Name: tesda_courses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tesda_courses (
    id bigint NOT NULL,
    tc_name character varying,
    tc_hrs_dur integer,
    tesda_course_sector_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: tesda_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tesda_courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tesda_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tesda_courses_id_seq OWNED BY tesda_courses.id;


--
-- Name: tuitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE tuitions (
    id bigint NOT NULL,
    institution_id bigint,
    release_date date,
    acadyr_termno character varying,
    bacc double precision,
    ms_ma double precision,
    phd double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: tuitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tuitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tuitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tuitions_id_seq OWNED BY tuitions.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_records ALTER COLUMN id SET DEFAULT nextval('data_records_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY faculty_headcounts ALTER COLUMN id SET DEFAULT nextval('faculty_headcounts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY inst_contacts ALTER COLUMN id SET DEFAULT nextval('inst_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY institutions ALTER COLUMN id SET DEFAULT nextval('institutions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY institutions_tesda_courses ALTER COLUMN id SET DEFAULT nextval('institutions_tesda_courses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY principals ALTER COLUMN id SET DEFAULT nextval('principals_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY regional_data_records ALTER COLUMN id SET DEFAULT nextval('regional_data_records_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY regions ALTER COLUMN id SET DEFAULT nextval('regions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY sections ALTER COLUMN id SET DEFAULT nextval('sections_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY teachers ALTER COLUMN id SET DEFAULT nextval('teachers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY teachers_sections ALTER COLUMN id SET DEFAULT nextval('teachers_sections_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY teachers_tesda_courses ALTER COLUMN id SET DEFAULT nextval('teachers_tesda_courses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tesda_course_sectors ALTER COLUMN id SET DEFAULT nextval('tesda_course_sectors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tesda_courses ALTER COLUMN id SET DEFAULT nextval('tesda_courses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuitions ALTER COLUMN id SET DEFAULT nextval('tuitions_id_seq'::regclass);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: data_records_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_records
    ADD CONSTRAINT data_records_pkey PRIMARY KEY (id);


--
-- Name: faculty_headcounts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY faculty_headcounts
    ADD CONSTRAINT faculty_headcounts_pkey PRIMARY KEY (id);


--
-- Name: inst_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY inst_contacts
    ADD CONSTRAINT inst_contacts_pkey PRIMARY KEY (id);


--
-- Name: institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (id);


--
-- Name: institutions_tesda_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY institutions_tesda_courses
    ADD CONSTRAINT institutions_tesda_courses_pkey PRIMARY KEY (id);


--
-- Name: principals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY principals
    ADD CONSTRAINT principals_pkey PRIMARY KEY (id);


--
-- Name: regional_data_records_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY regional_data_records
    ADD CONSTRAINT regional_data_records_pkey PRIMARY KEY (id);


--
-- Name: regions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- Name: teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- Name: teachers_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY teachers_sections
    ADD CONSTRAINT teachers_sections_pkey PRIMARY KEY (id);


--
-- Name: teachers_tesda_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY teachers_tesda_courses
    ADD CONSTRAINT teachers_tesda_courses_pkey PRIMARY KEY (id);


--
-- Name: tesda_course_sectors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tesda_course_sectors
    ADD CONSTRAINT tesda_course_sectors_pkey PRIMARY KEY (id);


--
-- Name: tesda_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tesda_courses
    ADD CONSTRAINT tesda_courses_pkey PRIMARY KEY (id);


--
-- Name: tuitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuitions
    ADD CONSTRAINT tuitions_pkey PRIMARY KEY (id);


--
-- Name: index_data_records_on_institution_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_data_records_on_institution_id ON data_records USING btree (institution_id);


--
-- Name: index_faculty_headcounts_on_institution_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_faculty_headcounts_on_institution_id ON faculty_headcounts USING btree (institution_id);


--
-- Name: index_inst_contacts_on_institution_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_inst_contacts_on_institution_id ON inst_contacts USING btree (institution_id);


--
-- Name: index_institutions_on_region_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_institutions_on_region_id ON institutions USING btree (region_id);


--
-- Name: index_institutions_tesda_courses_on_institution_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_institutions_tesda_courses_on_institution_id ON institutions_tesda_courses USING btree (institution_id);


--
-- Name: index_institutions_tesda_courses_on_tesda_course_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_institutions_tesda_courses_on_tesda_course_id ON institutions_tesda_courses USING btree (tesda_course_id);


--
-- Name: index_principals_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_principals_on_email ON principals USING btree (email);


--
-- Name: index_principals_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_principals_on_reset_password_token ON principals USING btree (reset_password_token);


--
-- Name: index_regional_data_records_on_region_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_regional_data_records_on_region_id ON regional_data_records USING btree (region_id);


--
-- Name: index_sections_on_institution_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sections_on_institution_id ON sections USING btree (institution_id);


--
-- Name: index_sections_on_principal_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_sections_on_principal_id ON sections USING btree (principal_id);


--
-- Name: index_teachers_on_principal_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_teachers_on_principal_id ON teachers USING btree (principal_id);


--
-- Name: index_teachers_sections_on_section_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_teachers_sections_on_section_id ON teachers_sections USING btree (section_id);


--
-- Name: index_teachers_sections_on_teacher_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_teachers_sections_on_teacher_id ON teachers_sections USING btree (teacher_id);


--
-- Name: index_teachers_tesda_courses_on_teacher_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_teachers_tesda_courses_on_teacher_id ON teachers_tesda_courses USING btree (teacher_id);


--
-- Name: index_teachers_tesda_courses_on_tesda_course_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_teachers_tesda_courses_on_tesda_course_id ON teachers_tesda_courses USING btree (tesda_course_id);


--
-- Name: index_tesda_courses_on_tesda_course_sector_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_tesda_courses_on_tesda_course_sector_id ON tesda_courses USING btree (tesda_course_sector_id);


--
-- Name: index_tuitions_on_institution_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_tuitions_on_institution_id ON tuitions USING btree (institution_id);


--
-- Name: fk_rails_29fc44b24d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY teachers
    ADD CONSTRAINT fk_rails_29fc44b24d FOREIGN KEY (principal_id) REFERENCES principals(id);


--
-- Name: fk_rails_2b9c7de3dc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY institutions
    ADD CONSTRAINT fk_rails_2b9c7de3dc FOREIGN KEY (region_id) REFERENCES regions(id);


--
-- Name: fk_rails_3cef3c8533; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sections
    ADD CONSTRAINT fk_rails_3cef3c8533 FOREIGN KEY (principal_id) REFERENCES principals(id);


--
-- Name: fk_rails_7a7057fef3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sections
    ADD CONSTRAINT fk_rails_7a7057fef3 FOREIGN KEY (institution_id) REFERENCES institutions(id);


--
-- Name: fk_rails_7e7b7547c4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tesda_courses
    ADD CONSTRAINT fk_rails_7e7b7547c4 FOREIGN KEY (tesda_course_sector_id) REFERENCES tesda_course_sectors(id);


--
-- Name: fk_rails_89948c7d86; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY regional_data_records
    ADD CONSTRAINT fk_rails_89948c7d86 FOREIGN KEY (region_id) REFERENCES regions(id);


--
-- Name: fk_rails_9ebfe2da9d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY tuitions
    ADD CONSTRAINT fk_rails_9ebfe2da9d FOREIGN KEY (institution_id) REFERENCES institutions(id);


--
-- Name: fk_rails_b500717088; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY faculty_headcounts
    ADD CONSTRAINT fk_rails_b500717088 FOREIGN KEY (institution_id) REFERENCES institutions(id);


--
-- Name: fk_rails_de6b2ff135; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY inst_contacts
    ADD CONSTRAINT fk_rails_de6b2ff135 FOREIGN KEY (institution_id) REFERENCES institutions(id);


--
-- Name: fk_rails_e2bd3aa1e4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY data_records
    ADD CONSTRAINT fk_rails_e2bd3aa1e4 FOREIGN KEY (institution_id) REFERENCES institutions(id);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20171113040815'),
('20171113044559'),
('20171113062102'),
('20171113064043'),
('20171113065345'),
('20171113073437'),
('20171113074606'),
('20171113080228'),
('20171113085710'),
('20171113091042'),
('20171113095442'),
('20171113095447'),
('20171113095452'),
('20171113095457'),
('20171113145853'),
('20171113145929'),
('20171113145938'),
('20171113145951'),
('20171113150001'),
('20171113152412'),
('20171113152450'),
('20171116084720'),
('20171116093204'),
('20171116110313'),
('20171116110408'),
('20171116131422'),
('20171116131619');


