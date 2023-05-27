PGDMP                         {            pokedex    10.23    10.23 O    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            W           1262    16720    pokedex    DATABASE     �   CREATE DATABASE pokedex WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE pokedex;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            X           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            Y           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16745 
   categorias    TABLE     p   CREATE TABLE public.categorias (
    categoria_id integer NOT NULL,
    categoria character varying NOT NULL
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
       public       postgres    false    3    201            Z           0    0    categorias_categoria_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categorias_categoria_id_seq OWNED BY public.categorias.categoria_id;
            public       postgres    false    200            �            1259    16756 	   fraquezas    TABLE     n   CREATE TABLE public.fraquezas (
    fraquezas_id integer NOT NULL,
    fraqueza character varying NOT NULL
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
       public       postgres    false    3    203            [           0    0    fraquezas_fraqueza_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.fraquezas_fraqueza_id_seq OWNED BY public.fraquezas.fraquezas_id;
            public       postgres    false    202            �            1259    16723    generos    TABLE     g   CREATE TABLE public.generos (
    genero_id integer NOT NULL,
    genero character varying NOT NULL
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
       public       postgres    false    197    3            \           0    0    generos_genero_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.generos_genero_id_seq OWNED BY public.generos.genero_id;
            public       postgres    false    196            �            1259    16793    habilidades    TABLE     s   CREATE TABLE public.habilidades (
    habilidade_id integer NOT NULL,
    habilidade character varying NOT NULL
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
       public       postgres    false    207    3            ]           0    0    habilidades_habilidade_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.habilidades_habilidade_id_seq OWNED BY public.habilidades.habilidade_id;
            public       postgres    false    206            �            1259    16804    pokemon_fraquezas    TABLE     �   CREATE TABLE public.pokemon_fraquezas (
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
       public       postgres    false    3    209            ^           0    0 )   pokemon_fraquezas_pokemon_fraqueza_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.pokemon_fraquezas_pokemon_fraqueza_id_seq OWNED BY public.pokemon_fraquezas.pokemon_fraqueza_id;
            public       postgres    false    208            �            1259    16840    pokemon_habilidades    TABLE     �   CREATE TABLE public.pokemon_habilidades (
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
       public       postgres    false    3    213            _           0    0 .   pokemon_habilidades_pokemon_habilidades_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.pokemon_habilidades_pokemon_habilidades_id_seq OWNED BY public.pokemon_habilidades.pokemon_habilidades_id;
            public       postgres    false    212            �            1259    16772    pokemon_info    TABLE       CREATE TABLE public.pokemon_info (
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
    velocidade integer NOT NULL
);
     DROP TABLE public.pokemon_info;
       public         postgres    false    3            �            1259    16770    pokemon_info_pokemon_info_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_info_pokemon_info_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.pokemon_info_pokemon_info_seq;
       public       postgres    false    3    205            `           0    0    pokemon_info_pokemon_info_seq    SEQUENCE OWNED BY     b   ALTER SEQUENCE public.pokemon_info_pokemon_info_seq OWNED BY public.pokemon_info.pokemon_info_id;
            public       postgres    false    204            �            1259    16822    pokemon_tipagem    TABLE     �   CREATE TABLE public.pokemon_tipagem (
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
       public       postgres    false    211    3            a           0    0 &   pokemon_tipagem_pokemon_tipagem_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.pokemon_tipagem_pokemon_tipagem_id_seq OWNED BY public.pokemon_tipagem.pokemon_tipagem_id;
            public       postgres    false    210            �            1259    16734    tipagem    TABLE     f   CREATE TABLE public.tipagem (
    tipagem_id integer NOT NULL,
    tipo character varying NOT NULL
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
       public       postgres    false    199    3            b           0    0    tipagem_tipagem_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tipagem_tipagem_id_seq OWNED BY public.tipagem.tipagem_id;
            public       postgres    false    198            �
           2604    16748    categorias categoria_id    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN categoria_id SET DEFAULT nextval('public.categorias_categoria_id_seq'::regclass);
 F   ALTER TABLE public.categorias ALTER COLUMN categoria_id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    16759    fraquezas fraquezas_id    DEFAULT        ALTER TABLE ONLY public.fraquezas ALTER COLUMN fraquezas_id SET DEFAULT nextval('public.fraquezas_fraqueza_id_seq'::regclass);
 E   ALTER TABLE public.fraquezas ALTER COLUMN fraquezas_id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    16726    generos genero_id    DEFAULT     v   ALTER TABLE ONLY public.generos ALTER COLUMN genero_id SET DEFAULT nextval('public.generos_genero_id_seq'::regclass);
 @   ALTER TABLE public.generos ALTER COLUMN genero_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    16796    habilidades habilidade_id    DEFAULT     �   ALTER TABLE ONLY public.habilidades ALTER COLUMN habilidade_id SET DEFAULT nextval('public.habilidades_habilidade_id_seq'::regclass);
 H   ALTER TABLE public.habilidades ALTER COLUMN habilidade_id DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    16807 %   pokemon_fraquezas pokemon_fraqueza_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_fraquezas ALTER COLUMN pokemon_fraqueza_id SET DEFAULT nextval('public.pokemon_fraquezas_pokemon_fraqueza_id_seq'::regclass);
 T   ALTER TABLE public.pokemon_fraquezas ALTER COLUMN pokemon_fraqueza_id DROP DEFAULT;
       public       postgres    false    208    209    209            �
           2604    16843 *   pokemon_habilidades pokemon_habilidades_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_habilidades ALTER COLUMN pokemon_habilidades_id SET DEFAULT nextval('public.pokemon_habilidades_pokemon_habilidades_id_seq'::regclass);
 Y   ALTER TABLE public.pokemon_habilidades ALTER COLUMN pokemon_habilidades_id DROP DEFAULT;
       public       postgres    false    213    212    213            �
           2604    16775    pokemon_info pokemon_info_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_info ALTER COLUMN pokemon_info_id SET DEFAULT nextval('public.pokemon_info_pokemon_info_seq'::regclass);
 K   ALTER TABLE public.pokemon_info ALTER COLUMN pokemon_info_id DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    16825 "   pokemon_tipagem pokemon_tipagem_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_tipagem ALTER COLUMN pokemon_tipagem_id SET DEFAULT nextval('public.pokemon_tipagem_pokemon_tipagem_id_seq'::regclass);
 Q   ALTER TABLE public.pokemon_tipagem ALTER COLUMN pokemon_tipagem_id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    16737    tipagem tipagem_id    DEFAULT     x   ALTER TABLE ONLY public.tipagem ALTER COLUMN tipagem_id SET DEFAULT nextval('public.tipagem_tipagem_id_seq'::regclass);
 A   ALTER TABLE public.tipagem ALTER COLUMN tipagem_id DROP DEFAULT;
       public       postgres    false    198    199    199            E          0    16745 
   categorias 
   TABLE DATA               =   COPY public.categorias (categoria_id, categoria) FROM stdin;
    public       postgres    false    201   ^       G          0    16756 	   fraquezas 
   TABLE DATA               ;   COPY public.fraquezas (fraquezas_id, fraqueza) FROM stdin;
    public       postgres    false    203   '^       A          0    16723    generos 
   TABLE DATA               4   COPY public.generos (genero_id, genero) FROM stdin;
    public       postgres    false    197   Z^       K          0    16793    habilidades 
   TABLE DATA               @   COPY public.habilidades (habilidade_id, habilidade) FROM stdin;
    public       postgres    false    207   �^       M          0    16804    pokemon_fraquezas 
   TABLE DATA               _   COPY public.pokemon_fraquezas (pokemon_fraqueza_id, pokemon_info_id, fraquezas_id) FROM stdin;
    public       postgres    false    209   �^       Q          0    16840    pokemon_habilidades 
   TABLE DATA               e   COPY public.pokemon_habilidades (pokemon_habilidades_id, pokemon_info_id, habilidade_id) FROM stdin;
    public       postgres    false    213   �^       I          0    16772    pokemon_info 
   TABLE DATA               �   COPY public.pokemon_info (pokemon_info_id, nome, descricao, altura, peso, categoria_id, genero_id, total, hp, ataque, defesa, especial_ataque, especial_defesa, velocidade) FROM stdin;
    public       postgres    false    205   _       O          0    16822    pokemon_tipagem 
   TABLE DATA               Z   COPY public.pokemon_tipagem (pokemon_tipagem_id, pokemon_info_id, tipagem_id) FROM stdin;
    public       postgres    false    211   �_       C          0    16734    tipagem 
   TABLE DATA               3   COPY public.tipagem (tipagem_id, tipo) FROM stdin;
    public       postgres    false    199   �_       c           0    0    categorias_categoria_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categorias_categoria_id_seq', 1, true);
            public       postgres    false    200            d           0    0    fraquezas_fraqueza_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.fraquezas_fraqueza_id_seq', 3, true);
            public       postgres    false    202            e           0    0    generos_genero_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.generos_genero_id_seq', 4, true);
            public       postgres    false    196            f           0    0    habilidades_habilidade_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.habilidades_habilidade_id_seq', 1, true);
            public       postgres    false    206            g           0    0 )   pokemon_fraquezas_pokemon_fraqueza_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.pokemon_fraquezas_pokemon_fraqueza_id_seq', 3, true);
            public       postgres    false    208            h           0    0 .   pokemon_habilidades_pokemon_habilidades_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.pokemon_habilidades_pokemon_habilidades_id_seq', 1, true);
            public       postgres    false    212            i           0    0    pokemon_info_pokemon_info_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pokemon_info_pokemon_info_seq', 1, true);
            public       postgres    false    204            j           0    0 &   pokemon_tipagem_pokemon_tipagem_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.pokemon_tipagem_pokemon_tipagem_id_seq', 1, true);
            public       postgres    false    210            k           0    0    tipagem_tipagem_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipagem_tipagem_id_seq', 1, true);
            public       postgres    false    198            �
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
       public         postgres    false    207            �
           2606    16809 (   pokemon_fraquezas pokemon_fraquezas_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT pokemon_fraquezas_pkey PRIMARY KEY (pokemon_fraqueza_id);
 R   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT pokemon_fraquezas_pkey;
       public         postgres    false    209            �
           2606    16845 ,   pokemon_habilidades pokemon_habilidades_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT pokemon_habilidades_pkey PRIMARY KEY (pokemon_habilidades_id);
 V   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT pokemon_habilidades_pkey;
       public         postgres    false    213            �
           2606    16780    pokemon_info pokemon_info_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT pokemon_info_pkey PRIMARY KEY (pokemon_info_id);
 H   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT pokemon_info_pkey;
       public         postgres    false    205            �
           2606    16827 $   pokemon_tipagem pokemon_tipagem_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT pokemon_tipagem_pkey PRIMARY KEY (pokemon_tipagem_id);
 N   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT pokemon_tipagem_pkey;
       public         postgres    false    211            �
           2606    16742    tipagem tipagem_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tipagem
    ADD CONSTRAINT tipagem_pkey PRIMARY KEY (tipagem_id);
 >   ALTER TABLE ONLY public.tipagem DROP CONSTRAINT tipagem_pkey;
       public         postgres    false    199            �
           2606    16786    pokemon_info categoria_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT categoria_id_fk FOREIGN KEY (categoria_id) REFERENCES public.categorias(categoria_id);
 F   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT categoria_id_fk;
       public       postgres    false    205    2738    201            �
           2606    16815 !   pokemon_fraquezas fraquezas_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT fraquezas_id_fk FOREIGN KEY (fraquezas_id) REFERENCES public.fraquezas(fraquezas_id);
 K   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT fraquezas_id_fk;
       public       postgres    false    203    2740    209            �
           2606    16781    pokemon_info genero_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT genero_id_fk FOREIGN KEY (genero_id) REFERENCES public.generos(genero_id);
 C   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT genero_id_fk;
       public       postgres    false    2734    197    205            �
           2606    16851 $   pokemon_habilidades habilidade_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT habilidade_id_fk FOREIGN KEY (habilidade_id) REFERENCES public.habilidades(habilidade_id);
 N   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT habilidade_id_fk;
       public       postgres    false    207    213    2744            �
           2606    16810 $   pokemon_fraquezas pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 N   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT pokemon_info_id_fk;
       public       postgres    false    205    209    2742            �
           2606    16828 "   pokemon_tipagem pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 L   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT pokemon_info_id_fk;
       public       postgres    false    205    2742    211            �
           2606    16846 &   pokemon_habilidades pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 P   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT pokemon_info_id_fk;
       public       postgres    false    213    205    2742            �
           2606    16833    pokemon_tipagem tipagem_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT tipagem_id_fk FOREIGN KEY (tipagem_id) REFERENCES public.tipagem(tipagem_id);
 G   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT tipagem_id_fk;
       public       postgres    false    2736    199    211            E      x�3��ɬJ,J����� �S      G   #   x�3�<ܘ^��e��ZT��e����c���� ��      A   8   x�3��M,N.�����2�tK���1�9s��L8]R����2R�3S�b���� �Y      K      x�3�t�O������ �x      M      x�3�4�4�2�F\�@Ҙ+F��� !��      Q      x�3�4�4����� �X      I   �   x�U�1�0��9�? �!U;3q�:$M��ܟ�����Vxl�Vt7V0�!Y��� ���Vj{�ǣHC5�MOP�P�u�u�޿�<�v��=Aa\?��O˿�f��L�bX(.�.t�4J����9�A0m      O      x�3�4�4����� �X      C      x�3�t�O������ �x     