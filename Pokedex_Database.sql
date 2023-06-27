PGDMP                         {            pokedex    10.23    10.23 Z    h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            k           1262    16720    pokedex    DATABASE     �   CREATE DATABASE pokedex WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE pokedex;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            l           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            m           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16881    administradores    TABLE     p   CREATE TABLE public.administradores (
    administrador_id integer NOT NULL,
    usuario_id integer NOT NULL
);
 #   DROP TABLE public.administradores;
       public         postgres    false    3            �            1259    16879 $   administradores_administrador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.administradores_administrador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.administradores_administrador_id_seq;
       public       postgres    false    216    3            n           0    0 $   administradores_administrador_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.administradores_administrador_id_seq OWNED BY public.administradores.administrador_id;
            public       postgres    false    215            �            1259    16745 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    categoria_id integer NOT NULL,
    categoria character varying NOT NULL,
    imagem_categoria character varying,
    descricao character varying
);
    DROP TABLE public.categorias;
       public         postgres    false    3            �            1259    16743    categorias_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.categorias_categoria_id_seq;
       public       postgres    false    201    3            o           0    0    categorias_categoria_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categorias_categoria_id_seq OWNED BY public.categorias.categoria_id;
            public       postgres    false    200            �            1259    16756 	   fraquezas    TABLE     �   CREATE TABLE public.fraquezas (
    fraquezas_id integer NOT NULL,
    fraqueza character varying NOT NULL,
    imagem_fraqueza character varying,
    descricao character varying
);
    DROP TABLE public.fraquezas;
       public         postgres    false    3            �            1259    16754    fraquezas_fraqueza_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fraquezas_fraqueza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.fraquezas_fraqueza_id_seq;
       public       postgres    false    3    203            p           0    0    fraquezas_fraqueza_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.fraquezas_fraqueza_id_seq OWNED BY public.fraquezas.fraquezas_id;
            public       postgres    false    202            �            1259    16723    generos    TABLE     �   CREATE TABLE public.generos (
    genero_id integer NOT NULL,
    genero character varying NOT NULL,
    imagem_genero character varying
);
    DROP TABLE public.generos;
       public         postgres    false    3            �            1259    16721    generos_genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.generos_genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.generos_genero_id_seq;
       public       postgres    false    197    3            q           0    0    generos_genero_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.generos_genero_id_seq OWNED BY public.generos.genero_id;
            public       postgres    false    196            �            1259    16793    habilidades    TABLE     �   CREATE TABLE public.habilidades (
    habilidade_id integer NOT NULL,
    habilidade character varying NOT NULL,
    imagem_habilidade character varying,
    descricao character varying
);
    DROP TABLE public.habilidades;
       public         postgres    false    3            �            1259    16791    habilidades_habilidade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.habilidades_habilidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.habilidades_habilidade_id_seq;
       public       postgres    false    206    3            r           0    0    habilidades_habilidade_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.habilidades_habilidade_id_seq OWNED BY public.habilidades.habilidade_id;
            public       postgres    false    205            �            1259    16804    pokemon_fraquezas    TABLE     �   CREATE TABLE public.pokemon_fraquezas (
    pokemon_fraqueza_id integer NOT NULL,
    pokemon_info_id integer NOT NULL,
    fraquezas_id integer NOT NULL
);
 %   DROP TABLE public.pokemon_fraquezas;
       public         postgres    false    3            �            1259    16802 )   pokemon_fraquezas_pokemon_fraqueza_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_fraquezas_pokemon_fraqueza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.pokemon_fraquezas_pokemon_fraqueza_id_seq;
       public       postgres    false    3    208            s           0    0 )   pokemon_fraquezas_pokemon_fraqueza_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.pokemon_fraquezas_pokemon_fraqueza_id_seq OWNED BY public.pokemon_fraquezas.pokemon_fraqueza_id;
            public       postgres    false    207            �            1259    16840    pokemon_habilidades    TABLE     �   CREATE TABLE public.pokemon_habilidades (
    pokemon_habilidades_id integer NOT NULL,
    pokemon_info_id integer NOT NULL,
    habilidade_id integer NOT NULL
);
 '   DROP TABLE public.pokemon_habilidades;
       public         postgres    false    3            �            1259    16838 .   pokemon_habilidades_pokemon_habilidades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_habilidades_pokemon_habilidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.pokemon_habilidades_pokemon_habilidades_id_seq;
       public       postgres    false    212    3            t           0    0 .   pokemon_habilidades_pokemon_habilidades_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.pokemon_habilidades_pokemon_habilidades_id_seq OWNED BY public.pokemon_habilidades.pokemon_habilidades_id;
            public       postgres    false    211            �            1259    16772    pokemon_info    TABLE     =  CREATE TABLE public.pokemon_info (
    pokemon_info_id integer NOT NULL,
    nome character varying NOT NULL,
    descricao character varying NOT NULL,
    altura double precision NOT NULL,
    peso double precision NOT NULL,
    categoria_id integer NOT NULL,
    genero_id integer NOT NULL,
    total integer NOT NULL,
    hp integer NOT NULL,
    ataque integer NOT NULL,
    defesa integer NOT NULL,
    especial_ataque integer NOT NULL,
    especial_defesa integer NOT NULL,
    velocidade integer NOT NULL,
    imagem character varying,
    numero_pokemon integer
);
     DROP TABLE public.pokemon_info;
       public         postgres    false    3            �            1259    16822    pokemon_tipagem    TABLE     �   CREATE TABLE public.pokemon_tipagem (
    pokemon_tipagem_id integer NOT NULL,
    pokemon_info_id integer NOT NULL,
    tipagem_id integer NOT NULL
);
 #   DROP TABLE public.pokemon_tipagem;
       public         postgres    false    3            �            1259    16820 &   pokemon_tipagem_pokemon_tipagem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_tipagem_pokemon_tipagem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.pokemon_tipagem_pokemon_tipagem_id_seq;
       public       postgres    false    210    3            u           0    0 &   pokemon_tipagem_pokemon_tipagem_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.pokemon_tipagem_pokemon_tipagem_id_seq OWNED BY public.pokemon_tipagem.pokemon_tipagem_id;
            public       postgres    false    209            �            1259    16734    tipagem    TABLE     �   CREATE TABLE public.tipagem (
    tipagem_id integer NOT NULL,
    tipo character varying NOT NULL,
    imagem_tipagem character varying,
    descricao character varying
);
    DROP TABLE public.tipagem;
       public         postgres    false    3            �            1259    16732    tipagem_tipagem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipagem_tipagem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tipagem_tipagem_id_seq;
       public       postgres    false    199    3            v           0    0    tipagem_tipagem_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tipagem_tipagem_id_seq OWNED BY public.tipagem.tipagem_id;
            public       postgres    false    198            �            1259    16865    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    user_id integer NOT NULL,
    nome character varying NOT NULL,
    senha character varying NOT NULL
);
    DROP TABLE public.usuarios;
       public         postgres    false    3            �            1259    16863    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public       postgres    false    3    214            w           0    0    user_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.user_user_id_seq OWNED BY public.usuarios.user_id;
            public       postgres    false    213            �
           2604    16884     administradores administrador_id    DEFAULT     �   ALTER TABLE ONLY public.administradores ALTER COLUMN administrador_id SET DEFAULT nextval('public.administradores_administrador_id_seq'::regclass);
 O   ALTER TABLE public.administradores ALTER COLUMN administrador_id DROP DEFAULT;
       public       postgres    false    216    215    216            �
           2604    16748    categorias categoria_id    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN categoria_id SET DEFAULT nextval('public.categorias_categoria_id_seq'::regclass);
 F   ALTER TABLE public.categorias ALTER COLUMN categoria_id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    16759    fraquezas fraquezas_id    DEFAULT        ALTER TABLE ONLY public.fraquezas ALTER COLUMN fraquezas_id SET DEFAULT nextval('public.fraquezas_fraqueza_id_seq'::regclass);
 E   ALTER TABLE public.fraquezas ALTER COLUMN fraquezas_id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    16726    generos genero_id    DEFAULT     v   ALTER TABLE ONLY public.generos ALTER COLUMN genero_id SET DEFAULT nextval('public.generos_genero_id_seq'::regclass);
 @   ALTER TABLE public.generos ALTER COLUMN genero_id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    16796    habilidades habilidade_id    DEFAULT     �   ALTER TABLE ONLY public.habilidades ALTER COLUMN habilidade_id SET DEFAULT nextval('public.habilidades_habilidade_id_seq'::regclass);
 H   ALTER TABLE public.habilidades ALTER COLUMN habilidade_id DROP DEFAULT;
       public       postgres    false    206    205    206            �
           2604    16807 %   pokemon_fraquezas pokemon_fraqueza_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_fraquezas ALTER COLUMN pokemon_fraqueza_id SET DEFAULT nextval('public.pokemon_fraquezas_pokemon_fraqueza_id_seq'::regclass);
 T   ALTER TABLE public.pokemon_fraquezas ALTER COLUMN pokemon_fraqueza_id DROP DEFAULT;
       public       postgres    false    207    208    208            �
           2604    16843 *   pokemon_habilidades pokemon_habilidades_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_habilidades ALTER COLUMN pokemon_habilidades_id SET DEFAULT nextval('public.pokemon_habilidades_pokemon_habilidades_id_seq'::regclass);
 Y   ALTER TABLE public.pokemon_habilidades ALTER COLUMN pokemon_habilidades_id DROP DEFAULT;
       public       postgres    false    212    211    212            �
           2604    16825 "   pokemon_tipagem pokemon_tipagem_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_tipagem ALTER COLUMN pokemon_tipagem_id SET DEFAULT nextval('public.pokemon_tipagem_pokemon_tipagem_id_seq'::regclass);
 Q   ALTER TABLE public.pokemon_tipagem ALTER COLUMN pokemon_tipagem_id DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    16737    tipagem tipagem_id    DEFAULT     x   ALTER TABLE ONLY public.tipagem ALTER COLUMN tipagem_id SET DEFAULT nextval('public.tipagem_tipagem_id_seq'::regclass);
 A   ALTER TABLE public.tipagem ALTER COLUMN tipagem_id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    16868    usuarios user_id    DEFAULT     p   ALTER TABLE ONLY public.usuarios ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 ?   ALTER TABLE public.usuarios ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    213    214    214            e          0    16881    administradores 
   TABLE DATA               G   COPY public.administradores (administrador_id, usuario_id) FROM stdin;
    public       postgres    false    216   �l       V          0    16745 
   categorias 
   TABLE DATA               Z   COPY public.categorias (categoria_id, categoria, imagem_categoria, descricao) FROM stdin;
    public       postgres    false    201   �l       X          0    16756 	   fraquezas 
   TABLE DATA               W   COPY public.fraquezas (fraquezas_id, fraqueza, imagem_fraqueza, descricao) FROM stdin;
    public       postgres    false    203   �l       R          0    16723    generos 
   TABLE DATA               C   COPY public.generos (genero_id, genero, imagem_genero) FROM stdin;
    public       postgres    false    197   m       [          0    16793    habilidades 
   TABLE DATA               ^   COPY public.habilidades (habilidade_id, habilidade, imagem_habilidade, descricao) FROM stdin;
    public       postgres    false    206   Nm       ]          0    16804    pokemon_fraquezas 
   TABLE DATA               _   COPY public.pokemon_fraquezas (pokemon_fraqueza_id, pokemon_info_id, fraquezas_id) FROM stdin;
    public       postgres    false    208   vm       a          0    16840    pokemon_habilidades 
   TABLE DATA               e   COPY public.pokemon_habilidades (pokemon_habilidades_id, pokemon_info_id, habilidade_id) FROM stdin;
    public       postgres    false    212   �m       Y          0    16772    pokemon_info 
   TABLE DATA               �   COPY public.pokemon_info (pokemon_info_id, nome, descricao, altura, peso, categoria_id, genero_id, total, hp, ataque, defesa, especial_ataque, especial_defesa, velocidade, imagem, numero_pokemon) FROM stdin;
    public       postgres    false    204   �m       _          0    16822    pokemon_tipagem 
   TABLE DATA               Z   COPY public.pokemon_tipagem (pokemon_tipagem_id, pokemon_info_id, tipagem_id) FROM stdin;
    public       postgres    false    210   �n       T          0    16734    tipagem 
   TABLE DATA               N   COPY public.tipagem (tipagem_id, tipo, imagem_tipagem, descricao) FROM stdin;
    public       postgres    false    199   �n       c          0    16865    usuarios 
   TABLE DATA               8   COPY public.usuarios (user_id, nome, senha) FROM stdin;
    public       postgres    false    214   �n       x           0    0 $   administradores_administrador_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.administradores_administrador_id_seq', 1, true);
            public       postgres    false    215            y           0    0    categorias_categoria_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categorias_categoria_id_seq', 1, true);
            public       postgres    false    200            z           0    0    fraquezas_fraqueza_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.fraquezas_fraqueza_id_seq', 3, true);
            public       postgres    false    202            {           0    0    generos_genero_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.generos_genero_id_seq', 4, true);
            public       postgres    false    196            |           0    0    habilidades_habilidade_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.habilidades_habilidade_id_seq', 1, true);
            public       postgres    false    205            }           0    0 )   pokemon_fraquezas_pokemon_fraqueza_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.pokemon_fraquezas_pokemon_fraqueza_id_seq', 3, true);
            public       postgres    false    207            ~           0    0 .   pokemon_habilidades_pokemon_habilidades_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.pokemon_habilidades_pokemon_habilidades_id_seq', 1, true);
            public       postgres    false    211                       0    0 &   pokemon_tipagem_pokemon_tipagem_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.pokemon_tipagem_pokemon_tipagem_id_seq', 1, true);
            public       postgres    false    209            �           0    0    tipagem_tipagem_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipagem_tipagem_id_seq', 1, true);
            public       postgres    false    198            �           0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);
            public       postgres    false    213            �
           2606    16886 $   administradores administradores_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT administradores_pkey PRIMARY KEY (administrador_id);
 N   ALTER TABLE ONLY public.administradores DROP CONSTRAINT administradores_pkey;
       public         postgres    false    216            �
           2606    16753    categorias categorias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (categoria_id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public         postgres    false    201            �
           2606    16764    fraquezas fraquezas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.fraquezas
    ADD CONSTRAINT fraquezas_pkey PRIMARY KEY (fraquezas_id);
 B   ALTER TABLE ONLY public.fraquezas DROP CONSTRAINT fraquezas_pkey;
       public         postgres    false    203            �
           2606    16731    generos generos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.generos
    ADD CONSTRAINT generos_pkey PRIMARY KEY (genero_id);
 >   ALTER TABLE ONLY public.generos DROP CONSTRAINT generos_pkey;
       public         postgres    false    197            �
           2606    16801    habilidades habilidades_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_pkey PRIMARY KEY (habilidade_id);
 F   ALTER TABLE ONLY public.habilidades DROP CONSTRAINT habilidades_pkey;
       public         postgres    false    206            �
           2606    16809 (   pokemon_fraquezas pokemon_fraquezas_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT pokemon_fraquezas_pkey PRIMARY KEY (pokemon_fraqueza_id);
 R   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT pokemon_fraquezas_pkey;
       public         postgres    false    208            �
           2606    16845 ,   pokemon_habilidades pokemon_habilidades_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT pokemon_habilidades_pkey PRIMARY KEY (pokemon_habilidades_id);
 V   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT pokemon_habilidades_pkey;
       public         postgres    false    212            �
           2606    16780    pokemon_info pokemon_info_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT pokemon_info_pkey PRIMARY KEY (pokemon_info_id);
 H   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT pokemon_info_pkey;
       public         postgres    false    204            �
           2606    16827 $   pokemon_tipagem pokemon_tipagem_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT pokemon_tipagem_pkey PRIMARY KEY (pokemon_tipagem_id);
 N   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT pokemon_tipagem_pkey;
       public         postgres    false    210            �
           2606    16742    tipagem tipagem_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tipagem
    ADD CONSTRAINT tipagem_pkey PRIMARY KEY (tipagem_id);
 >   ALTER TABLE ONLY public.tipagem DROP CONSTRAINT tipagem_pkey;
       public         postgres    false    199            �
           2606    16873    usuarios user_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 <   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT user_pkey;
       public         postgres    false    214            �
           2606    16786    pokemon_info categoria_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT categoria_id_fk FOREIGN KEY (categoria_id) REFERENCES public.categorias(categoria_id);
 F   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT categoria_id_fk;
       public       postgres    false    204    2750    201            �
           2606    16815 !   pokemon_fraquezas fraquezas_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT fraquezas_id_fk FOREIGN KEY (fraquezas_id) REFERENCES public.fraquezas(fraquezas_id);
 K   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT fraquezas_id_fk;
       public       postgres    false    203    208    2752            �
           2606    16781    pokemon_info genero_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT genero_id_fk FOREIGN KEY (genero_id) REFERENCES public.generos(genero_id);
 C   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT genero_id_fk;
       public       postgres    false    197    2746    204            �
           2606    16851 $   pokemon_habilidades habilidade_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT habilidade_id_fk FOREIGN KEY (habilidade_id) REFERENCES public.habilidades(habilidade_id);
 N   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT habilidade_id_fk;
       public       postgres    false    206    2756    212            �
           2606    16810 $   pokemon_fraquezas pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 N   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT pokemon_info_id_fk;
       public       postgres    false    2754    204    208            �
           2606    16828 "   pokemon_tipagem pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 L   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT pokemon_info_id_fk;
       public       postgres    false    210    2754    204            �
           2606    16846 &   pokemon_habilidades pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 P   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT pokemon_info_id_fk;
       public       postgres    false    204    212    2754            �
           2606    16833    pokemon_tipagem tipagem_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT tipagem_id_fk FOREIGN KEY (tipagem_id) REFERENCES public.tipagem(tipagem_id);
 G   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT tipagem_id_fk;
       public       postgres    false    210    199    2748            �
           2606    16887    administradores usuario_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT usuario_id_fk FOREIGN KEY (usuario_id) REFERENCES public.usuarios(user_id);
 G   ALTER TABLE ONLY public.administradores DROP CONSTRAINT usuario_id_fk;
       public       postgres    false    214    2764    216            e      x�3�4����� ]      V      x�3��ɬJ,J�tL"�=... 8��      X   '   x�3�<ܘ^���B\F�!�EE0�1g@j
����� :��      R   <   x�3��M,N.�������2�tK��̃�9s��ALN�����������d� ]�%      [      x�3�t�O��tL"�=... )@�      ]      x�3�4�4�2�F\�@Ҙ+F��� !��      a      x�3�4�4����� �X      Y   �   x�U�AN�0EדS��v��j��H,ٌ�i�=�cW�#q.F#�᯾��o���j���',��\�sX	�T�*)~t΍��s���"7~��~=*oo�	oR+a����Q;a�ɀ3~��#��&���~�	�������'kI���"�$� �o�!�ή�b7�Ӟ��j�ۛ�/0�f�_�H�      _      x�3�4�4����� �X      T      x�3�t�O��tL"�=... )@�      c      x�3�tM)M,J��442����� 2�P     