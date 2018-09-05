PGDMP                         v            TEUSAPP_CRM    9.6.10    9.6.10 K    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16400    TEUSAPP_CRM    DATABASE     �   CREATE DATABASE "TEUSAPP_CRM" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "TEUSAPP_CRM";
             postgres    false            �           0    0    DATABASE "TEUSAPP_CRM"    COMMENT     E   COMMENT ON DATABASE "TEUSAPP_CRM" IS 'Aplicativo para la movilidad';
                  postgres    false    2219                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16416    TBL_RBARRIO    TABLE     �   CREATE TABLE public."TBL_RBARRIO" (
    "BAR_NID" bigint NOT NULL,
    "BAR_CDESCRIPCION" character(150),
    "LOC_NID" smallint
);
 !   DROP TABLE public."TBL_RBARRIO";
       public         postgres    false    3            �           0    0    TABLE "TBL_RBARRIO"    ACL     3   GRANT ALL ON TABLE public."TBL_RBARRIO" TO PUBLIC;
            public       postgres    false    186            �            1259    16426    TBL_RCENTRO_TECNICO    TABLE     x   CREATE TABLE public."TBL_RCENTRO_TECNICO" (
    "CTEC_NID" smallint NOT NULL,
    "CTEC_CDESCRIPCION" character(150)
);
 )   DROP TABLE public."TBL_RCENTRO_TECNICO";
       public         postgres    false    3            �           0    0    TABLE "TBL_RCENTRO_TECNICO"    ACL     ;   GRANT ALL ON TABLE public."TBL_RCENTRO_TECNICO" TO PUBLIC;
            public       postgres    false    187            �            1259    16411    TBL_RLOCALIDAD    TABLE     q   CREATE TABLE public."TBL_RLOCALIDAD" (
    "LOC_NID" smallint NOT NULL,
    "LOC_CDESCRIPCION" character(100)
);
 $   DROP TABLE public."TBL_RLOCALIDAD";
       public         postgres    false    3            �           0    0    TABLE "TBL_RLOCALIDAD"    ACL     6   GRANT ALL ON TABLE public."TBL_RLOCALIDAD" TO PUBLIC;
            public       postgres    false    185            �            1259    16431 
   TBL_RNORMA    TABLE     �   CREATE TABLE public."TBL_RNORMA" (
    "NORM_NID" bigint NOT NULL,
    "NORM_CDESCRIPCION" character(150),
    "NORM_OESTADO" bit(1)
);
     DROP TABLE public."TBL_RNORMA";
       public         postgres    false    3            �           0    0    TABLE "TBL_RNORMA"    ACL     2   GRANT ALL ON TABLE public."TBL_RNORMA" TO PUBLIC;
            public       postgres    false    188            �            1259    16436    TBL_RPERFIL    TABLE     �   CREATE TABLE public."TBL_RPERFIL" (
    "PER_NID" smallint NOT NULL,
    "PER_CDESCRIPCION" character(50),
    "PER_OESTADO" bit(1)
);
 !   DROP TABLE public."TBL_RPERFIL";
       public         postgres    false    3            �           0    0    TABLE "TBL_RPERFIL"    ACL     3   GRANT ALL ON TABLE public."TBL_RPERFIL" TO PUBLIC;
            public       postgres    false    189            �            1259    16441    TBL_RTIPO_VEHICULO    TABLE     �   CREATE TABLE public."TBL_RTIPO_VEHICULO" (
    "TIPV_NID" integer NOT NULL,
    "TIPV_OESTADO" boolean,
    "TIPV_CDESCRIPCION" text
);
 (   DROP TABLE public."TBL_RTIPO_VEHICULO";
       public         postgres    false    3            �           0    0    TABLE "TBL_RTIPO_VEHICULO"    COMMENT     `   COMMENT ON TABLE public."TBL_RTIPO_VEHICULO" IS 'Maestro relacional de los tipos de vehiculos';
            public       postgres    false    190            �           0    0 *   COLUMN "TBL_RTIPO_VEHICULO"."TIPV_OESTADO"    COMMENT     ^   COMMENT ON COLUMN public."TBL_RTIPO_VEHICULO"."TIPV_OESTADO" IS 'ESTADOS
0= FALSE
1= TRUE';
            public       postgres    false    190            �           0    0    TABLE "TBL_RTIPO_VEHICULO"    ACL     :   GRANT ALL ON TABLE public."TBL_RTIPO_VEHICULO" TO PUBLIC;
            public       postgres    false    190            �            1259    16449    TBL_RUSUARIO    TABLE     �   CREATE TABLE public."TBL_RUSUARIO" (
    "USU_NID" smallint NOT NULL,
    "USU_CNOMAPELL" character(80),
    "USU_CTELEFONO" character(20),
    "USU_OESTADO" bit(1),
    "PER_NID" smallint
);
 "   DROP TABLE public."TBL_RUSUARIO";
       public         postgres    false    3            �           0    0    TABLE "TBL_RUSUARIO"    ACL     4   GRANT ALL ON TABLE public."TBL_RUSUARIO" TO PUBLIC;
            public       postgres    false    191            �            1259    16459    TBL_TCAPACITACION    TABLE     �   CREATE TABLE public."TBL_TCAPACITACION" (
    "CAP_NID" bigint NOT NULL,
    "CAP_DFECHA" date,
    "CAP_NETAPA" integer,
    "CAP_COBSERVACION" text,
    "CTEC_NID" smallint
);
 '   DROP TABLE public."TBL_TCAPACITACION";
       public         postgres    false    3            �           0    0    TABLE "TBL_TCAPACITACION"    ACL     9   GRANT ALL ON TABLE public."TBL_TCAPACITACION" TO PUBLIC;
            public       postgres    false    192            �            1259    16472    TBL_TEVIDENCIA    TABLE     �   CREATE TABLE public."TBL_TEVIDENCIA" (
    "EVID_NID" bigint NOT NULL,
    "EVID_CRUTA_FILE" character(150),
    "EVID_OESTADO" bit(1)
);
 $   DROP TABLE public."TBL_TEVIDENCIA";
       public         postgres    false    3            �           0    0    TABLE "TBL_TEVIDENCIA"    ACL     6   GRANT ALL ON TABLE public."TBL_TEVIDENCIA" TO PUBLIC;
            public       postgres    false    193            �            1259    16477    TBL_TINFRACION    TABLE       CREATE TABLE public."TBL_TINFRACION" (
    "INF_NID" bigint NOT NULL,
    "INF_DFECHA" date,
    "INF_NIDENTIFICACION" numeric,
    "INF_CPLACA" character(10),
    "TIPV_NID" integer,
    "USU_NID" integer,
    "INF_COBSERVACION" text,
    "BAR_NID" smallint
);
 $   DROP TABLE public."TBL_TINFRACION";
       public         postgres    false    3            �           0    0    TABLE "TBL_TINFRACION"    COMMENT     Y   COMMENT ON TABLE public."TBL_TINFRACION" IS 'Encabezado de infraciones (transaccional)';
            public       postgres    false    194            �           0    0    TABLE "TBL_TINFRACION"    ACL     6   GRANT ALL ON TABLE public."TBL_TINFRACION" TO PUBLIC;
            public       postgres    false    194            �            1259    16500    TBL_TINFRACION_DET    TABLE     �   CREATE TABLE public."TBL_TINFRACION_DET" (
    "DINF_NID" bigint NOT NULL,
    "INF_NID" bigint,
    "NORM_NID" bigint,
    "DINF_OESTADO" bit(1)
);
 (   DROP TABLE public."TBL_TINFRACION_DET";
       public         postgres    false    3            �           0    0    TABLE "TBL_TINFRACION_DET"    COMMENT     K   COMMENT ON TABLE public."TBL_TINFRACION_DET" IS 'Detalle de infracciones';
            public       postgres    false    195            �           0    0    TABLE "TBL_TINFRACION_DET"    ACL     :   GRANT ALL ON TABLE public."TBL_TINFRACION_DET" TO PUBLIC;
            public       postgres    false    195            �            1259    16515    TBL_UCAPACITACION_INFRACCION    TABLE     c   CREATE TABLE public."TBL_UCAPACITACION_INFRACCION" (
    "CAP_NID" bigint,
    "INF_NID" bigint
);
 2   DROP TABLE public."TBL_UCAPACITACION_INFRACCION";
       public         postgres    false    3            �           0    0 $   TABLE "TBL_UCAPACITACION_INFRACCION"    ACL     D   GRANT ALL ON TABLE public."TBL_UCAPACITACION_INFRACCION" TO PUBLIC;
            public       postgres    false    196            �            1259    16528    TBL_UINFRACION_EVIDENCIA    TABLE     `   CREATE TABLE public."TBL_UINFRACION_EVIDENCIA" (
    "INF_NID" bigint,
    "EVID_NID" bigint
);
 .   DROP TABLE public."TBL_UINFRACION_EVIDENCIA";
       public         postgres    false    3            �           0    0     TABLE "TBL_UINFRACION_EVIDENCIA"    ACL     @   GRANT ALL ON TABLE public."TBL_UINFRACION_EVIDENCIA" TO PUBLIC;
            public       postgres    false    197            �          0    16416    TBL_RBARRIO 
   TABLE DATA               Q   COPY public."TBL_RBARRIO" ("BAR_NID", "BAR_CDESCRIPCION", "LOC_NID") FROM stdin;
    public       postgres    false    186   yV       �          0    16426    TBL_RCENTRO_TECNICO 
   TABLE DATA               P   COPY public."TBL_RCENTRO_TECNICO" ("CTEC_NID", "CTEC_CDESCRIPCION") FROM stdin;
    public       postgres    false    187   �V       �          0    16411    TBL_RLOCALIDAD 
   TABLE DATA               I   COPY public."TBL_RLOCALIDAD" ("LOC_NID", "LOC_CDESCRIPCION") FROM stdin;
    public       postgres    false    185   �V       �          0    16431 
   TBL_RNORMA 
   TABLE DATA               W   COPY public."TBL_RNORMA" ("NORM_NID", "NORM_CDESCRIPCION", "NORM_OESTADO") FROM stdin;
    public       postgres    false    188   �V       �          0    16436    TBL_RPERFIL 
   TABLE DATA               U   COPY public."TBL_RPERFIL" ("PER_NID", "PER_CDESCRIPCION", "PER_OESTADO") FROM stdin;
    public       postgres    false    189   �V       �          0    16441    TBL_RTIPO_VEHICULO 
   TABLE DATA               _   COPY public."TBL_RTIPO_VEHICULO" ("TIPV_NID", "TIPV_OESTADO", "TIPV_CDESCRIPCION") FROM stdin;
    public       postgres    false    190   
W       �          0    16449    TBL_RUSUARIO 
   TABLE DATA               o   COPY public."TBL_RUSUARIO" ("USU_NID", "USU_CNOMAPELL", "USU_CTELEFONO", "USU_OESTADO", "PER_NID") FROM stdin;
    public       postgres    false    191   'W       �          0    16459    TBL_TCAPACITACION 
   TABLE DATA               t   COPY public."TBL_TCAPACITACION" ("CAP_NID", "CAP_DFECHA", "CAP_NETAPA", "CAP_COBSERVACION", "CTEC_NID") FROM stdin;
    public       postgres    false    192   DW       �          0    16472    TBL_TEVIDENCIA 
   TABLE DATA               Y   COPY public."TBL_TEVIDENCIA" ("EVID_NID", "EVID_CRUTA_FILE", "EVID_OESTADO") FROM stdin;
    public       postgres    false    193   aW       �          0    16477    TBL_TINFRACION 
   TABLE DATA               �   COPY public."TBL_TINFRACION" ("INF_NID", "INF_DFECHA", "INF_NIDENTIFICACION", "INF_CPLACA", "TIPV_NID", "USU_NID", "INF_COBSERVACION", "BAR_NID") FROM stdin;
    public       postgres    false    194   ~W       �          0    16500    TBL_TINFRACION_DET 
   TABLE DATA               a   COPY public."TBL_TINFRACION_DET" ("DINF_NID", "INF_NID", "NORM_NID", "DINF_OESTADO") FROM stdin;
    public       postgres    false    195   �W       �          0    16515    TBL_UCAPACITACION_INFRACCION 
   TABLE DATA               N   COPY public."TBL_UCAPACITACION_INFRACCION" ("CAP_NID", "INF_NID") FROM stdin;
    public       postgres    false    196   �W       �          0    16528    TBL_UINFRACION_EVIDENCIA 
   TABLE DATA               K   COPY public."TBL_UINFRACION_EVIDENCIA" ("INF_NID", "EVID_NID") FROM stdin;
    public       postgres    false    197   �W                  2606    16448    TBL_RTIPO_VEHICULO FK_TIPV_NID 
   CONSTRAINT     h   ALTER TABLE ONLY public."TBL_RTIPO_VEHICULO"
    ADD CONSTRAINT "FK_TIPV_NID" PRIMARY KEY ("TIPV_NID");
 L   ALTER TABLE ONLY public."TBL_RTIPO_VEHICULO" DROP CONSTRAINT "FK_TIPV_NID";
       public         postgres    false    190    190                       2606    16420    TBL_RBARRIO TBL_RBARRIO_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."TBL_RBARRIO"
    ADD CONSTRAINT "TBL_RBARRIO_pkey" PRIMARY KEY ("BAR_NID");
 J   ALTER TABLE ONLY public."TBL_RBARRIO" DROP CONSTRAINT "TBL_RBARRIO_pkey";
       public         postgres    false    186    186                       2606    16430 ,   TBL_RCENTRO_TECNICO TBL_RCENTRO_TECNICO_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."TBL_RCENTRO_TECNICO"
    ADD CONSTRAINT "TBL_RCENTRO_TECNICO_pkey" PRIMARY KEY ("CTEC_NID");
 Z   ALTER TABLE ONLY public."TBL_RCENTRO_TECNICO" DROP CONSTRAINT "TBL_RCENTRO_TECNICO_pkey";
       public         postgres    false    187    187                       2606    16415 "   TBL_RLOCALIDAD TBL_RLOCALIDAD_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."TBL_RLOCALIDAD"
    ADD CONSTRAINT "TBL_RLOCALIDAD_pkey" PRIMARY KEY ("LOC_NID");
 P   ALTER TABLE ONLY public."TBL_RLOCALIDAD" DROP CONSTRAINT "TBL_RLOCALIDAD_pkey";
       public         postgres    false    185    185            	           2606    16435    TBL_RNORMA TBL_RNORMA_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."TBL_RNORMA"
    ADD CONSTRAINT "TBL_RNORMA_pkey" PRIMARY KEY ("NORM_NID");
 H   ALTER TABLE ONLY public."TBL_RNORMA" DROP CONSTRAINT "TBL_RNORMA_pkey";
       public         postgres    false    188    188                       2606    16440    TBL_RPERFIL TBL_RPERFIL_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."TBL_RPERFIL"
    ADD CONSTRAINT "TBL_RPERFIL_pkey" PRIMARY KEY ("PER_NID");
 J   ALTER TABLE ONLY public."TBL_RPERFIL" DROP CONSTRAINT "TBL_RPERFIL_pkey";
       public         postgres    false    189    189                       2606    16453    TBL_RUSUARIO TBL_RUSUARIO_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."TBL_RUSUARIO"
    ADD CONSTRAINT "TBL_RUSUARIO_pkey" PRIMARY KEY ("USU_NID");
 L   ALTER TABLE ONLY public."TBL_RUSUARIO" DROP CONSTRAINT "TBL_RUSUARIO_pkey";
       public         postgres    false    191    191                       2606    16466 (   TBL_TCAPACITACION TBL_TCAPACITACION_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TBL_TCAPACITACION"
    ADD CONSTRAINT "TBL_TCAPACITACION_pkey" PRIMARY KEY ("CAP_NID");
 V   ALTER TABLE ONLY public."TBL_TCAPACITACION" DROP CONSTRAINT "TBL_TCAPACITACION_pkey";
       public         postgres    false    192    192                       2606    16476 "   TBL_TEVIDENCIA TBL_TEVIDENCIA_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."TBL_TEVIDENCIA"
    ADD CONSTRAINT "TBL_TEVIDENCIA_pkey" PRIMARY KEY ("EVID_NID");
 P   ALTER TABLE ONLY public."TBL_TEVIDENCIA" DROP CONSTRAINT "TBL_TEVIDENCIA_pkey";
       public         postgres    false    193    193                       2606    16504 *   TBL_TINFRACION_DET TBL_TINFRACION_DET_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."TBL_TINFRACION_DET"
    ADD CONSTRAINT "TBL_TINFRACION_DET_pkey" PRIMARY KEY ("DINF_NID");
 X   ALTER TABLE ONLY public."TBL_TINFRACION_DET" DROP CONSTRAINT "TBL_TINFRACION_DET_pkey";
       public         postgres    false    195    195                       2606    16484 "   TBL_TINFRACION TBL_TINFRACION_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."TBL_TINFRACION"
    ADD CONSTRAINT "TBL_TINFRACION_pkey" PRIMARY KEY ("INF_NID");
 P   ALTER TABLE ONLY public."TBL_TINFRACION" DROP CONSTRAINT "TBL_TINFRACION_pkey";
       public         postgres    false    194    194                       2606    16421 $   TBL_RBARRIO TBL_RBARRIO_LOC_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_RBARRIO"
    ADD CONSTRAINT "TBL_RBARRIO_LOC_NID_fkey" FOREIGN KEY ("LOC_NID") REFERENCES public."TBL_RLOCALIDAD"("LOC_NID");
 R   ALTER TABLE ONLY public."TBL_RBARRIO" DROP CONSTRAINT "TBL_RBARRIO_LOC_NID_fkey";
       public       postgres    false    2051    186    185                       2606    16454 &   TBL_RUSUARIO TBL_RUSUARIO_PER_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_RUSUARIO"
    ADD CONSTRAINT "TBL_RUSUARIO_PER_NID_fkey" FOREIGN KEY ("PER_NID") REFERENCES public."TBL_RPERFIL"("PER_NID");
 T   ALTER TABLE ONLY public."TBL_RUSUARIO" DROP CONSTRAINT "TBL_RUSUARIO_PER_NID_fkey";
       public       postgres    false    189    2059    191                       2606    16467 1   TBL_TCAPACITACION TBL_TCAPACITACION_CTEC_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_TCAPACITACION"
    ADD CONSTRAINT "TBL_TCAPACITACION_CTEC_NID_fkey" FOREIGN KEY ("CTEC_NID") REFERENCES public."TBL_RCENTRO_TECNICO"("CTEC_NID");
 _   ALTER TABLE ONLY public."TBL_TCAPACITACION" DROP CONSTRAINT "TBL_TCAPACITACION_CTEC_NID_fkey";
       public       postgres    false    192    2055    187                       2606    16485 *   TBL_TINFRACION TBL_TINFRACION_BAR_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_TINFRACION"
    ADD CONSTRAINT "TBL_TINFRACION_BAR_NID_fkey" FOREIGN KEY ("BAR_NID") REFERENCES public."TBL_RBARRIO"("BAR_NID");
 X   ALTER TABLE ONLY public."TBL_TINFRACION" DROP CONSTRAINT "TBL_TINFRACION_BAR_NID_fkey";
       public       postgres    false    186    2053    194                       2606    16505 2   TBL_TINFRACION_DET TBL_TINFRACION_DET_INF_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_TINFRACION_DET"
    ADD CONSTRAINT "TBL_TINFRACION_DET_INF_NID_fkey" FOREIGN KEY ("INF_NID") REFERENCES public."TBL_TINFRACION"("INF_NID");
 `   ALTER TABLE ONLY public."TBL_TINFRACION_DET" DROP CONSTRAINT "TBL_TINFRACION_DET_INF_NID_fkey";
       public       postgres    false    195    194    2069                       2606    16510 3   TBL_TINFRACION_DET TBL_TINFRACION_DET_NORM_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_TINFRACION_DET"
    ADD CONSTRAINT "TBL_TINFRACION_DET_NORM_NID_fkey" FOREIGN KEY ("NORM_NID") REFERENCES public."TBL_RNORMA"("NORM_NID");
 a   ALTER TABLE ONLY public."TBL_TINFRACION_DET" DROP CONSTRAINT "TBL_TINFRACION_DET_NORM_NID_fkey";
       public       postgres    false    188    195    2057                       2606    16490 +   TBL_TINFRACION TBL_TINFRACION_TIPV_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_TINFRACION"
    ADD CONSTRAINT "TBL_TINFRACION_TIPV_NID_fkey" FOREIGN KEY ("TIPV_NID") REFERENCES public."TBL_RTIPO_VEHICULO"("TIPV_NID");
 Y   ALTER TABLE ONLY public."TBL_TINFRACION" DROP CONSTRAINT "TBL_TINFRACION_TIPV_NID_fkey";
       public       postgres    false    194    190    2061                       2606    16495 *   TBL_TINFRACION TBL_TINFRACION_USU_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_TINFRACION"
    ADD CONSTRAINT "TBL_TINFRACION_USU_NID_fkey" FOREIGN KEY ("USU_NID") REFERENCES public."TBL_RUSUARIO"("USU_NID");
 X   ALTER TABLE ONLY public."TBL_TINFRACION" DROP CONSTRAINT "TBL_TINFRACION_USU_NID_fkey";
       public       postgres    false    191    2063    194                        2606    16518 F   TBL_UCAPACITACION_INFRACCION TBL_UCAPACITACION_INFRACCION_CAP_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_UCAPACITACION_INFRACCION"
    ADD CONSTRAINT "TBL_UCAPACITACION_INFRACCION_CAP_NID_fkey" FOREIGN KEY ("CAP_NID") REFERENCES public."TBL_TCAPACITACION"("CAP_NID");
 t   ALTER TABLE ONLY public."TBL_UCAPACITACION_INFRACCION" DROP CONSTRAINT "TBL_UCAPACITACION_INFRACCION_CAP_NID_fkey";
       public       postgres    false    192    196    2065            !           2606    16523 F   TBL_UCAPACITACION_INFRACCION TBL_UCAPACITACION_INFRACCION_INF_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_UCAPACITACION_INFRACCION"
    ADD CONSTRAINT "TBL_UCAPACITACION_INFRACCION_INF_NID_fkey" FOREIGN KEY ("INF_NID") REFERENCES public."TBL_TINFRACION"("INF_NID");
 t   ALTER TABLE ONLY public."TBL_UCAPACITACION_INFRACCION" DROP CONSTRAINT "TBL_UCAPACITACION_INFRACCION_INF_NID_fkey";
       public       postgres    false    194    2069    196            "           2606    16531 ?   TBL_UINFRACION_EVIDENCIA TBL_UINFRACION_EVIDENCIA_EVID_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_UINFRACION_EVIDENCIA"
    ADD CONSTRAINT "TBL_UINFRACION_EVIDENCIA_EVID_NID_fkey" FOREIGN KEY ("EVID_NID") REFERENCES public."TBL_TEVIDENCIA"("EVID_NID");
 m   ALTER TABLE ONLY public."TBL_UINFRACION_EVIDENCIA" DROP CONSTRAINT "TBL_UINFRACION_EVIDENCIA_EVID_NID_fkey";
       public       postgres    false    197    2067    193            #           2606    16536 >   TBL_UINFRACION_EVIDENCIA TBL_UINFRACION_EVIDENCIA_INF_NID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TBL_UINFRACION_EVIDENCIA"
    ADD CONSTRAINT "TBL_UINFRACION_EVIDENCIA_INF_NID_fkey" FOREIGN KEY ("INF_NID") REFERENCES public."TBL_TINFRACION"("INF_NID");
 l   ALTER TABLE ONLY public."TBL_UINFRACION_EVIDENCIA" DROP CONSTRAINT "TBL_UINFRACION_EVIDENCIA_INF_NID_fkey";
       public       postgres    false    2069    194    197            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     