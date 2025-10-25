.class final Lcom/google/android/gms/measurement/internal/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:J

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/lang/Long;

.field final i:Ljava/lang/Long;

.field final j:Ljava/lang/Long;

.field final k:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p3

    .line 3
    .line 4
    move-wide/from16 v3, p5

    .line 5
    .line 6
    move-wide/from16 v5, p7

    .line 7
    .line 8
    move-wide/from16 v7, p11

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static/range {p2 .. p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    const-wide/16 v9, 0x0

    .line 20
    .line 21
    cmp-long v11, v1, v9

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    const/4 v13, 0x0

    .line 25
    if-ltz v11, :cond_0

    .line 26
    .line 27
    move v11, v12

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v11, v13

    .line 30
    :goto_0
    invoke-static {v11}, Ln5/q;->a(Z)V

    .line 31
    .line 32
    .line 33
    cmp-long v11, v3, v9

    .line 34
    .line 35
    if-ltz v11, :cond_1

    .line 36
    .line 37
    move v11, v12

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v11, v13

    .line 40
    :goto_1
    invoke-static {v11}, Ln5/q;->a(Z)V

    .line 41
    .line 42
    .line 43
    cmp-long v11, v5, v9

    .line 44
    .line 45
    if-ltz v11, :cond_2

    .line 46
    .line 47
    move v11, v12

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v11, v13

    .line 50
    :goto_2
    invoke-static {v11}, Ln5/q;->a(Z)V

    .line 51
    .line 52
    .line 53
    cmp-long v9, v7, v9

    .line 54
    .line 55
    if-ltz v9, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move v12, v13

    .line 59
    :goto_3
    invoke-static {v12}, Ln5/q;->a(Z)V

    .line 60
    .line 61
    .line 62
    move-object v9, p1

    .line 63
    iput-object v9, v0, Lcom/google/android/gms/measurement/internal/c0;->a:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v9, p2

    .line 66
    .line 67
    iput-object v9, v0, Lcom/google/android/gms/measurement/internal/c0;->b:Ljava/lang/String;

    .line 68
    .line 69
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/c0;->c:J

    .line 70
    .line 71
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/c0;->d:J

    .line 72
    .line 73
    iput-wide v5, v0, Lcom/google/android/gms/measurement/internal/c0;->e:J

    .line 74
    .line 75
    move-wide/from16 v1, p9

    .line 76
    .line 77
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/c0;->f:J

    .line 78
    .line 79
    iput-wide v7, v0, Lcom/google/android/gms/measurement/internal/c0;->g:J

    .line 80
    .line 81
    move-object/from16 v1, p13

    .line 82
    .line 83
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c0;->h:Ljava/lang/Long;

    .line 84
    .line 85
    move-object/from16 v1, p14

    .line 86
    .line 87
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c0;->i:Ljava/lang/Long;

    .line 88
    .line 89
    move-object/from16 v1, p15

    .line 90
    .line 91
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c0;->j:Ljava/lang/Long;

    .line 92
    .line 93
    move-object/from16 v1, p16

    .line 94
    .line 95
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c0;->k:Ljava/lang/Boolean;

    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method final a(J)Lcom/google/android/gms/measurement/internal/c0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v10, p1

    .line 4
    .line 5
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/c0;->g:J

    .line 6
    .line 7
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/c0;->h:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/c0;->i:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c0;->j:Ljava/lang/Long;

    .line 12
    .line 13
    move-object/from16 v16, v1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c0;->k:Ljava/lang/Boolean;

    .line 16
    .line 17
    move-object/from16 v17, v1

    .line 18
    .line 19
    new-instance v18, Lcom/google/android/gms/measurement/internal/c0;

    .line 20
    .line 21
    move-object/from16 v1, v18

    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/c0;->a:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/c0;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/c0;->c:J

    .line 28
    .line 29
    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/c0;->d:J

    .line 30
    .line 31
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/c0;->e:J

    .line 32
    .line 33
    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/c0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    return-object v18
.end method

.method final b(JJ)Lcom/google/android/gms/measurement/internal/c0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v12, p1

    .line 4
    .line 5
    new-instance v18, Lcom/google/android/gms/measurement/internal/c0;

    .line 6
    .line 7
    move-object/from16 v1, v18

    .line 8
    .line 9
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v14

    .line 13
    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/c0;->i:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/c0;->j:Ljava/lang/Long;

    .line 16
    .line 17
    move-object/from16 v16, v2

    .line 18
    .line 19
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/c0;->k:Ljava/lang/Boolean;

    .line 20
    .line 21
    move-object/from16 v17, v2

    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/c0;->a:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/c0;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/c0;->c:J

    .line 28
    .line 29
    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/c0;->d:J

    .line 30
    .line 31
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/c0;->e:J

    .line 32
    .line 33
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/c0;->f:J

    .line 34
    .line 35
    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/c0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 36
    .line 37
    .line 38
    return-object v18
.end method

.method final c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/c0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/c0;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/c0;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/c0;->c:J

    .line 13
    .line 14
    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/c0;->d:J

    .line 15
    .line 16
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/c0;->e:J

    .line 17
    .line 18
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/c0;->f:J

    .line 19
    .line 20
    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/c0;->g:J

    .line 21
    .line 22
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/c0;->h:Ljava/lang/Long;

    .line 23
    .line 24
    new-instance v18, Lcom/google/android/gms/measurement/internal/c0;

    .line 25
    .line 26
    move-object/from16 v1, v18

    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    move-object/from16 v16, p2

    .line 31
    .line 32
    move-object/from16 v17, p3

    .line 33
    .line 34
    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/c0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    return-object v18
.end method
