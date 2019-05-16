CREATE TABLE public.profiles (
    id integer NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.profile_id_seq OWNED BY public.profiles.id;
ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profile_id_seq'::regclass);
ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);
