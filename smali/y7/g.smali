.class public Ly7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly7/j;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ly7/k;

.field private final c:Ly7/h;

.field private final d:Lq7/i0;

.field private final e:Ly7/a;

.field private final f:Ly7/l;

.field private final g:Lq7/j0;

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Ly7/k;Lq7/i0;Ly7/h;Ly7/a;Ly7/l;Lq7/j0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly7/g;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    new-instance v2, Lm6/l;

    .line 14
    .line 15
    invoke-direct {v2}, Lm6/l;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Ly7/g;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    iput-object p1, p0, Ly7/g;->a:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p2, p0, Ly7/g;->b:Ly7/k;

    .line 26
    .line 27
    iput-object p3, p0, Ly7/g;->d:Lq7/i0;

    .line 28
    .line 29
    iput-object p4, p0, Ly7/g;->c:Ly7/h;

    .line 30
    .line 31
    iput-object p5, p0, Ly7/g;->e:Ly7/a;

    .line 32
    .line 33
    iput-object p6, p0, Ly7/g;->f:Ly7/l;

    .line 34
    .line 35
    iput-object p7, p0, Ly7/g;->g:Lq7/j0;

    .line 36
    .line 37
    invoke-static {p3}, Ly7/b;->b(Lq7/i0;)Ly7/d;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method static synthetic c(Ly7/g;)Ly7/h;
    .locals 0

    .line 1
    iget-object p0, p0, Ly7/g;->c:Ly7/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Ly7/g;)Ly7/a;
    .locals 0

    .line 1
    iget-object p0, p0, Ly7/g;->e:Ly7/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Ly7/g;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ly7/g;->q(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Ly7/g;)Ly7/k;
    .locals 0

    .line 1
    iget-object p0, p0, Ly7/g;->b:Ly7/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Ly7/g;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ly7/g;->r(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic h(Ly7/g;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Ly7/g;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Ly7/g;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Ly7/g;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Ly7/g;)Ly7/l;
    .locals 0

    .line 1
    iget-object p0, p0, Ly7/g;->f:Ly7/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Lq7/o0;Lv7/b;Ljava/lang/String;Ljava/lang/String;Lw7/g;Lq7/j0;)Ly7/g;
    .locals 18

    .line 1
    invoke-virtual/range {p2 .. p2}, Lq7/o0;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v4, Lq7/i1;

    .line 6
    .line 7
    invoke-direct {v4}, Lq7/i1;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v5, Ly7/h;

    .line 11
    .line 12
    invoke-direct {v5, v4}, Ly7/h;-><init>(Lq7/i0;)V

    .line 13
    .line 14
    .line 15
    new-instance v6, Ly7/a;

    .line 16
    .line 17
    move-object/from16 v1, p6

    .line 18
    .line 19
    invoke-direct {v6, v1}, Ly7/a;-><init>(Lw7/g;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    const-string v2, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    .line 25
    .line 26
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v7, Ly7/c;

    .line 35
    .line 36
    move-object/from16 v2, p3

    .line 37
    .line 38
    invoke-direct {v7, v1, v2}, Ly7/c;-><init>(Ljava/lang/String;Lv7/b;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p2 .. p2}, Lq7/o0;->h()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    invoke-virtual/range {p2 .. p2}, Lq7/o0;->i()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    invoke-virtual/range {p2 .. p2}, Lq7/o0;->j()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    invoke-static/range {p0 .. p0}, Lq7/j;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object/from16 v2, p1

    .line 58
    .line 59
    move-object/from16 v3, p4

    .line 60
    .line 61
    move-object/from16 v15, p5

    .line 62
    .line 63
    filled-new-array {v1, v2, v15, v3}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lq7/j;->h([Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    invoke-static {v0}, Lq7/k0;->b(Ljava/lang/String;)Lq7/k0;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lq7/k0;->f()I

    .line 76
    .line 77
    .line 78
    move-result v17

    .line 79
    new-instance v0, Ly7/k;

    .line 80
    .line 81
    move-object v8, v0

    .line 82
    move-object/from16 v9, p1

    .line 83
    .line 84
    move-object/from16 v13, p2

    .line 85
    .line 86
    move-object/from16 v16, p4

    .line 87
    .line 88
    invoke-direct/range {v8 .. v17}, Ly7/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lq7/p0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    new-instance v9, Ly7/g;

    .line 92
    .line 93
    move-object v1, v9

    .line 94
    move-object/from16 v2, p0

    .line 95
    .line 96
    move-object v3, v0

    .line 97
    move-object/from16 v8, p7

    .line 98
    .line 99
    invoke-direct/range {v1 .. v8}, Ly7/g;-><init>(Landroid/content/Context;Ly7/k;Lq7/i0;Ly7/h;Ly7/a;Ly7/l;Lq7/j0;)V

    .line 100
    .line 101
    .line 102
    return-object v9
.end method

.method private m(Ly7/e;)Ly7/d;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Ly7/e;->b:Ly7/e;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Ly7/g;->e:Ly7/a;

    .line 11
    .line 12
    invoke-virtual {v1}, Ly7/a;->b()Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-object v2, p0, Ly7/g;->c:Ly7/h;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ly7/h;->b(Lorg/json/JSONObject;)Ly7/d;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v3, "Loaded cached settings: "

    .line 27
    .line 28
    invoke-direct {p0, v1, v3}, Ly7/g;->q(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Ly7/g;->d:Lq7/i0;

    .line 32
    .line 33
    invoke-interface {v1}, Lq7/i0;->a()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    sget-object v1, Ly7/e;->c:Ly7/e;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v3, v4}, Ly7/d;->a(J)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "Cached settings have expired."

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ln7/g;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "Returning cached settings."

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ln7/g;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    move-object v0, v2

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception p1

    .line 74
    move-object v0, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :try_start_2
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v1, "Failed to parse cached settings data."

    .line 81
    .line 82
    invoke-virtual {p1, v1, v0}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v1, "No cached settings data found."

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ln7/g;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catch_1
    move-exception p1

    .line 97
    :goto_1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "Failed to get cached settings"

    .line 102
    .line 103
    invoke-virtual {v1, v2, p1}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_2
    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ly7/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lq7/j;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "existing_instance_identifier"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method private q(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private r(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly7/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lq7/j;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "existing_instance_identifier"

    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method


# virtual methods
.method public a()Lm6/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Ly7/g;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm6/l;

    .line 8
    .line 9
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public b()Ly7/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ly7/g;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly7/d;

    .line 8
    .line 9
    return-object v0
.end method

.method k()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ly7/g;->n()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ly7/g;->b:Ly7/k;

    .line 6
    .line 7
    iget-object v1, v1, Ly7/k;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public o(Lr7/i;)Lm6/Task;
    .locals 1

    .line 1
    sget-object v0, Ly7/e;->a:Ly7/e;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ly7/g;->p(Ly7/e;Lr7/i;)Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public p(Ly7/e;Lr7/i;)Lm6/Task;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly7/g;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ly7/g;->m(Ly7/e;)Ly7/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Ly7/g;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Ly7/g;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lm6/l;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lm6/l;->e(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-static {p1}, Lm6/n;->e(Ljava/lang/Object;)Lm6/Task;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    sget-object p1, Ly7/e;->c:Ly7/e;

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ly7/g;->m(Ly7/e;)Ly7/d;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Ly7/g;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Ly7/g;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lm6/l;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lm6/l;->e(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p1, p0, Ly7/g;->g:Lq7/j0;

    .line 60
    .line 61
    invoke-virtual {p1}, Lq7/j0;->k()Lm6/Task;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p2, Lr7/i;->a:Lr7/e;

    .line 66
    .line 67
    new-instance v1, Ly7/g$a;

    .line 68
    .line 69
    invoke-direct {v1, p0, p2}, Ly7/g$a;-><init>(Ly7/g;Lr7/i;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Lm6/Task;->q(Ljava/util/concurrent/Executor;Lm6/k;)Lm6/Task;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method
