PGDMP         3                z         	   LIDcodeDB    14.3    14.3 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    30980 	   LIDcodeDB    DATABASE     h   CREATE DATABASE "LIDcodeDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "LIDcodeDB";
                LIDcode    false                        3079    17547    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                   false            C           0    0    EXTENSION citext    COMMENT     S   COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';
                        false    2            ?            1259    31007 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    LIDcode    false            ?            1259    31006    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          LIDcode    false    217            D           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          LIDcode    false    216            ?            1259    31016    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    LIDcode    false            ?            1259    31015    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          LIDcode    false    219            E           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          LIDcode    false    218            ?            1259    31000    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    LIDcode    false            ?            1259    30999    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          LIDcode    false    215            F           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          LIDcode    false    214            ?            1259    31023 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    LIDcode    false            ?            1259    31032    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    LIDcode    false            ?            1259    31031    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          LIDcode    false    223            G           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          LIDcode    false    222            ?            1259    31022    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          LIDcode    false    221            H           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          LIDcode    false    220            ?            1259    31039    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    LIDcode    false            ?            1259    31038 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          LIDcode    false    225            I           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          LIDcode    false    224            ?            1259    31098    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    LIDcode    false            ?            1259    31097    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          LIDcode    false    227            J           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          LIDcode    false    226            ?            1259    30991    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    LIDcode    false            ?            1259    30990    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          LIDcode    false    213            K           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          LIDcode    false    212            ?            1259    30982    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    LIDcode    false            ?            1259    30981    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          LIDcode    false    211            L           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          LIDcode    false    210            ?            1259    31276    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    LIDcode    false            ?            1259    31128    event    TABLE     _  CREATE TABLE public.event (
    id bigint NOT NULL,
    name public.citext NOT NULL,
    status public.citext NOT NULL,
    description public.citext,
    numberofparticipants integer NOT NULL,
    "numberComands" integer NOT NULL,
    regulations public.citext NOT NULL,
    "timeNow" timestamp with time zone NOT NULL,
    results public.citext,
    materials public.citext,
    image character varying(100) NOT NULL,
    date_register timestamp with time zone,
    "date_closeRegister" timestamp with time zone,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    "additionalMaterial" public.citext,
    "timePublicationAdditionalMaterial" timestamp with time zone,
    CONSTRAINT "event_numberComands_check" CHECK (("numberComands" >= 0)),
    CONSTRAINT event_numberofparticipants_check CHECK ((numberofparticipants >= 0))
);
    DROP TABLE public.event;
       public         heap    LIDcode    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            ?            1259    31127    event_id_seq    SEQUENCE     u   CREATE SEQUENCE public.event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.event_id_seq;
       public          LIDcode    false    229            M           0    0    event_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.event_id_seq OWNED BY public.event.id;
          public          LIDcode    false    228            ?            1259    31182    event_organizers    TABLE     ?   CREATE TABLE public.event_organizers (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    organizers_id bigint NOT NULL
);
 $   DROP TABLE public.event_organizers;
       public         heap    LIDcode    false            ?            1259    31181    event_organizers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.event_organizers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.event_organizers_id_seq;
       public          LIDcode    false    241            N           0    0    event_organizers_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.event_organizers_id_seq OWNED BY public.event_organizers.id;
          public          LIDcode    false    240            ?            1259    31189    event_participants    TABLE     ~   CREATE TABLE public.event_participants (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    team_id bigint NOT NULL
);
 &   DROP TABLE public.event_participants;
       public         heap    LIDcode    false            ?            1259    31188    event_participants_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.event_participants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.event_participants_id_seq;
       public          LIDcode    false    243            O           0    0    event_participants_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.event_participants_id_seq OWNED BY public.event_participants.id;
          public          LIDcode    false    242            ?            1259    31196    event_sponsors    TABLE     ~   CREATE TABLE public.event_sponsors (
    id bigint NOT NULL,
    event_id bigint NOT NULL,
    sponsors_id bigint NOT NULL
);
 "   DROP TABLE public.event_sponsors;
       public         heap    LIDcode    false            ?            1259    31195    event_sponsors_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.event_sponsors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.event_sponsors_id_seq;
       public          LIDcode    false    245            P           0    0    event_sponsors_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.event_sponsors_id_seq OWNED BY public.event_sponsors.id;
          public          LIDcode    false    244            ?            1259    31139 
   organizers    TABLE     ?   CREATE TABLE public.organizers (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    name public.citext NOT NULL,
    link public.citext NOT NULL
);
    DROP TABLE public.organizers;
       public         heap    LIDcode    false    2    2    2    2    2    2    2    2    2    2            ?            1259    31138    organizers_id_seq    SEQUENCE     z   CREATE SEQUENCE public.organizers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.organizers_id_seq;
       public          LIDcode    false    231            Q           0    0    organizers_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.organizers_id_seq OWNED BY public.organizers.id;
          public          LIDcode    false    230            ?            1259    31148    participant    TABLE     \  CREATE TABLE public.participant (
    id bigint NOT NULL,
    name public.citext NOT NULL,
    emailadress character varying(254) NOT NULL,
    phonenumber public.citext NOT NULL,
    organization public.citext NOT NULL,
    university_faculty public.citext,
    university_course public.citext,
    iscoach boolean,
    "iscontactFace" boolean
);
    DROP TABLE public.participant;
       public         heap    LIDcode    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            ?            1259    31147    participant_id_seq    SEQUENCE     {   CREATE SEQUENCE public.participant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.participant_id_seq;
       public          LIDcode    false    233            R           0    0    participant_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.participant_id_seq OWNED BY public.participant.id;
          public          LIDcode    false    232            ?            1259    31157    sponsors    TABLE     ?   CREATE TABLE public.sponsors (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    name public.citext NOT NULL,
    link public.citext NOT NULL
);
    DROP TABLE public.sponsors;
       public         heap    LIDcode    false    2    2    2    2    2    2    2    2    2    2            ?            1259    31156    sponsors_id_seq    SEQUENCE     x   CREATE SEQUENCE public.sponsors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sponsors_id_seq;
       public          LIDcode    false    235            S           0    0    sponsors_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sponsors_id_seq OWNED BY public.sponsors.id;
          public          LIDcode    false    234            ?            1259    31166    team    TABLE     ?   CREATE TABLE public.team (
    id bigint NOT NULL,
    name public.citext NOT NULL,
    approvement public.citext NOT NULL,
    coach_id bigint NOT NULL,
    "contactPerson_id" bigint NOT NULL,
    my_event_id bigint NOT NULL
);
    DROP TABLE public.team;
       public         heap    LIDcode    false    2    2    2    2    2    2    2    2    2    2            ?            1259    31165    team_id_seq    SEQUENCE     t   CREATE SEQUENCE public.team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.team_id_seq;
       public          LIDcode    false    237            T           0    0    team_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.team_id_seq OWNED BY public.team.id;
          public          LIDcode    false    236            ?            1259    31175    team_teamMembers    TABLE     ?   CREATE TABLE public."team_teamMembers" (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    participant_id bigint NOT NULL
);
 &   DROP TABLE public."team_teamMembers";
       public         heap    LIDcode    false            ?            1259    31174    team_teamMembers_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."team_teamMembers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."team_teamMembers_id_seq";
       public          LIDcode    false    239            U           0    0    team_teamMembers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."team_teamMembers_id_seq" OWNED BY public."team_teamMembers".id;
          public          LIDcode    false    238                       2604    31010    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    217    216    217                       2604    31019    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    219    218    219                       2604    31003    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    214    215    215                       2604    31026    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    220    221    221                       2604    31035    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    223    222    223                       2604    31042    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    224    225    225                       2604    31101    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    226    227    227                       2604    30994    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    213    212    213                       2604    30985    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    211    210    211                       2604    31131    event id    DEFAULT     d   ALTER TABLE ONLY public.event ALTER COLUMN id SET DEFAULT nextval('public.event_id_seq'::regclass);
 7   ALTER TABLE public.event ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    229    228    229            "           2604    31185    event_organizers id    DEFAULT     z   ALTER TABLE ONLY public.event_organizers ALTER COLUMN id SET DEFAULT nextval('public.event_organizers_id_seq'::regclass);
 B   ALTER TABLE public.event_organizers ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    241    240    241            #           2604    31192    event_participants id    DEFAULT     ~   ALTER TABLE ONLY public.event_participants ALTER COLUMN id SET DEFAULT nextval('public.event_participants_id_seq'::regclass);
 D   ALTER TABLE public.event_participants ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    242    243    243            $           2604    31199    event_sponsors id    DEFAULT     v   ALTER TABLE ONLY public.event_sponsors ALTER COLUMN id SET DEFAULT nextval('public.event_sponsors_id_seq'::regclass);
 @   ALTER TABLE public.event_sponsors ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    244    245    245                       2604    31142    organizers id    DEFAULT     n   ALTER TABLE ONLY public.organizers ALTER COLUMN id SET DEFAULT nextval('public.organizers_id_seq'::regclass);
 <   ALTER TABLE public.organizers ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    231    230    231                       2604    31151    participant id    DEFAULT     p   ALTER TABLE ONLY public.participant ALTER COLUMN id SET DEFAULT nextval('public.participant_id_seq'::regclass);
 =   ALTER TABLE public.participant ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    233    232    233                       2604    31160    sponsors id    DEFAULT     j   ALTER TABLE ONLY public.sponsors ALTER COLUMN id SET DEFAULT nextval('public.sponsors_id_seq'::regclass);
 :   ALTER TABLE public.sponsors ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    235    234    235                        2604    31169    team id    DEFAULT     b   ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public.team_id_seq'::regclass);
 6   ALTER TABLE public.team ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    237    236    237            !           2604    31178    team_teamMembers id    DEFAULT     ~   ALTER TABLE ONLY public."team_teamMembers" ALTER COLUMN id SET DEFAULT nextval('public."team_teamMembers_id_seq"'::regclass);
 D   ALTER TABLE public."team_teamMembers" ALTER COLUMN id DROP DEFAULT;
       public          LIDcode    false    238    239    239                      0    31007 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          LIDcode    false    217   *?       !          0    31016    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          LIDcode    false    219   G?                 0    31000    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          LIDcode    false    215   d?       #          0    31023 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          LIDcode    false    221   ??       %          0    31032    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          LIDcode    false    223   I?       '          0    31039    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          LIDcode    false    225   f?       )          0    31098    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          LIDcode    false    227   ??                 0    30991    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          LIDcode    false    213   ?                0    30982    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          LIDcode    false    211   ?      <          0    31276    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          LIDcode    false    246   ?      +          0    31128    event 
   TABLE DATA             COPY public.event (id, name, status, description, numberofparticipants, "numberComands", regulations, "timeNow", results, materials, image, date_register, "date_closeRegister", date_start, date_end, "additionalMaterial", "timePublicationAdditionalMaterial") FROM stdin;
    public          LIDcode    false    229   ?      7          0    31182    event_organizers 
   TABLE DATA           G   COPY public.event_organizers (id, event_id, organizers_id) FROM stdin;
    public          LIDcode    false    241   ?      9          0    31189    event_participants 
   TABLE DATA           C   COPY public.event_participants (id, event_id, team_id) FROM stdin;
    public          LIDcode    false    243   ?      ;          0    31196    event_sponsors 
   TABLE DATA           C   COPY public.event_sponsors (id, event_id, sponsors_id) FROM stdin;
    public          LIDcode    false    245   ?      -          0    31139 
   organizers 
   TABLE DATA           ;   COPY public.organizers (id, image, name, link) FROM stdin;
    public          LIDcode    false    231         /          0    31148    participant 
   TABLE DATA           ?   COPY public.participant (id, name, emailadress, phonenumber, organization, university_faculty, university_course, iscoach, "iscontactFace") FROM stdin;
    public          LIDcode    false    233          1          0    31157    sponsors 
   TABLE DATA           9   COPY public.sponsors (id, image, name, link) FROM stdin;
    public          LIDcode    false    235   ?      3          0    31166    team 
   TABLE DATA           `   COPY public.team (id, name, approvement, coach_id, "contactPerson_id", my_event_id) FROM stdin;
    public          LIDcode    false    237   ?      5          0    31175    team_teamMembers 
   TABLE DATA           I   COPY public."team_teamMembers" (id, team_id, participant_id) FROM stdin;
    public          LIDcode    false    239   ?      V           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          LIDcode    false    216            W           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          LIDcode    false    218            X           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          LIDcode    false    214            Y           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          LIDcode    false    222            Z           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          LIDcode    false    220            [           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          LIDcode    false    224            \           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 78, true);
          public          LIDcode    false    226            ]           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          LIDcode    false    212            ^           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          LIDcode    false    210            _           0    0    event_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.event_id_seq', 2, true);
          public          LIDcode    false    228            `           0    0    event_organizers_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.event_organizers_id_seq', 1, true);
          public          LIDcode    false    240            a           0    0    event_participants_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.event_participants_id_seq', 5, true);
          public          LIDcode    false    242            b           0    0    event_sponsors_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.event_sponsors_id_seq', 2, true);
          public          LIDcode    false    244            c           0    0    organizers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.organizers_id_seq', 3, true);
          public          LIDcode    false    230            d           0    0    participant_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.participant_id_seq', 54, true);
          public          LIDcode    false    232            e           0    0    sponsors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sponsors_id_seq', 5, true);
          public          LIDcode    false    234            f           0    0    team_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.team_id_seq', 24, true);
          public          LIDcode    false    236            g           0    0    team_teamMembers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."team_teamMembers_id_seq"', 33, true);
          public          LIDcode    false    238            2           2606    31125    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            LIDcode    false    217            7           2606    31055 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            LIDcode    false    219    219            :           2606    31021 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            LIDcode    false    219            4           2606    31012    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            LIDcode    false    217            -           2606    31046 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            LIDcode    false    215    215            /           2606    31005 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            LIDcode    false    215            B           2606    31037 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            LIDcode    false    223            E           2606    31070 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            LIDcode    false    223    223            <           2606    31028    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            LIDcode    false    221            H           2606    31044 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            LIDcode    false    225            K           2606    31084 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            LIDcode    false    225    225            ?           2606    31120     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            LIDcode    false    221            N           2606    31106 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            LIDcode    false    227            (           2606    30998 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            LIDcode    false    213    213            *           2606    30996 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            LIDcode    false    213            &           2606    30989 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            LIDcode    false    211            w           2606    31282 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            LIDcode    false    246            e           2606    31235 F   event_organizers event_organizers_event_id_organizers_id_6240f613_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.event_organizers
    ADD CONSTRAINT event_organizers_event_id_organizers_id_6240f613_uniq UNIQUE (event_id, organizers_id);
 p   ALTER TABLE ONLY public.event_organizers DROP CONSTRAINT event_organizers_event_id_organizers_id_6240f613_uniq;
       public            LIDcode    false    241    241            h           2606    31187 &   event_organizers event_organizers_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.event_organizers
    ADD CONSTRAINT event_organizers_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.event_organizers DROP CONSTRAINT event_organizers_pkey;
       public            LIDcode    false    241            k           2606    31249 D   event_participants event_participants_event_id_team_id_34b3dab6_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.event_participants
    ADD CONSTRAINT event_participants_event_id_team_id_34b3dab6_uniq UNIQUE (event_id, team_id);
 n   ALTER TABLE ONLY public.event_participants DROP CONSTRAINT event_participants_event_id_team_id_34b3dab6_uniq;
       public            LIDcode    false    243    243            m           2606    31194 *   event_participants event_participants_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.event_participants
    ADD CONSTRAINT event_participants_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.event_participants DROP CONSTRAINT event_participants_pkey;
       public            LIDcode    false    243            Q           2606    31137    event event_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.event DROP CONSTRAINT event_pkey;
       public            LIDcode    false    229            q           2606    31263 @   event_sponsors event_sponsors_event_id_sponsors_id_33f6a50a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.event_sponsors
    ADD CONSTRAINT event_sponsors_event_id_sponsors_id_33f6a50a_uniq UNIQUE (event_id, sponsors_id);
 j   ALTER TABLE ONLY public.event_sponsors DROP CONSTRAINT event_sponsors_event_id_sponsors_id_33f6a50a_uniq;
       public            LIDcode    false    245    245            s           2606    31201 "   event_sponsors event_sponsors_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.event_sponsors
    ADD CONSTRAINT event_sponsors_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.event_sponsors DROP CONSTRAINT event_sponsors_pkey;
       public            LIDcode    false    245            S           2606    31146    organizers organizers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.organizers
    ADD CONSTRAINT organizers_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.organizers DROP CONSTRAINT organizers_pkey;
       public            LIDcode    false    231            U           2606    31155    participant participant_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.participant
    ADD CONSTRAINT participant_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.participant DROP CONSTRAINT participant_pkey;
       public            LIDcode    false    233            W           2606    31164    sponsors sponsors_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sponsors
    ADD CONSTRAINT sponsors_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sponsors DROP CONSTRAINT sponsors_pkey;
       public            LIDcode    false    235            \           2606    31173    team team_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public            LIDcode    false    237            _           2606    31180 &   team_teamMembers team_teamMembers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."team_teamMembers"
    ADD CONSTRAINT "team_teamMembers_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."team_teamMembers" DROP CONSTRAINT "team_teamMembers_pkey";
       public            LIDcode    false    239            b           2606    31221 F   team_teamMembers team_teamMembers_team_id_participant_id_130a314f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public."team_teamMembers"
    ADD CONSTRAINT "team_teamMembers_team_id_participant_id_130a314f_uniq" UNIQUE (team_id, participant_id);
 t   ALTER TABLE ONLY public."team_teamMembers" DROP CONSTRAINT "team_teamMembers_team_id_participant_id_130a314f_uniq";
       public            LIDcode    false    239    239            0           1259    31126    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            LIDcode    false    217            5           1259    31066 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            LIDcode    false    219            8           1259    31067 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            LIDcode    false    219            +           1259    31052 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            LIDcode    false    215            @           1259    31082 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            LIDcode    false    223            C           1259    31081 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            LIDcode    false    223            F           1259    31096 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            LIDcode    false    225            I           1259    31095 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            LIDcode    false    225            =           1259    31121     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            LIDcode    false    221            L           1259    31117 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            LIDcode    false    227            O           1259    31118 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            LIDcode    false    227            u           1259    31284 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            LIDcode    false    246            x           1259    31283 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            LIDcode    false    246            c           1259    31246 "   event_organizers_event_id_afd47e48    INDEX     c   CREATE INDEX event_organizers_event_id_afd47e48 ON public.event_organizers USING btree (event_id);
 6   DROP INDEX public.event_organizers_event_id_afd47e48;
       public            LIDcode    false    241            f           1259    31247 '   event_organizers_organizers_id_27237f00    INDEX     m   CREATE INDEX event_organizers_organizers_id_27237f00 ON public.event_organizers USING btree (organizers_id);
 ;   DROP INDEX public.event_organizers_organizers_id_27237f00;
       public            LIDcode    false    241            i           1259    31260 $   event_participants_event_id_24fede85    INDEX     g   CREATE INDEX event_participants_event_id_24fede85 ON public.event_participants USING btree (event_id);
 8   DROP INDEX public.event_participants_event_id_24fede85;
       public            LIDcode    false    243            n           1259    31261 #   event_participants_team_id_798a4574    INDEX     e   CREATE INDEX event_participants_team_id_798a4574 ON public.event_participants USING btree (team_id);
 7   DROP INDEX public.event_participants_team_id_798a4574;
       public            LIDcode    false    243            o           1259    31274     event_sponsors_event_id_cffcbd64    INDEX     _   CREATE INDEX event_sponsors_event_id_cffcbd64 ON public.event_sponsors USING btree (event_id);
 4   DROP INDEX public.event_sponsors_event_id_cffcbd64;
       public            LIDcode    false    245            t           1259    31275 #   event_sponsors_sponsors_id_32446d1a    INDEX     e   CREATE INDEX event_sponsors_sponsors_id_32446d1a ON public.event_sponsors USING btree (sponsors_id);
 7   DROP INDEX public.event_sponsors_sponsors_id_32446d1a;
       public            LIDcode    false    245            X           1259    31217    team_coach_id_e0c09019    INDEX     K   CREATE INDEX team_coach_id_e0c09019 ON public.team USING btree (coach_id);
 *   DROP INDEX public.team_coach_id_e0c09019;
       public            LIDcode    false    237            Y           1259    31218    team_contactPerson_id_0ae697ea    INDEX     _   CREATE INDEX "team_contactPerson_id_0ae697ea" ON public.team USING btree ("contactPerson_id");
 4   DROP INDEX public."team_contactPerson_id_0ae697ea";
       public            LIDcode    false    237            Z           1259    31219    team_my_event_id_c835c325    INDEX     Q   CREATE INDEX team_my_event_id_c835c325 ON public.team USING btree (my_event_id);
 -   DROP INDEX public.team_my_event_id_c835c325;
       public            LIDcode    false    237            ]           1259    31233 (   team_teamMembers_participant_id_7aea7287    INDEX     s   CREATE INDEX "team_teamMembers_participant_id_7aea7287" ON public."team_teamMembers" USING btree (participant_id);
 >   DROP INDEX public."team_teamMembers_participant_id_7aea7287";
       public            LIDcode    false    239            `           1259    31232 !   team_teamMembers_team_id_fe83f54a    INDEX     e   CREATE INDEX "team_teamMembers_team_id_fe83f54a" ON public."team_teamMembers" USING btree (team_id);
 7   DROP INDEX public."team_teamMembers_team_id_fe83f54a";
       public            LIDcode    false    239            {           2606    31061 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          LIDcode    false    219    3375    215            z           2606    31056 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          LIDcode    false    219    3380    217            y           2606    31047 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          LIDcode    false    3370    215    213            }           2606    31076 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          LIDcode    false    217    223    3380            |           2606    31071 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          LIDcode    false    3388    223    221                       2606    31090 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          LIDcode    false    225    215    3375            ~           2606    31085 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          LIDcode    false    225    221    3388            ?           2606    31107 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          LIDcode    false    227    3370    213            ?           2606    31112 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          LIDcode    false    3388    227    221            ?           2606    31236 ?   event_organizers event_organizers_event_id_afd47e48_fk_event_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.event_organizers
    ADD CONSTRAINT event_organizers_event_id_afd47e48_fk_event_id FOREIGN KEY (event_id) REFERENCES public.event(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.event_organizers DROP CONSTRAINT event_organizers_event_id_afd47e48_fk_event_id;
       public          LIDcode    false    3409    229    241            ?           2606    31241 I   event_organizers event_organizers_organizers_id_27237f00_fk_organizers_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.event_organizers
    ADD CONSTRAINT event_organizers_organizers_id_27237f00_fk_organizers_id FOREIGN KEY (organizers_id) REFERENCES public.organizers(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.event_organizers DROP CONSTRAINT event_organizers_organizers_id_27237f00_fk_organizers_id;
       public          LIDcode    false    241    231    3411            ?           2606    31250 C   event_participants event_participants_event_id_24fede85_fk_event_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.event_participants
    ADD CONSTRAINT event_participants_event_id_24fede85_fk_event_id FOREIGN KEY (event_id) REFERENCES public.event(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.event_participants DROP CONSTRAINT event_participants_event_id_24fede85_fk_event_id;
       public          LIDcode    false    243    229    3409            ?           2606    31255 A   event_participants event_participants_team_id_798a4574_fk_team_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.event_participants
    ADD CONSTRAINT event_participants_team_id_798a4574_fk_team_id FOREIGN KEY (team_id) REFERENCES public.team(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.event_participants DROP CONSTRAINT event_participants_team_id_798a4574_fk_team_id;
       public          LIDcode    false    3420    243    237            ?           2606    31264 ;   event_sponsors event_sponsors_event_id_cffcbd64_fk_event_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.event_sponsors
    ADD CONSTRAINT event_sponsors_event_id_cffcbd64_fk_event_id FOREIGN KEY (event_id) REFERENCES public.event(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.event_sponsors DROP CONSTRAINT event_sponsors_event_id_cffcbd64_fk_event_id;
       public          LIDcode    false    3409    245    229            ?           2606    31269 A   event_sponsors event_sponsors_sponsors_id_32446d1a_fk_sponsors_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.event_sponsors
    ADD CONSTRAINT event_sponsors_sponsors_id_32446d1a_fk_sponsors_id FOREIGN KEY (sponsors_id) REFERENCES public.sponsors(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.event_sponsors DROP CONSTRAINT event_sponsors_sponsors_id_32446d1a_fk_sponsors_id;
       public          LIDcode    false    3415    245    235            ?           2606    36494 -   team team_coach_id_e0c09019_fk_participant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_coach_id_e0c09019_fk_participant_id FOREIGN KEY (coach_id) REFERENCES public.participant(id) DEFERRABLE INITIALLY DEFERRED;
 W   ALTER TABLE ONLY public.team DROP CONSTRAINT team_coach_id_e0c09019_fk_participant_id;
       public          LIDcode    false    237    3413    233            ?           2606    36499 5   team team_contactPerson_id_0ae697ea_fk_participant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.team
    ADD CONSTRAINT "team_contactPerson_id_0ae697ea_fk_participant_id" FOREIGN KEY ("contactPerson_id") REFERENCES public.participant(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.team DROP CONSTRAINT "team_contactPerson_id_0ae697ea_fk_participant_id";
       public          LIDcode    false    233    237    3413            ?           2606    31212 *   team team_my_event_id_c835c325_fk_event_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_my_event_id_c835c325_fk_event_id FOREIGN KEY (my_event_id) REFERENCES public.event(id) DEFERRABLE INITIALLY DEFERRED;
 T   ALTER TABLE ONLY public.team DROP CONSTRAINT team_my_event_id_c835c325_fk_event_id;
       public          LIDcode    false    229    237    3409            ?           2606    31227 K   team_teamMembers team_teamMembers_participant_id_7aea7287_fk_participant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."team_teamMembers"
    ADD CONSTRAINT "team_teamMembers_participant_id_7aea7287_fk_participant_id" FOREIGN KEY (participant_id) REFERENCES public.participant(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."team_teamMembers" DROP CONSTRAINT "team_teamMembers_participant_id_7aea7287_fk_participant_id";
       public          LIDcode    false    3413    239    233            ?           2606    31222 =   team_teamMembers team_teamMembers_team_id_fe83f54a_fk_team_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."team_teamMembers"
    ADD CONSTRAINT "team_teamMembers_team_id_fe83f54a_fk_team_id" FOREIGN KEY (team_id) REFERENCES public.team(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."team_teamMembers" DROP CONSTRAINT "team_teamMembers_team_id_fe83f54a_fk_team_id";
       public          LIDcode    false    239    3420    237                  x?????? ? ?      !      x?????? ? ?           x?}?KN?0???)z?<?Zs$?V?D?(I?`l?$?*!
Wpo?3??3?c????2??4?z?lֻ??=?????y>7??(C@?I6W??K? ??KUs?.y0p??+?58?B?????<!??9?rD;?cQ??c??Hp$??Y??|Y????T??G/D??"??H?UZ ,p;r?J?"???bz>???????-0?g?6m7G??i???????B??R?"?1??(??	????G???5;4?26p֕?ou??$C???AO??n??9??????!??????????7???\??_?C?@Q?L2d=$?Ƙb?$?`????ԃ	????o?}?????b???<??UV2bsr0??? ???A???L?AQ4?'M?lyg?&?-&?^J?:??Eb??=??~?6?{2?=E3dD?$?}E?????"7?;??\W0E?UyS???g??O:????h???z?C?q??Z?h?x_?z-?mU?d!c6?? [???.???%C?K?)pg'R??      #   ?   x?E?M?0????):xe?????!?FVA???6ˠ>}v??>?(?g????㪀??g-?mD?aNeq?nD?Yέ8???9???????a?X??i?V?&?X?ؽ?dc?&?o@?ϘO?C=??!q??ܔ5B?4????O?*??v?z?? ??YW?G=?Gc??0?      %      x?????? ? ?      '      x?????? ? ?      )   a  x????nG????X?5??U]?57K?R?\9 ??5kR\?c???r???1qd06???F???]??t?????h$??L?j????U=?
%?i.?!?dk	B??ߓ??*?<{^?ξ??4?«p8{?a8?=???t??S?y????{?q?(?}~z<???NG|?UӍ?#???_ξ?g-???|????	????r<?Nw??zt?????V??C????????ؾ?w{??8c$?PNJQ?VWEC?P 8I???:?7??????/?????^*?6?&????v}r??hc?{c??t??^_?zWL?F?ظ?\???M??? ???]????l?穙$??ŘLL??V IkS4S0ߞ!???X @h??jU}|??'w?K???<? TFU???~Ԯ????????d,??TW?_?۹y?V? ??Y?????85/}??Y?wC???٨?K;{7'%??R??%	o cÓ?)o	?????Je?ؑxF???S?e?JI??5???????p???Z?v??tY?vk??Bw?S??Zz?ōTU?/?4U???)ACcx?\<KWx?7&|c?,?h??[?n??Q?1?????[0bt??ˊ+X??8?_0??+??r?7??P?,????{r듆W?{??bF???τ?0??B??޼???????J(???ww?j8j?QK??Q??V?ͺV<h?ʼ?>߼?A???o?????[???2?:?P.??Q'󤇝?3??R?y?ҝ?:Evz&?????R??ɀ?HM.5?????f?2_?I.???:????Z???Y$?ie?Ahm?/G??g?})???M฼%??ٷgsY?E?d/??5i^??K?6???
~?C?u??ſ$?4?n1??\?4yۖ?
2?z??qM?????]M?g?1?*????iZCw?ﮮ??<??>޼Qu?E.??C՚?h?.6i?;NOk???????鵙h??"???Gm???????Q[?Bw?M-w'????8?Ī?0(P?&f\,?X@??V?|?+???*o??TYD??rΏgG_Du5>?\5?P[Dm?i????̈@????|?B?????n?	??Vk????#????\=?R.???ZΥʁC??2?j9?????2??r??2zj8?>?7?Qq?ˈ????M?幌????s?\|??
?e;{<?K,??p ??d??)h%Q??TA)?}?0??\A)g湂R nx??TI'vQ?娒J??TI#??E??*)ħ?&??
A9???s??q&?قJ???s??q2?t??8?y???3??\A)????n????b?e??$????WԶ ??	???@`??|??L`?|k???as ???U????7K?/?         ?   x?M?K
AD??a???<??0?6`H???m??U=^U z$??*????;??O??I̤dܯ$jikiƊG?J?>????<??wm??gH$?&??s??2@?HYެ??A+??$????[????!?L	?D? C$H%         0  x???Ѯ? ???S???40??ϰ??	!?cIT<??ӷ?[[?6m6F/????hV?.?.?so??B??\t?ɀ |???@K?J??TR??'a;????#@H*R?̡u?!W?M!???5
gl?OVc~?????@?3C????8m??|??S???]?l?
????삫?˂?VtgZ??b??D*?@?&ڠ{Z7??)\??[7??q?6?P??rA?j?c[㚗`J$??B???????>n??@I?j?da?{Fc?89ﰲ???9c8'I?%Gs?Fw??z2?	?$O?m<????i??D??|????`?'}g</?nQ????;?l??U_H????P??P⊢䂪???0??$O?|?P=?h??}??绉|???S6KYƙ?}U?.?[????ĒNn????U?%E??T6؋??aJ???*?U?=MG9YQ5+?5????e??=?o?ÿ'^??^H|?`]???hM??m???G?~??[?????X?<S +0?%{??b??G??@VVr?????'0_????ѵ??6?m??J
%S?9Q??~???.??      <   	  x???G??? ???)?7$T?"wT??W??9???[R{1??t????P???I?֡:??L׋?P㚝;课?h??x??]e0C???dc??????:?$??H???j?Tƣ?L?s3??Ř????@?^?#?s2?Έu?uc?(?J??6?}??GM???,??-?{???c/?|?&ʦ?{???3??|?N???շ??h?n3I1??汖aL{.ϖzr???(?????V?̾???h??_<??l?P1??z?? ??2?2%}"aN????R??J???
i?f?J??*??Ci?N????}??9J??????????qr?w?\?ض?q??AD?Ly_`D(yE???|?ą ????1??Q?j?I?3????t????????i䈖?g可O???????DD?O???n??.p??34ύ?(??ۼ3?
|'Q1????NI??v?~j@Vn9?G?VkPo?7??c??s̤?=?$?2?}???Q??QhRR??
`B??V?m}-?R"U&?s?6?4?E?R??Xs?&e????FM??:???}?????E?KU?ObF:?S5???W??ÀZF?|%Q9?????????OG#?hv?,?????'h?L{)??T?????PȀ?)'???HdR??R?*?k?V?????$? K?w?gr?D????n?*???ۻ?VK~({c??c??,Å[=	H}?[???u3[??v??ps?U?E?2???I??e~\߮?J>????׮3????3]zXH?LK?6?'?3?P@A}???
??Y??p??]?,?s@QgG+w????${?ܥ?uF?Zh?o?????!??[r???q??IDD_?8zeP5?Q??̪???lԤ?&?Rmü?N??T?????7Z??l??m???? N????N<????T(?D?????wU?6`6?,M?sA?@?Z,?qgt?w?7??\????n?ì&G6P??E??j??m???2??@?L4^?F!???@#??jL=?}#?m-$>?I?xc?f}'????f8?}???`?/?AB???K???ڈ?҂ķM????$?????'??^@
?T9?.*4??SB??J?j?pE???H???ķ?4?6???N:?
Z?QO??N#?o\?K?G|???$"???_-?E٨??L+?Q????-?,At/o???`2r?q?j?U,?e	??;????
??ث??ڐ???Q?ʵ?D??o??_??kbCrxK?<)?JO?HF??$?٨?:????e?v??????{?h=??\5?C???O"&c???{???*??g?A????%"줥??x8 y??D?x$?p?S՟???X??z?ц0.?Na%.??i?]???GG??Bp?&j ???????3??fGpi??S???I4????
??&$???D?ơ_κ??2W?????l?Y?D?$?2??r$޵??????a5h??{?iue?.??;?Cy\?~???=W?????z>?^l?T]?fG???ru?{|1?>cK??V?Y??D?LtEfxq? ?4?Ҹ.? ?N??]?4?_?n?o?#?;h@1==????????M?,??x%>?0~u4 ??E?6?,?Tߢ?/?2۲u??%?V~'?ɒg??K5wG62???????A??y?re???e :b???īq(z'?2?j?kr?u>?q?b???8t?$7??R?B??G?<ۘF?f???,??m??֛?s{?F?{?!D???sG??w?nP[?ճծN??L'45?L?z?E?J??)2???v??C?إ;2?M?T<3X<7?[좴?s????? C???}
$???"??%i۠N?zV???U?S?@?$?9:֬???}??~cb??I6?V??,Hj1?&???'??>??o"s]?ӸlR?1M????®? O?wn??h?(~6e?K?51u????N<?????h???gb??????Z??Hz???????:?^??<?m5?j+[?I?U#? ??D;G>VN?Wĥ???4?g?9V?ө?????-L?d????3?0{=1J(|CxSI?R?8?@??ܲ???F\߱??|G???'?????`S<n?@?|??0?'??g?X???98?o?DB??Ϟ{???("?i?OB^?ea????B??R???<??g$??1?W^??}?^?3???F???Ӊ??<??px끋?AD^?Ǿ$$??^?q`[^?5?
s?????,?)J?/}$??s(???u???٪??ޱ7K??ۍ??E	?|X;??D??%?f?Xɺ,?E?Tm??'?i?PsO4?It1?+O????i?Z?d??h???;?xҘ??ힱ?$"2?}?L3???????ն?{      +   ?  x??S?n?P]???ʶ?6??3???M-??`?8??*???"??RU???2?0??zfLQ?U??w??sΜz?Z?k??JSE??k?iJk}?`L??1??4???߼?7??!N?z??R?Ȇ?p'A|?????Ln???
?D?1vk??p?/ݺ׊B'???A_???·?}?+??C?0	+?n	?(??	??Ru*???T?ۀ@V /?J?x?????2?;9I&?#i???Twp?$:L??'???c??W
[??]}???.<f{0b:Y?	?Cp?}?3?PI?#Q???0??,????.?)?,?S?Q2?O???`??g1I??!?8b0??Y??EyF3؂[?@᭴u?=????j60+#+=s?}?a???V?,??K?o??=??????T~?-?J?;?֯e?b)X&o$??(??b?.??U(֎???m?W????d?/???????`g?	[???l܌??0?X???*?޻?"?????ـ?/.?J?????ع?,<k^DQЪYV????+???@6y???{-?ex???,.ֲ?V??r??fԲ?;?1?0??}7?rͶ?e?M?Wٻ??=?#
??v????]?n?F^??fxi}p^;?^>??,>t/???????:zZځ???\.????7      7      x?3?4?4?????? ?Z      9      x?3?4?42?????? ?      ;      x?3?4?4?2??\1z\\\ K      -   ?   x?}?Aj?0E??=?K4#%??@?2?fY(j"\?X2?@NQz??M??#?V??*?7????Gd?U?&?(%?d?7ʚ??????G??&{?o?]?BGK 
?kNA??s??????>?|Od?e?~u?tV?x???b???9?N??CFy?y%Gn?Z??Hz?????>?ɕ?U??6?f???i??_?3~?]7???WC??pp6????b?s,%?ů??=s??Qp?      /   ?   x?m??
a??绊٫?????Ľ?b??FQ,)? ??޹#g????9?s??9?$?q?%???{3츽p?N?9?ĵ??!????Эb??ZN]/?.%?ʐ*#s9?[L?!???L??G#\_???Sq?0A??5<?GΆoQ??=???^??dRtJ%?ߺ2??LV8?_G??p?D??M?o?p???ͮ???`?0?_pAB< ?X??      1   ?   x?}?9?0?ھ?`6??
DOG???8!??%i?cp
J???0V????|??E?b<3@J!?]?Q?6R(Xô39Q5G۰??Ze??M?<?9?Ty??	???mK\???Foo󸰹K_???n\:???[xS?[????vwR?????_?Rc?t#We??d?k?ypX?|?=????Q      3   -   x?32??0?¾/l?????Ă?????NS#2?????? h??      5   !   x?36?42?45?263??????=... N??     