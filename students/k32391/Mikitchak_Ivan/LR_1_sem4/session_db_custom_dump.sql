PGDMP     *                    {         
   session_db    15.2    15.2 @    d           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            e           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            f           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            g           1262    16406 
   session_db    DATABASE     ~   CREATE DATABASE session_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE session_db;
                postgres    false            �            1259    16604    attestations    TABLE     �   CREATE TABLE public.attestations (
    student_personnel_number integer NOT NULL,
    educator_personnel_number integer NOT NULL,
    disc_in_curr_id integer NOT NULL,
    mark character varying(10)
);
     DROP TABLE public.attestations;
       public         heap    postgres    false            �            1259    16492    auditoriums    TABLE     �   CREATE TABLE public.auditoriums (
    auditorium_id integer NOT NULL,
    venue_id integer NOT NULL,
    auditorium_capacity integer,
    auditorium_number integer,
    auditorium_type character varying(20)
);
    DROP TABLE public.auditoriums;
       public         heap    postgres    false            �            1259    16502    curriculums    TABLE     �   CREATE TABLE public.curriculums (
    curriculum_id integer NOT NULL,
    edu_prog_id integer NOT NULL,
    curriculum_admittance_year integer
);
    DROP TABLE public.curriculums;
       public         heap    postgres    false            �            1259    16452 
   directions    TABLE     q   CREATE TABLE public.directions (
    direction_id integer NOT NULL,
    direction_name character varying(100)
);
    DROP TABLE public.directions;
       public         heap    postgres    false            �            1259    16562    disc_in_curr    TABLE     �   CREATE TABLE public.disc_in_curr (
    disc_in_curr_id integer NOT NULL,
    curriculum_id integer NOT NULL,
    discipline_id integer NOT NULL
);
     DROP TABLE public.disc_in_curr;
       public         heap    postgres    false            �            1259    16527    disciplines    TABLE       CREATE TABLE public.disciplines (
    discipline_id integer NOT NULL,
    discipline_name character varying(100),
    discipline_lecture_hours integer,
    discipline_practice_hours integer,
    discipline_lab_hours integer,
    discipline_attestation_type character varying(20)
);
    DROP TABLE public.disciplines;
       public         heap    postgres    false            �            1259    16462 	   divisions    TABLE     �   CREATE TABLE public.divisions (
    division_id integer NOT NULL,
    venue_id integer NOT NULL,
    division_name character varying(100)
);
    DROP TABLE public.divisions;
       public         heap    postgres    false            �            1259    16477 	   edu_progs    TABLE     �   CREATE TABLE public.edu_progs (
    edu_prog_id integer NOT NULL,
    direction_id integer NOT NULL,
    division_id integer NOT NULL,
    edu_prog_name character varying(100)
);
    DROP TABLE public.edu_progs;
       public         heap    postgres    false            �            1259    16532 	   educators    TABLE     �   CREATE TABLE public.educators (
    educator_personnel_number integer NOT NULL,
    division_id integer NOT NULL,
    educator_full_name character varying(100),
    educator_position character varying(100)
);
    DROP TABLE public.educators;
       public         heap    postgres    false            �            1259    16624    schedule_rows    TABLE     �   CREATE TABLE public.schedule_rows (
    st_group_id integer NOT NULL,
    educator_personnel_number integer NOT NULL,
    disc_in_curr_id integer NOT NULL,
    auditorium_id integer NOT NULL,
    schedule_date timestamp(0) with time zone
);
 !   DROP TABLE public.schedule_rows;
       public         heap    postgres    false            �            1259    16512 	   st_groups    TABLE     �   CREATE TABLE public.st_groups (
    st_group_id integer NOT NULL,
    curriculum_id integer NOT NULL,
    st_group_number character varying(10),
    st_group_number_valid_since date,
    st_group_number_valid_till date
);
    DROP TABLE public.st_groups;
       public         heap    postgres    false            �            1259    16547    st_in_group    TABLE       CREATE TABLE public.st_in_group (
    student_personnel_number integer NOT NULL,
    student_id integer NOT NULL,
    st_group_id integer NOT NULL,
    student_in_group_since date,
    student_in_group_till date,
    student_status character varying(20)
);
    DROP TABLE public.st_in_group;
       public         heap    postgres    false            �            1259    16522    students    TABLE     �   CREATE TABLE public.students (
    student_id integer NOT NULL,
    student_full_name character varying(100),
    student_birthyear integer,
    student_passport_data character varying(100)
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    16457    venues    TABLE     e   CREATE TABLE public.venues (
    venue_id integer NOT NULL,
    venue_name character varying(100)
);
    DROP TABLE public.venues;
       public         heap    postgres    false            `          0    16604    attestations 
   TABLE DATA           r   COPY public.attestations (student_personnel_number, educator_personnel_number, disc_in_curr_id, mark) FROM stdin;
    public          postgres    false    226   (V       X          0    16492    auditoriums 
   TABLE DATA           w   COPY public.auditoriums (auditorium_id, venue_id, auditorium_capacity, auditorium_number, auditorium_type) FROM stdin;
    public          postgres    false    218   �V       Y          0    16502    curriculums 
   TABLE DATA           ]   COPY public.curriculums (curriculum_id, edu_prog_id, curriculum_admittance_year) FROM stdin;
    public          postgres    false    219   UW       T          0    16452 
   directions 
   TABLE DATA           B   COPY public.directions (direction_id, direction_name) FROM stdin;
    public          postgres    false    214   {W       _          0    16562    disc_in_curr 
   TABLE DATA           U   COPY public.disc_in_curr (disc_in_curr_id, curriculum_id, discipline_id) FROM stdin;
    public          postgres    false    225   X       \          0    16527    disciplines 
   TABLE DATA           �   COPY public.disciplines (discipline_id, discipline_name, discipline_lecture_hours, discipline_practice_hours, discipline_lab_hours, discipline_attestation_type) FROM stdin;
    public          postgres    false    222   KX       V          0    16462 	   divisions 
   TABLE DATA           I   COPY public.divisions (division_id, venue_id, division_name) FROM stdin;
    public          postgres    false    216   �X       W          0    16477 	   edu_progs 
   TABLE DATA           Z   COPY public.edu_progs (edu_prog_id, direction_id, division_id, edu_prog_name) FROM stdin;
    public          postgres    false    217   *Y       ]          0    16532 	   educators 
   TABLE DATA           r   COPY public.educators (educator_personnel_number, division_id, educator_full_name, educator_position) FROM stdin;
    public          postgres    false    223   �Y       a          0    16624    schedule_rows 
   TABLE DATA           ~   COPY public.schedule_rows (st_group_id, educator_personnel_number, disc_in_curr_id, auditorium_id, schedule_date) FROM stdin;
    public          postgres    false    227   �Z       Z          0    16512 	   st_groups 
   TABLE DATA           �   COPY public.st_groups (st_group_id, curriculum_id, st_group_number, st_group_number_valid_since, st_group_number_valid_till) FROM stdin;
    public          postgres    false    220   �Z       ^          0    16547    st_in_group 
   TABLE DATA           �   COPY public.st_in_group (student_personnel_number, student_id, st_group_id, student_in_group_since, student_in_group_till, student_status) FROM stdin;
    public          postgres    false    224   =[       [          0    16522    students 
   TABLE DATA           k   COPY public.students (student_id, student_full_name, student_birthyear, student_passport_data) FROM stdin;
    public          postgres    false    221   �[       U          0    16457    venues 
   TABLE DATA           6   COPY public.venues (venue_id, venue_name) FROM stdin;
    public          postgres    false    215   �\       �           2606    16608    attestations attestations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.attestations
    ADD CONSTRAINT attestations_pkey PRIMARY KEY (student_personnel_number, educator_personnel_number, disc_in_curr_id);
 H   ALTER TABLE ONLY public.attestations DROP CONSTRAINT attestations_pkey;
       public            postgres    false    226    226    226            �           2606    16496    auditoriums auditoriums_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.auditoriums
    ADD CONSTRAINT auditoriums_pkey PRIMARY KEY (auditorium_id);
 F   ALTER TABLE ONLY public.auditoriums DROP CONSTRAINT auditoriums_pkey;
       public            postgres    false    218            �           2606    16506    curriculums curriculums_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.curriculums
    ADD CONSTRAINT curriculums_pkey PRIMARY KEY (curriculum_id);
 F   ALTER TABLE ONLY public.curriculums DROP CONSTRAINT curriculums_pkey;
       public            postgres    false    219            �           2606    16456    directions directions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directions
    ADD CONSTRAINT directions_pkey PRIMARY KEY (direction_id);
 D   ALTER TABLE ONLY public.directions DROP CONSTRAINT directions_pkey;
       public            postgres    false    214            �           2606    16566    disc_in_curr disc_in_curr_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.disc_in_curr
    ADD CONSTRAINT disc_in_curr_pkey PRIMARY KEY (disc_in_curr_id);
 H   ALTER TABLE ONLY public.disc_in_curr DROP CONSTRAINT disc_in_curr_pkey;
       public            postgres    false    225            �           2606    16531    disciplines disciplines_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_pkey PRIMARY KEY (discipline_id);
 F   ALTER TABLE ONLY public.disciplines DROP CONSTRAINT disciplines_pkey;
       public            postgres    false    222            �           2606    16466    divisions divisions_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (division_id);
 B   ALTER TABLE ONLY public.divisions DROP CONSTRAINT divisions_pkey;
       public            postgres    false    216            �           2606    16481    edu_progs edu_progs_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.edu_progs
    ADD CONSTRAINT edu_progs_pkey PRIMARY KEY (edu_prog_id);
 B   ALTER TABLE ONLY public.edu_progs DROP CONSTRAINT edu_progs_pkey;
       public            postgres    false    217            �           2606    16536    educators educator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.educators
    ADD CONSTRAINT educator_pkey PRIMARY KEY (educator_personnel_number);
 A   ALTER TABLE ONLY public.educators DROP CONSTRAINT educator_pkey;
       public            postgres    false    223            �           2606    16628     schedule_rows schedule_rows_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.schedule_rows
    ADD CONSTRAINT schedule_rows_pkey PRIMARY KEY (st_group_id, educator_personnel_number, disc_in_curr_id, auditorium_id);
 J   ALTER TABLE ONLY public.schedule_rows DROP CONSTRAINT schedule_rows_pkey;
       public            postgres    false    227    227    227    227            �           2606    16516    st_groups st_groups_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.st_groups
    ADD CONSTRAINT st_groups_pkey PRIMARY KEY (st_group_id);
 B   ALTER TABLE ONLY public.st_groups DROP CONSTRAINT st_groups_pkey;
       public            postgres    false    220            �           2606    16551    st_in_group st_in_group_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.st_in_group
    ADD CONSTRAINT st_in_group_pkey PRIMARY KEY (student_personnel_number);
 F   ALTER TABLE ONLY public.st_in_group DROP CONSTRAINT st_in_group_pkey;
       public            postgres    false    224            �           2606    16526    students student_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.students
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);
 ?   ALTER TABLE ONLY public.students DROP CONSTRAINT student_pkey;
       public            postgres    false    221            �           2606    16461    venues venues_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.venues
    ADD CONSTRAINT venues_pkey PRIMARY KEY (venue_id);
 <   ALTER TABLE ONLY public.venues DROP CONSTRAINT venues_pkey;
       public            postgres    false    215            �           2606    16619 .   attestations attestations_disc_in_curr_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attestations
    ADD CONSTRAINT attestations_disc_in_curr_id_fkey FOREIGN KEY (disc_in_curr_id) REFERENCES public.disc_in_curr(disc_in_curr_id);
 X   ALTER TABLE ONLY public.attestations DROP CONSTRAINT attestations_disc_in_curr_id_fkey;
       public          postgres    false    226    225    3247            �           2606    16614 8   attestations attestations_educator_personnel_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attestations
    ADD CONSTRAINT attestations_educator_personnel_number_fkey FOREIGN KEY (educator_personnel_number) REFERENCES public.educators(educator_personnel_number);
 b   ALTER TABLE ONLY public.attestations DROP CONSTRAINT attestations_educator_personnel_number_fkey;
       public          postgres    false    226    223    3243            �           2606    16609 7   attestations attestations_student_personnel_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attestations
    ADD CONSTRAINT attestations_student_personnel_number_fkey FOREIGN KEY (student_personnel_number) REFERENCES public.st_in_group(student_personnel_number);
 a   ALTER TABLE ONLY public.attestations DROP CONSTRAINT attestations_student_personnel_number_fkey;
       public          postgres    false    224    226    3245            �           2606    16497 %   auditoriums auditoriums_venue_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.auditoriums
    ADD CONSTRAINT auditoriums_venue_id_fkey FOREIGN KEY (venue_id) REFERENCES public.venues(venue_id);
 O   ALTER TABLE ONLY public.auditoriums DROP CONSTRAINT auditoriums_venue_id_fkey;
       public          postgres    false    3227    215    218            �           2606    16507 (   curriculums curriculums_edu_prog_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.curriculums
    ADD CONSTRAINT curriculums_edu_prog_id_fkey FOREIGN KEY (edu_prog_id) REFERENCES public.edu_progs(edu_prog_id);
 R   ALTER TABLE ONLY public.curriculums DROP CONSTRAINT curriculums_edu_prog_id_fkey;
       public          postgres    false    219    3231    217            �           2606    16567 ,   disc_in_curr disc_in_curr_curriculum_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.disc_in_curr
    ADD CONSTRAINT disc_in_curr_curriculum_id_fkey FOREIGN KEY (curriculum_id) REFERENCES public.curriculums(curriculum_id);
 V   ALTER TABLE ONLY public.disc_in_curr DROP CONSTRAINT disc_in_curr_curriculum_id_fkey;
       public          postgres    false    225    219    3235            �           2606    16572 ,   disc_in_curr disc_in_curr_discipline_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.disc_in_curr
    ADD CONSTRAINT disc_in_curr_discipline_id_fkey FOREIGN KEY (discipline_id) REFERENCES public.disciplines(discipline_id);
 V   ALTER TABLE ONLY public.disc_in_curr DROP CONSTRAINT disc_in_curr_discipline_id_fkey;
       public          postgres    false    222    3241    225            �           2606    16467 !   divisions divisions_venue_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_venue_id_fkey FOREIGN KEY (venue_id) REFERENCES public.venues(venue_id);
 K   ALTER TABLE ONLY public.divisions DROP CONSTRAINT divisions_venue_id_fkey;
       public          postgres    false    3227    215    216            �           2606    16482 %   edu_progs edu_progs_direction_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.edu_progs
    ADD CONSTRAINT edu_progs_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.directions(direction_id);
 O   ALTER TABLE ONLY public.edu_progs DROP CONSTRAINT edu_progs_direction_id_fkey;
       public          postgres    false    217    214    3225            �           2606    16487 $   edu_progs edu_progs_division_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.edu_progs
    ADD CONSTRAINT edu_progs_division_id_fkey FOREIGN KEY (division_id) REFERENCES public.divisions(division_id);
 N   ALTER TABLE ONLY public.edu_progs DROP CONSTRAINT edu_progs_division_id_fkey;
       public          postgres    false    216    3229    217            �           2606    16537 #   educators educator_division_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.educators
    ADD CONSTRAINT educator_division_id_fkey FOREIGN KEY (division_id) REFERENCES public.divisions(division_id);
 M   ALTER TABLE ONLY public.educators DROP CONSTRAINT educator_division_id_fkey;
       public          postgres    false    223    216    3229            �           2606    16644 .   schedule_rows schedule_rows_auditorium_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_rows
    ADD CONSTRAINT schedule_rows_auditorium_id_fkey FOREIGN KEY (auditorium_id) REFERENCES public.auditoriums(auditorium_id);
 X   ALTER TABLE ONLY public.schedule_rows DROP CONSTRAINT schedule_rows_auditorium_id_fkey;
       public          postgres    false    218    227    3233            �           2606    16639 0   schedule_rows schedule_rows_disc_in_curr_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_rows
    ADD CONSTRAINT schedule_rows_disc_in_curr_id_fkey FOREIGN KEY (disc_in_curr_id) REFERENCES public.disc_in_curr(disc_in_curr_id);
 Z   ALTER TABLE ONLY public.schedule_rows DROP CONSTRAINT schedule_rows_disc_in_curr_id_fkey;
       public          postgres    false    225    3247    227            �           2606    16634 :   schedule_rows schedule_rows_educator_personnel_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_rows
    ADD CONSTRAINT schedule_rows_educator_personnel_number_fkey FOREIGN KEY (educator_personnel_number) REFERENCES public.educators(educator_personnel_number);
 d   ALTER TABLE ONLY public.schedule_rows DROP CONSTRAINT schedule_rows_educator_personnel_number_fkey;
       public          postgres    false    227    3243    223            �           2606    16629 ,   schedule_rows schedule_rows_st_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_rows
    ADD CONSTRAINT schedule_rows_st_group_id_fkey FOREIGN KEY (st_group_id) REFERENCES public.st_groups(st_group_id);
 V   ALTER TABLE ONLY public.schedule_rows DROP CONSTRAINT schedule_rows_st_group_id_fkey;
       public          postgres    false    3237    227    220            �           2606    16517 &   st_groups st_groups_curriculum_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.st_groups
    ADD CONSTRAINT st_groups_curriculum_id_fkey FOREIGN KEY (curriculum_id) REFERENCES public.curriculums(curriculum_id);
 P   ALTER TABLE ONLY public.st_groups DROP CONSTRAINT st_groups_curriculum_id_fkey;
       public          postgres    false    219    3235    220            �           2606    16557 (   st_in_group st_in_group_st_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.st_in_group
    ADD CONSTRAINT st_in_group_st_group_id_fkey FOREIGN KEY (st_group_id) REFERENCES public.st_groups(st_group_id);
 R   ALTER TABLE ONLY public.st_in_group DROP CONSTRAINT st_in_group_st_group_id_fkey;
       public          postgres    false    3237    224    220            �           2606    16552 '   st_in_group st_in_group_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.st_in_group
    ADD CONSTRAINT st_in_group_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 Q   ALTER TABLE ONLY public.st_in_group DROP CONSTRAINT st_in_group_student_id_fkey;
       public          postgres    false    224    221    3239            `   �   x�u�1�0���9LE���-=FO����k�(�FEDml9d�~Ч� ��L�<Ĥ��bf�$����%"$���O]�V�����8��M�M��;�M��N\��M<Mj�K�tIU�Ɲwjܩ�;�y��$��%�eh�n)�/ڣs      X   �   x�}���@E��*���v��� 0��3p�����Ș^��7�@J]��(�7f�Ŋ�b7L'|����P�Hc����N��Čْ%փ�zز3���Ů��vg?�!��ZW�]"M5̛~a�Vd�33o��xO      Y      x�3�4�4202����� g�      T   �   x�u�]
�@���S�	���a���B_}�
�Z��g���Y[�-
�&�f�.p��=��l^��hǞ��V�< ��D���u&�LHƊ�hk(�G�9y����&<l]e��L���<g����2��҆4�??��^�D�j]��      _   !   x�3�4�4�2�F\�@Ҙ�H�p��qqq 49q      \   �   x�}�;�@Dk�� %�sp��PP R���VD���a|#fW�I�bl��Y�\���
S�=8ɳ,�<	Z&�w�Y��PX�Q+��vƂ�3���?t3����Q� �a$����;�#�Cl�/�b�=��r��?*&t�      V   5   x�3�4⼰��.�0�ˈ�ua�1�1'�9�4�(������� H8      W   H   x�3�4�4�0�¾/츰�bυ��/lU��C�bㅭ�.l��	,b^l���t7o*������ �Y)�      ]      x���MN�0���)|���6���X�T�nX!V�4I���Wxs#�s#�
��d�3�y�</��"�������tlp�4�v�ᙉ�3�;x&���۽�"�\�9勢�QE�����B+����G���1����E)�R���)�`�Ύ�`#�$���qNo�r���_^��J��hUU��6������Fbjb��4���&B����.��br����z���@�6�iE�WvQ��8fm�?��U�矤We]      a   Y   x�e���0�w2E�((q@����A˧@-K��d�=!P.jbg1�:��3���r5�NN�4XMDP��n �ˊ��̿�k��3�]K      Z   2   x�3�4��6641�4202�5��5 3� L.#����%�(�iU���� �%�      ^   O   x�366600�4A##]K]���ʼ�|���M/�s�Tq��ژӄ�&�f$�6�4'A��q�c���� T�S�      [   :  x���]N�0�����	����.�$^�J�JU*�!?"J��a|#�N��楑b9�;ߎ�	hQ�M�
�;$�l�G�-Rd�7]��W�1�2|�[L ��/�[�r4Mp��ݠ�x!�Z��?F8`�)�1ST�N��{�\����ǈ�H&
f3�IX�v��חv�١��خ\�k�W��&2U'Izda�6�'�њ�v*�Q'N�t��|/t4��"����|
�� ʪ.P���9���5��\
Ｋϳ�}��Gk��>#�,^�����~�+���ӱ)-%0
Ͼ$�iz���7���/0r}%"�ug��      U   J   x�3�0�bÅ}�^�ta�ņ��v]�qa'���@�=`�}@�}@��9/L���cۅ� ���\1z\\\ ��,J     