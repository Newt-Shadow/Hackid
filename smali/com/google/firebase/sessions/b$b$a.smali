.class public final Lcom/google/firebase/sessions/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/google/firebase/sessions/b$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/b$b$a;

    invoke-direct {v0}, Lcom/google/firebase/sessions/b$b$a;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/b$b$a;->a:Lcom/google/firebase/sessions/b$b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/b$b$a;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/b$b$a;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lu8/f0;Lj0/d;)Lu8/e0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/sessions/b$b$a;->m(Lu8/f0;Lj0/d;)Lu8/e0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lj0/d;)Lx8/h;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/b$b$a;->j(Lj0/d;)Lx8/h;

    move-result-object p0

    return-object p0
.end method

.method private final f(Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;)Lj0/i;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/sessions/b$b$a;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lj0/y;->a:Lj0/y;

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    invoke-virtual/range {v1 .. v6}, Lj0/y;->a(Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;)Lj0/i;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lj0/j;->a:Lj0/j;

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    move-object v2, p2

    .line 23
    move-object v3, p3

    .line 24
    move-object v4, p4

    .line 25
    move-object v5, p5

    .line 26
    invoke-virtual/range {v0 .. v5}, Lj0/j;->a(Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;)Lj0/i;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method static synthetic g(Lcom/google/firebase/sessions/b$b$a;Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;ILjava/lang/Object;)Lj0/i;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    move-object v3, p3

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v4, p4

    .line 14
    move-object v5, p5

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/b$b$a;->f(Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;)Lj0/i;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private final h()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "datastore_shared_counter"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :catch_0
    return v0
.end method

.method private static final j(Lj0/d;)Lx8/h;
    .locals 2

    .line 1
    const-string v0, "ex"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "FirebaseSessions"

    .line 7
    .line 8
    const-string v1, "CorruptionException in session configs DataStore"

    .line 9
    .line 10
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    sget-object p0, Lx8/i;->a:Lx8/i;

    .line 14
    .line 15
    invoke-virtual {p0}, Lx8/i;->d()Lx8/h;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static final k(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 1
    const-string v0, "aqs/sessionConfigsDataStore.data"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li0/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final m(Lu8/f0;Lj0/d;)Lu8/e0;
    .locals 2

    .line 1
    const-string v0, "ex"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "FirebaseSessions"

    .line 7
    .line 8
    const-string v1, "CorruptionException in session data DataStore"

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lu8/f0;->d()Lu8/e0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static final n(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 1
    const-string v0, "aqs/sessionDataStore.data"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li0/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final e(Lh7/f;)Lu8/b;
    .locals 1

    .line 1
    const-string v0, "firebaseApp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lu8/j0;->a:Lu8/j0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lu8/j0;->b(Lh7/f;)Lu8/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final i(Landroid/content/Context;Lad/i;)Lj0/i;
    .locals 9

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "blockingDispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lx8/i;->a:Lx8/i;

    .line 12
    .line 13
    new-instance v3, Lk0/b;

    .line 14
    .line 15
    new-instance v0, Lu8/o;

    .line 16
    .line 17
    invoke-direct {v0}, Lu8/o;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v0}, Lk0/b;-><init>(Lid/l;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {p2}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    new-instance v6, Lu8/p;

    .line 29
    .line 30
    invoke-direct {v6, p1}, Lu8/p;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    const/4 v8, 0x0

    .line 35
    move-object v1, p0

    .line 36
    invoke-static/range {v1 .. v8}, Lcom/google/firebase/sessions/b$b$a;->g(Lcom/google/firebase/sessions/b$b$a;Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;ILjava/lang/Object;)Lj0/i;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final l(Landroid/content/Context;Lad/i;Lu8/f0;)Lj0/i;
    .locals 9

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "blockingDispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionDataSerializer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lk0/b;

    .line 17
    .line 18
    new-instance v0, Lu8/m;

    .line 19
    .line 20
    invoke-direct {v0, p3}, Lu8/m;-><init>(Lu8/f0;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v0}, Lk0/b;-><init>(Lid/l;)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {p2}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    new-instance v6, Lu8/n;

    .line 32
    .line 33
    invoke-direct {v6, p1}, Lu8/n;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const/4 v7, 0x4

    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move-object v2, p3

    .line 40
    invoke-static/range {v1 .. v8}, Lcom/google/firebase/sessions/b$b$a;->g(Lcom/google/firebase/sessions/b$b$a;Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;ILjava/lang/Object;)Lj0/i;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public final o()Lu8/w0;
    .locals 1

    .line 1
    sget-object v0, Lu8/x0;->a:Lu8/x0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Lu8/y0;
    .locals 1

    .line 1
    sget-object v0, Lu8/z0;->a:Lu8/z0;

    .line 2
    .line 3
    return-object v0
.end method
