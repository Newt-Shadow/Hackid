.class final Lcom/google/android/gms/measurement/internal/e;
.super Lcom/google/android/gms/measurement/internal/ad;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/Set;

.field private f:Ljava/util/Map;

.field private g:Ljava/lang/Long;

.field private h:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ad;-><init>(Lcom/google/android/gms/measurement/internal/pd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/he;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/measurement/internal/he;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/he;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/he;-><init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;[B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private final o(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/measurement/internal/he;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/he;->c()Ljava/util/BitSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method


# virtual methods
.method protected final l()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method final m(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;
    .locals 29

    move-object/from16 v10, p0

    const-string v11, "current_results"

    .line 1
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    .line 5
    new-instance v0, Lr/a;

    invoke-direct {v0}, Lr/a;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/t6;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v13

    goto :goto_0

    :cond_1
    move v1, v12

    .line 8
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/re;->a()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 10
    sget-object v4, Lcom/google/android/gms/measurement/internal/c5;->G0:Lcom/google/android/gms/measurement/internal/b5;

    .line 11
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    move-result v14

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/re;->a()Z

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/c5;->F0:Lcom/google/android/gms/measurement/internal/b5;

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    move-result v15

    if-eqz v1, :cond_2

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 18
    invoke-static {v3}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 19
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "current_session_count"

    .line 20
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    .line 26
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v9, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v16, "data"

    const-string v7, "audience_id"

    const/4 v6, 0x2

    if-eqz v15, :cond_8

    if-eqz v14, :cond_8

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 29
    invoke-static {v3}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Lr/a;

    .line 30
    invoke-direct {v4}, Lr/a;-><init>()V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_1
    const-string v18, "event_filters"

    new-array v0, v6, [Ljava/lang/String;

    aput-object v7, v0, v12

    aput-object v16, v0, v13

    const-string v20, "app_id=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    .line 32
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    :goto_2
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/e4;->O()Lcom/google/android/gms/internal/measurement/d4;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/e4;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e4;->I()Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_4

    .line 37
    :cond_3
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 38
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-nez v17, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v12, v17

    .line 41
    :goto_3
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_1
    move-exception v0

    .line 42
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v12

    .line 44
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v12

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 45
    invoke-virtual {v12, v9, v13, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    .line 47
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v12, v4

    goto :goto_9

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_2

    .line 48
    :cond_6
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    .line 50
    :goto_6
    :try_start_6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    invoke-virtual {v2, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_8

    goto :goto_5

    :goto_7
    if-eqz v5, :cond_7

    .line 55
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_7
    throw v0

    :cond_8
    :goto_8
    move-object v12, v0

    .line 57
    :goto_9
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 61
    invoke-static {v3}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_7
    const-string v18, "audience_filter_values"

    new-array v0, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v0, v4

    const/4 v4, 0x1

    aput-object v11, v0, v4

    const-string v20, "app_id=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    .line 63
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 64
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 66
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v13, v0

    move-object/from16 v20, v7

    goto/16 :goto_d

    .line 67
    :cond_9
    :try_start_9
    new-instance v5, Lr/a;

    .line 68
    invoke-direct {v5}, Lr/a;-><init>()V

    :goto_a
    const/4 v13, 0x0

    .line 69
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v13, 0x1

    .line 70
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 71
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k7;->K()Lcom/google/android/gms/internal/measurement/j7;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/j7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/k7;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 72
    :try_start_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    goto :goto_b

    :catch_4
    move-exception v0

    .line 73
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 74
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v13

    .line 75
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v13

    const-string v6, "Failed to merge filter results. appId, audienceId, error"

    move-object/from16 v19, v5

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v20, v7

    .line 76
    :try_start_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 77
    invoke-virtual {v13, v6, v5, v7, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    if-nez v0, :cond_a

    .line 79
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v13, v19

    goto :goto_d

    :cond_a
    move-object/from16 v5, v19

    move-object/from16 v7, v20

    const/4 v6, 0x2

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v20, v7

    goto :goto_c

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_47

    :catch_7
    move-exception v0

    move-object/from16 v20, v7

    const/4 v4, 0x0

    .line 80
    :goto_c
    :try_start_d
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v2

    const-string v5, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v4, :cond_b

    .line 85
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object v13, v0

    .line 86
    :goto_d
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v28, v20

    goto/16 :goto_23

    .line 87
    :cond_c
    new-instance v2, Ljava/util/HashSet;

    .line 88
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1b

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v3

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 91
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 92
    invoke-static {v4}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lr/a;

    .line 93
    invoke-direct {v0}, Lr/a;-><init>()V

    .line 94
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_e
    const-string v6, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    filled-new-array {v4, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 96
    :try_start_f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_d
    const/4 v6, 0x0

    .line 97
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_e

    new-instance v7, Ljava/util/ArrayList;

    .line 99
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/4 v6, 0x1

    .line 101
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 102
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-nez v6, :cond_d

    .line 104
    :goto_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_10

    .line 105
    :cond_f
    :try_start_10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    goto/16 :goto_17

    :catch_8
    move-exception v0

    goto :goto_f

    :catchall_4
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_17

    :catch_9
    move-exception v0

    const/4 v5, 0x0

    .line 106
    :goto_f
    :try_start_11
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 107
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v3

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 109
    invoke-virtual {v3, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v5, :cond_10

    goto :goto_e

    .line 111
    :cond_10
    :goto_10
    invoke-static {v1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-static {v13}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr/a;

    .line 113
    invoke-direct {v1}, Lr/a;-><init>()V

    .line 114
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    move-object/from16 v23, v8

    goto/16 :goto_16

    .line 115
    :cond_12
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/k7;

    .line 117
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_19

    .line 118
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_13

    goto/16 :goto_14

    .line 119
    :cond_13
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    move-object/from16 v17, v0

    .line 120
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    move-result-object v0

    move-object/from16 v19, v3

    .line 121
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k7;->E()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/td;->R(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 123
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/hb;->p()Lcom/google/android/gms/internal/measurement/fb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/j7;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/j7;->w()Lcom/google/android/gms/internal/measurement/j7;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/j7;->v(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/j7;

    .line 124
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    move-result-object v0

    .line 125
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k7;->C()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/measurement/internal/td;->R(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/j7;->u()Lcom/google/android/gms/internal/measurement/j7;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/j7;->t(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/j7;

    new-instance v0, Ljava/util/ArrayList;

    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k7;->G()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    move-object/from16 v5, v21

    check-cast v5, Lcom/google/android/gms/internal/measurement/r6;

    .line 129
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r6;->D()I

    move-result v21

    move-object/from16 v23, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 130
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v5, v22

    move-object/from16 v8, v23

    goto :goto_12

    :cond_15
    move-object/from16 v23, v8

    .line 131
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/j7;->y()Lcom/google/android/gms/internal/measurement/j7;

    .line 132
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/j7;->x(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/j7;

    new-instance v0, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/k7;->I()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/m7;

    .line 135
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m7;->D()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 136
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 137
    :cond_17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/j7;->A()Lcom/google/android/gms/internal/measurement/j7;

    .line 138
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/j7;->z(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/j7;

    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/k7;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_18
    move-object/from16 v0, v17

    move-object/from16 v3, v19

    goto/16 :goto_11

    :cond_19
    :goto_14
    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v23, v8

    .line 140
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    move-object/from16 v0, v17

    move-object/from16 v3, v19

    move-object/from16 v8, v23

    goto/16 :goto_11

    :goto_16
    move-object v0, v1

    goto :goto_18

    :goto_17
    if-eqz v5, :cond_1a

    .line 141
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1a
    throw v0

    :cond_1b
    move-object/from16 v23, v8

    move-object v0, v13

    .line 143
    :goto_18
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_19
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 144
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/k7;

    new-instance v5, Ljava/util/BitSet;

    .line 145
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    .line 146
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Lr/a;

    .line 147
    invoke-direct {v7}, Lr/a;-><init>()V

    if-eqz v1, :cond_1f

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k7;->H()I

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_1c

    .line 149
    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k7;->G()Ljava/util/List;

    move-result-object v2

    .line 150
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/r6;

    .line 151
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r6;->C()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 152
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r6;->D()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 153
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r6;->E()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 154
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r6;->F()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1b

    :cond_1e
    const/4 v3, 0x0

    .line 155
    :goto_1b
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 156
    :cond_1f
    :goto_1c
    new-instance v8, Lr/a;

    .line 157
    invoke-direct {v8}, Lr/a;-><init>()V

    if-eqz v1, :cond_22

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k7;->J()I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_1e

    .line 159
    :cond_20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k7;->I()Ljava/util/List;

    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/m7;

    .line 161
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m7;->C()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m7;->F()I

    move-result v4

    if-lez v4, :cond_21

    .line 162
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m7;->D()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 163
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m7;->F()I

    move-result v21

    move-object/from16 v22, v0

    add-int/lit8 v0, v21, -0x1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/m7;->G(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 164
    invoke-interface {v8, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    goto :goto_1d

    :cond_22
    :goto_1e
    move-object/from16 v22, v0

    if-eqz v1, :cond_25

    const/4 v0, 0x0

    .line 165
    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k7;->D()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k7;->C()Ljava/util/List;

    move-result-object v2

    .line 166
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/td;->P(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v2

    .line 169
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v21, v9

    const-string v9, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k7;->E()Ljava/util/List;

    move-result-object v2

    .line 171
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/td;->P(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 172
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_20

    :cond_23
    move-object/from16 v21, v9

    .line 173
    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v21

    goto :goto_1f

    :cond_25
    move-object/from16 v21, v9

    .line 174
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/k7;

    if-eqz v15, :cond_2a

    if-eqz v14, :cond_2a

    .line 175
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2a

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    if-eqz v1, :cond_2a

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    if-nez v1, :cond_26

    goto :goto_22

    .line 176
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/e4;

    .line 177
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    .line 178
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    .line 179
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e4;->L()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    .line 180
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    div-long v24, v24, v26

    .line 181
    :cond_28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 182
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_29
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 184
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 185
    :cond_2a
    :goto_22
    new-instance v0, Lcom/google/android/gms/measurement/internal/he;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v28, v20

    move-object/from16 v18, v12

    move-object/from16 v12, v23

    move-object/from16 p1, v13

    move-object/from16 v13, v21

    .line 186
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/he;-><init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/k7;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;[B)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    .line 187
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v13

    move-object/from16 v12, v18

    move-object/from16 v0, v22

    move-object/from16 v13, p1

    goto/16 :goto_19

    :cond_2b
    move-object v13, v9

    move-object/from16 v28, v20

    move-object/from16 v12, v23

    .line 188
    :goto_23
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_2d

    :cond_2c
    move-object/from16 v25, v11

    goto/16 :goto_32

    .line 189
    :cond_2d
    new-instance v2, Lcom/google/android/gms/measurement/internal/ie;

    const/4 v3, 0x0

    .line 190
    invoke-direct {v2, v10, v3}, Lcom/google/android/gms/measurement/internal/ie;-><init>(Lcom/google/android/gms/measurement/internal/e;[B)V

    new-instance v4, Lr/a;

    .line 191
    invoke-direct {v4}, Lr/a;-><init>()V

    .line 192
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2e
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t6;

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/ie;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t6;)Lcom/google/android/gms/internal/measurement/t6;

    move-result-object v6

    if-eqz v6, :cond_2e

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 194
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v8

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    move-result-object v14

    .line 195
    invoke-virtual {v8, v9, v0, v14}, Lcom/google/android/gms/measurement/internal/u;->Z(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t6;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v8

    .line 196
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/u;->w0(Lcom/google/android/gms/measurement/internal/c0;)V

    if-nez p6, :cond_2e

    iget-wide v14, v8, Lcom/google/android/gms/measurement/internal/c0;->c:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    move-result-object v9

    .line 198
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_34

    .line 199
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v7

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 200
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 201
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 202
    invoke-static {v3}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    invoke-static {v9}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 p1, v2

    new-instance v2, Lr/a;

    .line 204
    invoke-direct {v2}, Lr/a;-><init>()V

    .line 205
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_12
    const-string v18, "event_filters"
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 p2, v5

    const/4 v5, 0x2

    :try_start_13
    new-array v0, v5, [Ljava/lang/String;
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move-object/from16 v5, v28

    const/16 v19, 0x0

    :try_start_14
    aput-object v5, v0, v19

    const/16 v19, 0x1

    aput-object v16, v0, v19

    const-string v20, "app_id=? AND event_name=?"

    filled-new-array {v3, v9}, [Ljava/lang/String;

    move-result-object v21
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v25, v11

    .line 206
    :try_start_15
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 207
    :try_start_16
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v0, :cond_31

    move-object/from16 v28, v5

    :goto_25
    const/4 v5, 0x1

    .line 208
    :try_start_17
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 209
    :try_start_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/e4;->O()Lcom/google/android/gms/internal/measurement/d4;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/e4;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    const/4 v5, 0x0

    .line 210
    :try_start_19
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 211
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-nez v17, :cond_2f

    move-object/from16 v26, v8

    :try_start_1a
    new-instance v8, Ljava/util/ArrayList;

    .line 212
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_2f
    move-object/from16 v26, v8

    move-object/from16 v8, v17

    .line 214
    :goto_26
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :catch_a
    move-exception v0

    move-object/from16 v26, v8

    .line 215
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 216
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v5

    .line 217
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 218
    invoke-virtual {v5, v13, v8, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    :goto_27
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    if-nez v0, :cond_30

    .line 220
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    goto :goto_2d

    :cond_30
    move-object/from16 v8, v26

    goto :goto_25

    :catch_b
    move-exception v0

    goto :goto_28

    :cond_31
    move-object/from16 v28, v5

    move-object/from16 v26, v8

    .line 221
    :try_start_1b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 222
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2d

    :catch_c
    move-exception v0

    goto :goto_29

    :catchall_5
    move-exception v0

    move-object v5, v11

    goto :goto_2e

    :catch_d
    move-exception v0

    move-object/from16 v28, v5

    :goto_28
    move-object/from16 v26, v8

    :goto_29
    move-object v5, v11

    goto :goto_2c

    :catch_e
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v26, v8

    goto :goto_2b

    :catch_f
    move-exception v0

    move-object/from16 v28, v5

    goto :goto_2a

    :catch_10
    move-exception v0

    goto :goto_2a

    :catchall_6
    move-exception v0

    const/4 v5, 0x0

    goto :goto_2e

    :catch_11
    move-exception v0

    move-object/from16 p2, v5

    :goto_2a
    move-object/from16 v26, v8

    move-object/from16 v25, v11

    :goto_2b
    const/4 v5, 0x0

    .line 223
    :goto_2c
    :try_start_1c
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 226
    invoke-virtual {v2, v12, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v5, :cond_32

    .line 228
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_32
    :goto_2d
    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :catchall_7
    move-exception v0

    :goto_2e
    if-eqz v5, :cond_33

    .line 230
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_33
    throw v0

    :cond_34
    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 v26, v8

    move-object/from16 v25, v11

    .line 232
    :goto_2f
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 234
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_30

    .line 236
    :cond_36
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 237
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/e4;

    new-instance v8, Lcom/google/android/gms/measurement/internal/b;

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 238
    invoke-direct {v8, v10, v9, v3, v7}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/e4;)V

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    .line 239
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    move-result v7

    invoke-direct {v10, v3, v7}, Lcom/google/android/gms/measurement/internal/e;->o(II)Z

    move-result v24

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-object/from16 v20, v6

    move-wide/from16 v21, v14

    move-object/from16 v23, v26

    .line 240
    invoke-virtual/range {v17 .. v24}, Lcom/google/android/gms/measurement/internal/b;->k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/t6;JLcom/google/android/gms/measurement/internal/c0;Z)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/he;

    move-result-object v9

    .line 242
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/he;->a(Lcom/google/android/gms/measurement/internal/c;)V

    goto :goto_31

    :cond_37
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_38
    if-nez v7, :cond_35

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :cond_39
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v11, v25

    const/4 v3, 0x0

    goto/16 :goto_24

    :goto_32
    if-nez p6, :cond_4e

    .line 245
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_43

    .line 246
    :cond_3a
    new-instance v2, Lr/a;

    .line 247
    invoke-direct {v2}, Lr/a;-><init>()V

    .line 248
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/w7;

    .line 249
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/w7;->E()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_41

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 251
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 252
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 253
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 254
    invoke-static {v7}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    invoke-static {v5}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lr/a;

    .line 256
    invoke-direct {v8}, Lr/a;-><init>()V

    .line 257
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_1d
    const-string v18, "property_filters"

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_16
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    const/4 v9, 0x0

    :try_start_1e
    aput-object v28, v0, v9
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_15
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    const/4 v9, 0x1

    :try_start_1f
    aput-object v16, v0, v9

    const-string v20, "app_id=? AND property_name=?"

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    .line 258
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_16
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 259
    :try_start_20
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3c
    const/4 v11, 0x1

    .line 260
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_20} :catch_14
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 261
    :try_start_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m4;->K()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/m4;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_14
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    const/4 v13, 0x0

    .line 262
    :try_start_22
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 263
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-nez v15, :cond_3d

    new-instance v15, Ljava/util/ArrayList;

    .line 264
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_3d
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :catch_12
    move-exception v0

    const/4 v13, 0x0

    .line 267
    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 268
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v14

    .line 269
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v14

    const-string v15, "Failed to merge filter"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v15, v11, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    :goto_34
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    if-nez v0, :cond_3c

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_38

    :cond_3e
    const/4 v13, 0x0

    .line 272
    :try_start_23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_23} :catch_13
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 273
    :goto_35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_38

    :catch_13
    move-exception v0

    goto :goto_37

    :catch_14
    move-exception v0

    const/4 v13, 0x0

    goto :goto_37

    :catch_15
    move-exception v0

    move v13, v9

    goto :goto_36

    :catchall_8
    move-exception v0

    const/4 v5, 0x0

    goto :goto_39

    :catch_16
    move-exception v0

    const/4 v13, 0x0

    :goto_36
    const/4 v9, 0x0

    .line 274
    :goto_37
    :try_start_24
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 275
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 276
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 277
    invoke-virtual {v6, v12, v7, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    if-eqz v9, :cond_3f

    goto :goto_35

    .line 279
    :cond_3f
    :goto_38
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :catchall_9
    move-exception v0

    move-object v5, v9

    :goto_39
    if-eqz v5, :cond_40

    .line 280
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_40
    throw v0

    :cond_41
    const/4 v13, 0x0

    .line 282
    :goto_3a
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    .line 283
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_33

    .line 286
    :cond_42
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 287
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/m4;

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 288
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v11

    .line 289
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/p5;->z()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x2

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 290
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v11

    .line 291
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v11

    .line 292
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 293
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m4;->C()Z

    move-result v17

    if-eqz v17, :cond_43

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m4;->D()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_3d

    :cond_43
    const/4 v13, 0x0

    .line 294
    :goto_3d
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v14

    move-object/from16 p1, v0

    .line 295
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m4;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "Evaluating filter. audience, filter, property"

    .line 296
    invoke-virtual {v11, v14, v15, v13, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v0

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 299
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    move-result-object v11

    .line 300
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/td;->M(Lcom/google/android/gms/internal/measurement/m4;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Filter definition"

    invoke-virtual {v0, v13, v11}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3e

    :cond_44
    move-object/from16 p1, v0

    .line 301
    :goto_3e
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m4;->C()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m4;->D()I

    move-result v0

    const/16 v11, 0x100

    if-le v0, v11, :cond_45

    goto :goto_3f

    .line 302
    :cond_45
    new-instance v0, Lcom/google/android/gms/measurement/internal/d;

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 303
    invoke-direct {v0, v10, v9, v6, v8}, Lcom/google/android/gms/measurement/internal/d;-><init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/m4;)V

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/e;->g:Ljava/lang/Long;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/e;->h:Ljava/lang/Long;

    .line 304
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m4;->D()I

    move-result v8

    invoke-direct {v10, v6, v8}, Lcom/google/android/gms/measurement/internal/e;->o(II)Z

    move-result v8

    .line 305
    invoke-virtual {v0, v9, v11, v4, v8}, Lcom/google/android/gms/measurement/internal/d;->k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/w7;Z)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 306
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/he;

    move-result-object v9

    .line 307
    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/he;->a(Lcom/google/android/gms/measurement/internal/c;)V

    move-object/from16 v0, p1

    const/4 v13, 0x0

    goto/16 :goto_3c

    :cond_46
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    .line 308
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 309
    :cond_47
    :goto_3f
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v0

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 311
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m4;->C()Z

    move-result v9

    if-eqz v9, :cond_48

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/m4;->D()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_40

    :cond_48
    const/4 v8, 0x0

    :goto_40
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid property filter ID. appId, id"

    .line 312
    invoke-virtual {v0, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42

    :cond_49
    move-object/from16 p1, v0

    :goto_41
    if-nez v8, :cond_4a

    :goto_42
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    .line 313
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4a
    move-object/from16 v0, p1

    const/4 v13, 0x0

    goto/16 :goto_3b

    .line 314
    :cond_4b
    :goto_43
    new-instance v1, Ljava/util/ArrayList;

    .line 315
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    .line 316
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/e;->e:Ljava/util/Set;

    .line 317
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 318
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/e;->f:Ljava/util/Map;

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/he;

    .line 320
    invoke-static {v3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/he;->b(I)Lcom/google/android/gms/internal/measurement/h6;

    move-result-object v0

    .line 322
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 323
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v3

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    .line 324
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/h6;->E()Lcom/google/android/gms/internal/measurement/k7;

    move-result-object v0

    .line 325
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 326
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 327
    invoke-static {v5}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v9;->e()[B

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    .line 330
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 331
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v28

    .line 332
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v25

    .line 333
    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 334
    :try_start_25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "audience_filter_values"
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_25} :catch_18

    const/4 v9, 0x5

    const/4 v11, 0x0

    .line 335
    :try_start_26
    invoke-virtual {v0, v8, v11, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-nez v0, :cond_4c

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 336
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v0

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 338
    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_26} :catch_17

    goto :goto_46

    :catch_17
    move-exception v0

    goto :goto_45

    :catch_18
    move-exception v0

    const/4 v11, 0x0

    .line 339
    :goto_45
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 340
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v3

    .line 341
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error storing filter results. appId"

    .line 342
    invoke-virtual {v3, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    :goto_46
    move-object/from16 v25, v4

    move-object/from16 v28, v7

    goto/16 :goto_44

    :cond_4d
    return-object v1

    .line 343
    :cond_4e
    new-instance v0, Ljava/util/ArrayList;

    .line 344
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :catchall_a
    move-exception v0

    move-object v5, v4

    :goto_47
    if-eqz v5, :cond_4f

    .line 345
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_4f
    throw v0
.end method
