PGDMP       	                }            blibioteca2025    17.4    17.4 C    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            n           1262    16590    blibioteca2025    DATABASE     t   CREATE DATABASE blibioteca2025 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';
    DROP DATABASE blibioteca2025;
                     postgres    false            �            1259    16592    activosfijos    TABLE     �   CREATE TABLE public.activosfijos (
    id integer NOT NULL,
    nombre character varying(255),
    tipo character varying(50),
    estado character varying(50),
    ubicacion character varying(255)
);
     DROP TABLE public.activosfijos;
       public         heap r       postgres    false            �            1259    16591    activosfijos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activosfijos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.activosfijos_id_seq;
       public               postgres    false    218            o           0    0    activosfijos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.activosfijos_id_seq OWNED BY public.activosfijos.id;
          public               postgres    false    217            �            1259    16631 
   atenciones    TABLE     �   CREATE TABLE public.atenciones (
    id integer NOT NULL,
    usuario_id integer,
    libro_id integer,
    fecha_prestamo date,
    fecha_devolucion date,
    estado character varying(50)
);
    DROP TABLE public.atenciones;
       public         heap r       postgres    false            �            1259    16630    atenciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.atenciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.atenciones_id_seq;
       public               postgres    false    228            p           0    0    atenciones_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.atenciones_id_seq OWNED BY public.atenciones.id;
          public               postgres    false    227            �            1259    16648    autor_editorial_libro    TABLE     �   CREATE TABLE public.autor_editorial_libro (
    id integer NOT NULL,
    autor_id integer,
    editorial_id integer,
    libro_id integer,
    fecha date
);
 )   DROP TABLE public.autor_editorial_libro;
       public         heap r       postgres    false            �            1259    16647    autor_editorial_libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autor_editorial_libro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.autor_editorial_libro_id_seq;
       public               postgres    false    230            q           0    0    autor_editorial_libro_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.autor_editorial_libro_id_seq OWNED BY public.autor_editorial_libro.id;
          public               postgres    false    229            �            1259    16617    autores    TABLE     \   CREATE TABLE public.autores (
    id integer NOT NULL,
    nombre character varying(255)
);
    DROP TABLE public.autores;
       public         heap r       postgres    false            �            1259    16616    autores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.autores_id_seq;
       public               postgres    false    224            r           0    0    autores_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.autores_id_seq OWNED BY public.autores.id;
          public               postgres    false    223            �            1259    16624 	   editorial    TABLE     ^   CREATE TABLE public.editorial (
    id integer NOT NULL,
    nombre character varying(255)
);
    DROP TABLE public.editorial;
       public         heap r       postgres    false            �            1259    16623    editorial_id_seq    SEQUENCE     �   CREATE SEQUENCE public.editorial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.editorial_id_seq;
       public               postgres    false    226            s           0    0    editorial_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.editorial_id_seq OWNED BY public.editorial.id;
          public               postgres    false    225            �            1259    16610    libros    TABLE     �   CREATE TABLE public.libros (
    id integer NOT NULL,
    nombre character varying(255),
    copias integer,
    estante integer
);
    DROP TABLE public.libros;
       public         heap r       postgres    false            �            1259    16609    libros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.libros_id_seq;
       public               postgres    false    222            t           0    0    libros_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.libros_id_seq OWNED BY public.libros.id;
          public               postgres    false    221            �            1259    16671 	   prestamos    TABLE     �   CREATE TABLE public.prestamos (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    libro_id integer NOT NULL,
    fecha_prestamo date NOT NULL,
    fecha_devolucion date,
    estado character varying(50) NOT NULL
);
    DROP TABLE public.prestamos;
       public         heap r       postgres    false            �            1259    16670    prestamos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.prestamos_id_seq;
       public               postgres    false    232            u           0    0    prestamos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.prestamos_id_seq OWNED BY public.prestamos.id;
          public               postgres    false    231            �            1259    16601    usuarios    TABLE       CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(255),
    email character varying(255),
    tipo character varying(50),
    fecha_registro date,
    telefono character varying(50),
    direccion character varying(255)
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false            �            1259    16600    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public               postgres    false    220            v           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public               postgres    false    219            �           2604    16595    activosfijos id    DEFAULT     r   ALTER TABLE ONLY public.activosfijos ALTER COLUMN id SET DEFAULT nextval('public.activosfijos_id_seq'::regclass);
 >   ALTER TABLE public.activosfijos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16634    atenciones id    DEFAULT     n   ALTER TABLE ONLY public.atenciones ALTER COLUMN id SET DEFAULT nextval('public.atenciones_id_seq'::regclass);
 <   ALTER TABLE public.atenciones ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    16651    autor_editorial_libro id    DEFAULT     �   ALTER TABLE ONLY public.autor_editorial_libro ALTER COLUMN id SET DEFAULT nextval('public.autor_editorial_libro_id_seq'::regclass);
 G   ALTER TABLE public.autor_editorial_libro ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    230    230            �           2604    16620 
   autores id    DEFAULT     h   ALTER TABLE ONLY public.autores ALTER COLUMN id SET DEFAULT nextval('public.autores_id_seq'::regclass);
 9   ALTER TABLE public.autores ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    16627    editorial id    DEFAULT     l   ALTER TABLE ONLY public.editorial ALTER COLUMN id SET DEFAULT nextval('public.editorial_id_seq'::regclass);
 ;   ALTER TABLE public.editorial ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    16613 	   libros id    DEFAULT     f   ALTER TABLE ONLY public.libros ALTER COLUMN id SET DEFAULT nextval('public.libros_id_seq'::regclass);
 8   ALTER TABLE public.libros ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    16674    prestamos id    DEFAULT     l   ALTER TABLE ONLY public.prestamos ALTER COLUMN id SET DEFAULT nextval('public.prestamos_id_seq'::regclass);
 ;   ALTER TABLE public.prestamos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    231    232            �           2604    16604    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            Z          0    16592    activosfijos 
   TABLE DATA           K   COPY public.activosfijos (id, nombre, tipo, estado, ubicacion) FROM stdin;
    public               postgres    false    218   �M       d          0    16631 
   atenciones 
   TABLE DATA           h   COPY public.atenciones (id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion, estado) FROM stdin;
    public               postgres    false    228   N       f          0    16648    autor_editorial_libro 
   TABLE DATA           \   COPY public.autor_editorial_libro (id, autor_id, editorial_id, libro_id, fecha) FROM stdin;
    public               postgres    false    230    N       `          0    16617    autores 
   TABLE DATA           -   COPY public.autores (id, nombre) FROM stdin;
    public               postgres    false    224   QN       b          0    16624 	   editorial 
   TABLE DATA           /   COPY public.editorial (id, nombre) FROM stdin;
    public               postgres    false    226   �N       ^          0    16610    libros 
   TABLE DATA           =   COPY public.libros (id, nombre, copias, estante) FROM stdin;
    public               postgres    false    222   �N       h          0    16671 	   prestamos 
   TABLE DATA           g   COPY public.prestamos (id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion, estado) FROM stdin;
    public               postgres    false    232   O       \          0    16601    usuarios 
   TABLE DATA           `   COPY public.usuarios (id, nombre, email, tipo, fecha_registro, telefono, direccion) FROM stdin;
    public               postgres    false    220   1O       w           0    0    activosfijos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.activosfijos_id_seq', 1, false);
          public               postgres    false    217            x           0    0    atenciones_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.atenciones_id_seq', 1, false);
          public               postgres    false    227            y           0    0    autor_editorial_libro_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.autor_editorial_libro_id_seq', 3, true);
          public               postgres    false    229            z           0    0    autores_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.autores_id_seq', 2, true);
          public               postgres    false    223            {           0    0    editorial_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.editorial_id_seq', 2, true);
          public               postgres    false    225            |           0    0    libros_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.libros_id_seq', 4, true);
          public               postgres    false    221            }           0    0    prestamos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.prestamos_id_seq', 1, false);
          public               postgres    false    231            ~           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);
          public               postgres    false    219            �           2606    16599    activosfijos activosfijos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.activosfijos
    ADD CONSTRAINT activosfijos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.activosfijos DROP CONSTRAINT activosfijos_pkey;
       public                 postgres    false    218            �           2606    16636    atenciones atenciones_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.atenciones
    ADD CONSTRAINT atenciones_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.atenciones DROP CONSTRAINT atenciones_pkey;
       public                 postgres    false    228            �           2606    16653 0   autor_editorial_libro autor_editorial_libro_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.autor_editorial_libro
    ADD CONSTRAINT autor_editorial_libro_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.autor_editorial_libro DROP CONSTRAINT autor_editorial_libro_pkey;
       public                 postgres    false    230            �           2606    16622    autores autores_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.autores
    ADD CONSTRAINT autores_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.autores DROP CONSTRAINT autores_pkey;
       public                 postgres    false    224            �           2606    16629    editorial editorial_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.editorial
    ADD CONSTRAINT editorial_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.editorial DROP CONSTRAINT editorial_pkey;
       public                 postgres    false    226            �           2606    16615    libros libros_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.libros DROP CONSTRAINT libros_pkey;
       public                 postgres    false    222            �           2606    16676    prestamos prestamos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.prestamos DROP CONSTRAINT prestamos_pkey;
       public                 postgres    false    232            �           2606    16608    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public                 postgres    false    220            �           2606    16642 #   atenciones atenciones_libro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.atenciones
    ADD CONSTRAINT atenciones_libro_id_fkey FOREIGN KEY (libro_id) REFERENCES public.libros(id);
 M   ALTER TABLE ONLY public.atenciones DROP CONSTRAINT atenciones_libro_id_fkey;
       public               postgres    false    4790    228    222            �           2606    16637 %   atenciones atenciones_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.atenciones
    ADD CONSTRAINT atenciones_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);
 O   ALTER TABLE ONLY public.atenciones DROP CONSTRAINT atenciones_usuario_id_fkey;
       public               postgres    false    4788    228    220            �           2606    16654 9   autor_editorial_libro autor_editorial_libro_autor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.autor_editorial_libro
    ADD CONSTRAINT autor_editorial_libro_autor_id_fkey FOREIGN KEY (autor_id) REFERENCES public.autores(id);
 c   ALTER TABLE ONLY public.autor_editorial_libro DROP CONSTRAINT autor_editorial_libro_autor_id_fkey;
       public               postgres    false    224    4792    230            �           2606    16659 =   autor_editorial_libro autor_editorial_libro_editorial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.autor_editorial_libro
    ADD CONSTRAINT autor_editorial_libro_editorial_id_fkey FOREIGN KEY (editorial_id) REFERENCES public.editorial(id);
 g   ALTER TABLE ONLY public.autor_editorial_libro DROP CONSTRAINT autor_editorial_libro_editorial_id_fkey;
       public               postgres    false    226    230    4794            �           2606    16664 9   autor_editorial_libro autor_editorial_libro_libro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.autor_editorial_libro
    ADD CONSTRAINT autor_editorial_libro_libro_id_fkey FOREIGN KEY (libro_id) REFERENCES public.libros(id);
 c   ALTER TABLE ONLY public.autor_editorial_libro DROP CONSTRAINT autor_editorial_libro_libro_id_fkey;
       public               postgres    false    230    4790    222            �           2606    16682 !   prestamos prestamos_libro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_libro_id_fkey FOREIGN KEY (libro_id) REFERENCES public.libros(id);
 K   ALTER TABLE ONLY public.prestamos DROP CONSTRAINT prestamos_libro_id_fkey;
       public               postgres    false    4790    222    232            �           2606    16677 #   prestamos prestamos_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);
 M   ALTER TABLE ONLY public.prestamos DROP CONSTRAINT prestamos_usuario_id_fkey;
       public               postgres    false    4788    220    232            Z      x������ � �      d      x������ � �      f   !   x�3�4�4�?.#0��4�p��=... k��      `   1   x�3�����L�U�H�N-.HM,J�2�*MJ�SpI,������� �      b       x�3�HM,*���2�H��������� Xi      ^   B   x�3���M�W�T�*��L-I�4�4�2�t)JL��KJ��s:V�����y&�1~����� �R�      h      x������ � �      \      x������ � �     