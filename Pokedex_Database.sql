PGDMP     -    
                {            pokedex     14.7 (Ubuntu 14.7-1.pgdg22.04+1)     15.2 (Ubuntu 15.2-1.pgdg22.04+1) X    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16780    pokedex    DATABASE     s   CREATE DATABASE pokedex WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE pokedex;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    16781 
   categorias    TABLE     p   CREATE TABLE public.categorias (
    categoria_id integer NOT NULL,
    categoria character varying NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false    4            �            1259    16786    categorias_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.categorias_categoria_id_seq;
       public          postgres    false    4    209            �           0    0    categorias_categoria_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categorias_categoria_id_seq OWNED BY public.categorias.categoria_id;
          public          postgres    false    210            �            1259    16787 	   fraquezas    TABLE     n   CREATE TABLE public.fraquezas (
    fraquezas_id integer NOT NULL,
    fraqueza character varying NOT NULL
);
    DROP TABLE public.fraquezas;
       public         heap    postgres    false    4            �            1259    16792    fraquezas_fraqueza_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fraquezas_fraqueza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.fraquezas_fraqueza_id_seq;
       public          postgres    false    4    211            �           0    0    fraquezas_fraqueza_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.fraquezas_fraqueza_id_seq OWNED BY public.fraquezas.fraquezas_id;
          public          postgres    false    212            �            1259    16793    generos    TABLE     g   CREATE TABLE public.generos (
    genero_id integer NOT NULL,
    genero character varying NOT NULL
);
    DROP TABLE public.generos;
       public         heap    postgres    false    4            �            1259    16798    generos_genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.generos_genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.generos_genero_id_seq;
       public          postgres    false    213    4            �           0    0    generos_genero_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.generos_genero_id_seq OWNED BY public.generos.genero_id;
          public          postgres    false    214            �            1259    16799    habilidades    TABLE     s   CREATE TABLE public.habilidades (
    habilidade_id integer NOT NULL,
    habilidade character varying NOT NULL
);
    DROP TABLE public.habilidades;
       public         heap    postgres    false    4            �            1259    16804    habilidades_habilidade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.habilidades_habilidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.habilidades_habilidade_id_seq;
       public          postgres    false    4    215            �           0    0    habilidades_habilidade_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.habilidades_habilidade_id_seq OWNED BY public.habilidades.habilidade_id;
          public          postgres    false    216            �            1259    16805    pokemon_fraquezas    TABLE     �   CREATE TABLE public.pokemon_fraquezas (
    pokemon_fraqueza_id integer NOT NULL,
    pokemon_info_id integer NOT NULL,
    fraquezas_id integer NOT NULL
);
 %   DROP TABLE public.pokemon_fraquezas;
       public         heap    postgres    false    4            �            1259    16808 )   pokemon_fraquezas_pokemon_fraqueza_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_fraquezas_pokemon_fraqueza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.pokemon_fraquezas_pokemon_fraqueza_id_seq;
       public          postgres    false    217    4            �           0    0 )   pokemon_fraquezas_pokemon_fraqueza_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.pokemon_fraquezas_pokemon_fraqueza_id_seq OWNED BY public.pokemon_fraquezas.pokemon_fraqueza_id;
          public          postgres    false    218            �            1259    16809    pokemon_habilidades    TABLE     �   CREATE TABLE public.pokemon_habilidades (
    pokemon_habilidades_id integer NOT NULL,
    pokemon_info_id integer NOT NULL,
    habilidade_id integer NOT NULL
);
 '   DROP TABLE public.pokemon_habilidades;
       public         heap    postgres    false    4            �            1259    16812 .   pokemon_habilidades_pokemon_habilidades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_habilidades_pokemon_habilidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.pokemon_habilidades_pokemon_habilidades_id_seq;
       public          postgres    false    219    4            �           0    0 .   pokemon_habilidades_pokemon_habilidades_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.pokemon_habilidades_pokemon_habilidades_id_seq OWNED BY public.pokemon_habilidades.pokemon_habilidades_id;
          public          postgres    false    220            �            1259    16911    pokemon_imgs    TABLE     �   CREATE TABLE public.pokemon_imgs (
    pokemon_imgs_id integer NOT NULL,
    pokemon_info_id integer NOT NULL,
    url character varying(1000) NOT NULL
);
     DROP TABLE public.pokemon_imgs;
       public         heap    postgres    false    4            �            1259    16910     pokemon_imgs_pokemon_imgs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_imgs_pokemon_imgs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.pokemon_imgs_pokemon_imgs_id_seq;
       public          postgres    false    229    4            �           0    0     pokemon_imgs_pokemon_imgs_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.pokemon_imgs_pokemon_imgs_id_seq OWNED BY public.pokemon_imgs.pokemon_imgs_id;
          public          postgres    false    228            �            1259    16813    pokemon_info    TABLE       CREATE TABLE public.pokemon_info (
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
       public         heap    postgres    false    4            �            1259    16818    pokemon_tipagem    TABLE     �   CREATE TABLE public.pokemon_tipagem (
    pokemon_tipagem_id integer NOT NULL,
    pokemon_info_id integer NOT NULL,
    tipagem_id integer NOT NULL
);
 #   DROP TABLE public.pokemon_tipagem;
       public         heap    postgres    false    4            �            1259    16821 &   pokemon_tipagem_pokemon_tipagem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_tipagem_pokemon_tipagem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.pokemon_tipagem_pokemon_tipagem_id_seq;
       public          postgres    false    4    222            �           0    0 &   pokemon_tipagem_pokemon_tipagem_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.pokemon_tipagem_pokemon_tipagem_id_seq OWNED BY public.pokemon_tipagem.pokemon_tipagem_id;
          public          postgres    false    223            �            1259    16822    tipagem    TABLE     f   CREATE TABLE public.tipagem (
    tipagem_id integer NOT NULL,
    tipo character varying NOT NULL
);
    DROP TABLE public.tipagem;
       public         heap    postgres    false    4            �            1259    16827    tipagem_tipagem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipagem_tipagem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tipagem_tipagem_id_seq;
       public          postgres    false    4    224            �           0    0    tipagem_tipagem_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tipagem_tipagem_id_seq OWNED BY public.tipagem.tipagem_id;
          public          postgres    false    225            �            1259    16828    user    TABLE     �   CREATE TABLE public."user" (
    user_id integer NOT NULL,
    nome character varying NOT NULL,
    senha character varying NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false    4            �            1259    16833    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public          postgres    false    226    4            �           0    0    user_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user".user_id;
          public          postgres    false    227            �           2604    16834    categorias categoria_id    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN categoria_id SET DEFAULT nextval('public.categorias_categoria_id_seq'::regclass);
 F   ALTER TABLE public.categorias ALTER COLUMN categoria_id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16835    fraquezas fraquezas_id    DEFAULT        ALTER TABLE ONLY public.fraquezas ALTER COLUMN fraquezas_id SET DEFAULT nextval('public.fraquezas_fraqueza_id_seq'::regclass);
 E   ALTER TABLE public.fraquezas ALTER COLUMN fraquezas_id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16836    generos genero_id    DEFAULT     v   ALTER TABLE ONLY public.generos ALTER COLUMN genero_id SET DEFAULT nextval('public.generos_genero_id_seq'::regclass);
 @   ALTER TABLE public.generos ALTER COLUMN genero_id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    16837    habilidades habilidade_id    DEFAULT     �   ALTER TABLE ONLY public.habilidades ALTER COLUMN habilidade_id SET DEFAULT nextval('public.habilidades_habilidade_id_seq'::regclass);
 H   ALTER TABLE public.habilidades ALTER COLUMN habilidade_id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16838 %   pokemon_fraquezas pokemon_fraqueza_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_fraquezas ALTER COLUMN pokemon_fraqueza_id SET DEFAULT nextval('public.pokemon_fraquezas_pokemon_fraqueza_id_seq'::regclass);
 T   ALTER TABLE public.pokemon_fraquezas ALTER COLUMN pokemon_fraqueza_id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16839 *   pokemon_habilidades pokemon_habilidades_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_habilidades ALTER COLUMN pokemon_habilidades_id SET DEFAULT nextval('public.pokemon_habilidades_pokemon_habilidades_id_seq'::regclass);
 Y   ALTER TABLE public.pokemon_habilidades ALTER COLUMN pokemon_habilidades_id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16914    pokemon_imgs pokemon_imgs_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_imgs ALTER COLUMN pokemon_imgs_id SET DEFAULT nextval('public.pokemon_imgs_pokemon_imgs_id_seq'::regclass);
 K   ALTER TABLE public.pokemon_imgs ALTER COLUMN pokemon_imgs_id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16840 "   pokemon_tipagem pokemon_tipagem_id    DEFAULT     �   ALTER TABLE ONLY public.pokemon_tipagem ALTER COLUMN pokemon_tipagem_id SET DEFAULT nextval('public.pokemon_tipagem_pokemon_tipagem_id_seq'::regclass);
 Q   ALTER TABLE public.pokemon_tipagem ALTER COLUMN pokemon_tipagem_id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16841    tipagem tipagem_id    DEFAULT     x   ALTER TABLE ONLY public.tipagem ALTER COLUMN tipagem_id SET DEFAULT nextval('public.tipagem_tipagem_id_seq'::regclass);
 A   ALTER TABLE public.tipagem ALTER COLUMN tipagem_id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16842    user user_id    DEFAULT     n   ALTER TABLE ONLY public."user" ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 =   ALTER TABLE public."user" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    227    226            n          0    16781 
   categorias 
   TABLE DATA           =   COPY public.categorias (categoria_id, categoria) FROM stdin;
    public          postgres    false    209   �j       p          0    16787 	   fraquezas 
   TABLE DATA           ;   COPY public.fraquezas (fraquezas_id, fraqueza) FROM stdin;
    public          postgres    false    211   �j       r          0    16793    generos 
   TABLE DATA           4   COPY public.generos (genero_id, genero) FROM stdin;
    public          postgres    false    213   !k       t          0    16799    habilidades 
   TABLE DATA           @   COPY public.habilidades (habilidade_id, habilidade) FROM stdin;
    public          postgres    false    215   ik       v          0    16805    pokemon_fraquezas 
   TABLE DATA           _   COPY public.pokemon_fraquezas (pokemon_fraqueza_id, pokemon_info_id, fraquezas_id) FROM stdin;
    public          postgres    false    217   �k       x          0    16809    pokemon_habilidades 
   TABLE DATA           e   COPY public.pokemon_habilidades (pokemon_habilidades_id, pokemon_info_id, habilidade_id) FROM stdin;
    public          postgres    false    219   �k       �          0    16911    pokemon_imgs 
   TABLE DATA           M   COPY public.pokemon_imgs (pokemon_imgs_id, pokemon_info_id, url) FROM stdin;
    public          postgres    false    229   �k       z          0    16813    pokemon_info 
   TABLE DATA           �   COPY public.pokemon_info (pokemon_info_id, nome, descricao, altura, peso, categoria_id, genero_id, total, hp, ataque, defesa, especial_ataque, especial_defesa, velocidade) FROM stdin;
    public          postgres    false    221   5l       {          0    16818    pokemon_tipagem 
   TABLE DATA           Z   COPY public.pokemon_tipagem (pokemon_tipagem_id, pokemon_info_id, tipagem_id) FROM stdin;
    public          postgres    false    222   �l       }          0    16822    tipagem 
   TABLE DATA           3   COPY public.tipagem (tipagem_id, tipo) FROM stdin;
    public          postgres    false    224   �l                 0    16828    user 
   TABLE DATA           6   COPY public."user" (user_id, nome, senha) FROM stdin;
    public          postgres    false    226   m       �           0    0    categorias_categoria_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categorias_categoria_id_seq', 1, true);
          public          postgres    false    210            �           0    0    fraquezas_fraqueza_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.fraquezas_fraqueza_id_seq', 3, true);
          public          postgres    false    212            �           0    0    generos_genero_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.generos_genero_id_seq', 4, true);
          public          postgres    false    214            �           0    0    habilidades_habilidade_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.habilidades_habilidade_id_seq', 1, true);
          public          postgres    false    216            �           0    0 )   pokemon_fraquezas_pokemon_fraqueza_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.pokemon_fraquezas_pokemon_fraqueza_id_seq', 3, true);
          public          postgres    false    218            �           0    0 .   pokemon_habilidades_pokemon_habilidades_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.pokemon_habilidades_pokemon_habilidades_id_seq', 1, true);
          public          postgres    false    220            �           0    0     pokemon_imgs_pokemon_imgs_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.pokemon_imgs_pokemon_imgs_id_seq', 1, true);
          public          postgres    false    228            �           0    0 &   pokemon_tipagem_pokemon_tipagem_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.pokemon_tipagem_pokemon_tipagem_id_seq', 1, true);
          public          postgres    false    223            �           0    0    tipagem_tipagem_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipagem_tipagem_id_seq', 1, true);
          public          postgres    false    225            �           0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 1, false);
          public          postgres    false    227            �           2606    16844    categorias categorias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (categoria_id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    209            �           2606    16846    fraquezas fraquezas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.fraquezas
    ADD CONSTRAINT fraquezas_pkey PRIMARY KEY (fraquezas_id);
 B   ALTER TABLE ONLY public.fraquezas DROP CONSTRAINT fraquezas_pkey;
       public            postgres    false    211            �           2606    16848    generos generos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.generos
    ADD CONSTRAINT generos_pkey PRIMARY KEY (genero_id);
 >   ALTER TABLE ONLY public.generos DROP CONSTRAINT generos_pkey;
       public            postgres    false    213            �           2606    16850    habilidades habilidades_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_pkey PRIMARY KEY (habilidade_id);
 F   ALTER TABLE ONLY public.habilidades DROP CONSTRAINT habilidades_pkey;
       public            postgres    false    215            �           2606    16852 (   pokemon_fraquezas pokemon_fraquezas_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT pokemon_fraquezas_pkey PRIMARY KEY (pokemon_fraqueza_id);
 R   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT pokemon_fraquezas_pkey;
       public            postgres    false    217            �           2606    16854 ,   pokemon_habilidades pokemon_habilidades_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT pokemon_habilidades_pkey PRIMARY KEY (pokemon_habilidades_id);
 V   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT pokemon_habilidades_pkey;
       public            postgres    false    219            �           2606    16918    pokemon_imgs pokemon_imgs_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.pokemon_imgs
    ADD CONSTRAINT pokemon_imgs_pkey PRIMARY KEY (pokemon_imgs_id);
 H   ALTER TABLE ONLY public.pokemon_imgs DROP CONSTRAINT pokemon_imgs_pkey;
       public            postgres    false    229            �           2606    16856    pokemon_info pokemon_info_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT pokemon_info_pkey PRIMARY KEY (pokemon_info_id);
 H   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT pokemon_info_pkey;
       public            postgres    false    221            �           2606    16858 $   pokemon_tipagem pokemon_tipagem_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT pokemon_tipagem_pkey PRIMARY KEY (pokemon_tipagem_id);
 N   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT pokemon_tipagem_pkey;
       public            postgres    false    222            �           2606    16860    tipagem tipagem_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tipagem
    ADD CONSTRAINT tipagem_pkey PRIMARY KEY (tipagem_id);
 >   ALTER TABLE ONLY public.tipagem DROP CONSTRAINT tipagem_pkey;
       public            postgres    false    224            �           2606    16862    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    226            �           2606    16863    pokemon_info categoria_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT categoria_id_fk FOREIGN KEY (categoria_id) REFERENCES public.categorias(categoria_id);
 F   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT categoria_id_fk;
       public          postgres    false    209    221    3269            �           2606    16868 !   pokemon_fraquezas fraquezas_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT fraquezas_id_fk FOREIGN KEY (fraquezas_id) REFERENCES public.fraquezas(fraquezas_id);
 K   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT fraquezas_id_fk;
       public          postgres    false    211    3271    217            �           2606    16873    pokemon_info genero_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_info
    ADD CONSTRAINT genero_id_fk FOREIGN KEY (genero_id) REFERENCES public.generos(genero_id);
 C   ALTER TABLE ONLY public.pokemon_info DROP CONSTRAINT genero_id_fk;
       public          postgres    false    213    221    3273            �           2606    16878 $   pokemon_habilidades habilidade_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT habilidade_id_fk FOREIGN KEY (habilidade_id) REFERENCES public.habilidades(habilidade_id);
 N   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT habilidade_id_fk;
       public          postgres    false    219    3275    215            �           2606    16883 $   pokemon_fraquezas pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_fraquezas
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 N   ALTER TABLE ONLY public.pokemon_fraquezas DROP CONSTRAINT pokemon_info_id_fk;
       public          postgres    false    3281    217    221            �           2606    16888 "   pokemon_tipagem pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 L   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT pokemon_info_id_fk;
       public          postgres    false    222    3281    221            �           2606    16893 &   pokemon_habilidades pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_habilidades
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 P   ALTER TABLE ONLY public.pokemon_habilidades DROP CONSTRAINT pokemon_info_id_fk;
       public          postgres    false    3281    221    219            �           2606    16919    pokemon_imgs pokemon_info_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_imgs
    ADD CONSTRAINT pokemon_info_id_fk FOREIGN KEY (pokemon_info_id) REFERENCES public.pokemon_info(pokemon_info_id);
 I   ALTER TABLE ONLY public.pokemon_imgs DROP CONSTRAINT pokemon_info_id_fk;
       public          postgres    false    229    221    3281            �           2606    16898    pokemon_tipagem tipagem_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_tipagem
    ADD CONSTRAINT tipagem_id_fk FOREIGN KEY (tipagem_id) REFERENCES public.tipagem(tipagem_id);
 G   ALTER TABLE ONLY public.pokemon_tipagem DROP CONSTRAINT tipagem_id_fk;
       public          postgres    false    224    222    3285            n      x�3��ɬJ,J����� �S      p   #   x�3�<ܘ^��e��ZT��e����c���� ��      r   8   x�3��M,N.�����2�tK���1�9s��L8]R����2R�3S�b���� �Y      t      x�3�t�O������ �x      v      x�3�4�4�2�F\�@Ҙ+F��� !��      x      x�3�4�4����� �X      �   I   x�3�4��())(���O,.N-)�+��N����K�υ
�'��g���RR+��Jsr��
�ҹb���� �D      z   �   x��1�0��9�? �RB*:3�,,uH$�T��?}���Qx��6�
+ǐ,C�[��@�+�}��Y��צ�	�
��:��?C}?��ꁞϠ0�_O��t��&��Bq�t�[�9P
4'��ι?&),�      {      x�3�4�4����� �X      }      x�3�t�O������ �x            x������ � �     