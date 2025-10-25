.class public final Lc3/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/s3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/p1$a;
    }
.end annotation


# static fields
.field public static final h:Ln6/s;

.field private static final i:Ljava/util/Random;


# instance fields
.field private final a:Lb3/g4$d;

.field private final b:Lb3/g4$b;

.field private final c:Ljava/util/HashMap;

.field private final d:Ln6/s;

.field private e:Lc3/s3$a;

.field private f:Lb3/g4;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc3/o1;

    .line 2
    .line 3
    invoke-direct {v0}, Lc3/o1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc3/p1;->h:Ln6/s;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Random;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lc3/p1;->i:Ljava/util/Random;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lc3/p1;->h:Ln6/s;

    invoke-direct {p0, v0}, Lc3/p1;-><init>(Ln6/s;)V

    return-void
.end method

.method public constructor <init>(Ln6/s;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc3/p1;->d:Ln6/s;

    .line 4
    new-instance p1, Lb3/g4$d;

    invoke-direct {p1}, Lb3/g4$d;-><init>()V

    iput-object p1, p0, Lc3/p1;->a:Lb3/g4$d;

    .line 5
    new-instance p1, Lb3/g4$b;

    invoke-direct {p1}, Lb3/g4$b;-><init>()V

    iput-object p1, p0, Lc3/p1;->b:Lb3/g4$b;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lc3/p1;->c:Ljava/util/HashMap;

    .line 7
    sget-object p1, Lb3/g4;->a:Lb3/g4;

    iput-object p1, p0, Lc3/p1;->f:Lb3/g4;

    return-void
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lc3/p1;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lc3/p1;)Lb3/g4$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc3/p1;->a:Lb3/g4$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lc3/p1;)Lb3/g4$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc3/p1;->b:Lb3/g4$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private static k()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sget-object v1, Lc3/p1;->i:Ljava/util/Random;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private l(ILd4/t$b;)Lc3/p1$a;
    .locals 9

    .line 1
    iget-object v0, p0, Lc3/p1;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lc3/p1$a;

    .line 28
    .line 29
    invoke-virtual {v4, p1, p2}, Lc3/p1$a;->k(ILd4/t$b;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, p1, p2}, Lc3/p1$a;->i(ILd4/t$b;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-static {v4}, Lc3/p1$a;->b(Lc3/p1$a;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide/16 v7, -0x1

    .line 43
    .line 44
    cmp-long v7, v5, v7

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    cmp-long v7, v5, v2

    .line 49
    .line 50
    if-gez v7, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-nez v7, :cond_0

    .line 54
    .line 55
    invoke-static {v1}, Ly4/q0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Lc3/p1$a;

    .line 60
    .line 61
    invoke-static {v5}, Lc3/p1$a;->h(Lc3/p1$a;)Ld4/t$b;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-static {v4}, Lc3/p1$a;->h(Lc3/p1$a;)Ld4/t$b;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    move-object v1, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    move-object v1, v4

    .line 76
    move-wide v2, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    if-nez v1, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lc3/p1;->d:Ln6/s;

    .line 81
    .line 82
    invoke-interface {v0}, Ln6/s;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/String;

    .line 87
    .line 88
    new-instance v1, Lc3/p1$a;

    .line 89
    .line 90
    invoke-direct {v1, p0, v0, p1, p2}, Lc3/p1$a;-><init>(Lc3/p1;Ljava/lang/String;ILd4/t$b;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lc3/p1;->c:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :cond_4
    return-object v1
.end method

.method private m(Lc3/b$a;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lc3/b$a;->b:Lb3/g4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb3/g4;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lc3/p1;->g:Ljava/lang/String;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lc3/p1;->c:Ljava/util/HashMap;

    .line 14
    .line 15
    iget-object v1, p0, Lc3/p1;->g:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lc3/p1$a;

    .line 22
    .line 23
    iget v1, p1, Lc3/b$a;->c:I

    .line 24
    .line 25
    iget-object v2, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 26
    .line 27
    invoke-direct {p0, v1, v2}, Lc3/p1;->l(ILd4/t$b;)Lc3/p1$a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lc3/p1;->g:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lc3/p1;->g(Lc3/b$a;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Ld4/s;->b()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {v0}, Lc3/p1$a;->b(Lc3/p1$a;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    iget-object v4, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 57
    .line 58
    iget-wide v4, v4, Ld4/s;->d:J

    .line 59
    .line 60
    cmp-long v2, v2, v4

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    invoke-static {v0}, Lc3/p1$a;->h(Lc3/p1$a;)Ld4/t$b;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-static {v0}, Lc3/p1$a;->h(Lc3/p1$a;)Ld4/t$b;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget v2, v2, Ld4/s;->b:I

    .line 75
    .line 76
    iget-object v3, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 77
    .line 78
    iget v3, v3, Ld4/s;->b:I

    .line 79
    .line 80
    if-ne v2, v3, :cond_1

    .line 81
    .line 82
    invoke-static {v0}, Lc3/p1$a;->h(Lc3/p1$a;)Ld4/t$b;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget v0, v0, Ld4/s;->c:I

    .line 87
    .line 88
    iget-object v2, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 89
    .line 90
    iget v2, v2, Ld4/s;->c:I

    .line 91
    .line 92
    if-eq v0, v2, :cond_2

    .line 93
    .line 94
    :cond_1
    new-instance v0, Ld4/t$b;

    .line 95
    .line 96
    iget-object v2, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 97
    .line 98
    iget-object v3, v2, Ld4/s;->a:Ljava/lang/Object;

    .line 99
    .line 100
    iget-wide v4, v2, Ld4/s;->d:J

    .line 101
    .line 102
    invoke-direct {v0, v3, v4, v5}, Ld4/t$b;-><init>(Ljava/lang/Object;J)V

    .line 103
    .line 104
    .line 105
    iget v2, p1, Lc3/b$a;->c:I

    .line 106
    .line 107
    invoke-direct {p0, v2, v0}, Lc3/p1;->l(ILd4/t$b;)Lc3/p1$a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v2, p0, Lc3/p1;->e:Lc3/s3$a;

    .line 112
    .line 113
    invoke-static {v0}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {v2, p1, v0, v1}, Lc3/s3$a;->V(Lc3/b$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lc3/b$a;I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc3/p1;->e:Lc3/s3$a;

    .line 3
    .line 4
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    move p2, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p2, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lc3/p1;->c:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lc3/p1$a;

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Lc3/p1$a;->j(Lc3/b$a;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lc3/p1$a;->d(Lc3/p1$a;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-static {v3}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v5, p0, Lc3/p1;->g:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-static {v3}, Lc3/p1$a;->f(Lc3/p1$a;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    move v5, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v5, v1

    .line 74
    :goto_2
    if-eqz v4, :cond_3

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    iput-object v4, p0, Lc3/p1;->g:Ljava/lang/String;

    .line 78
    .line 79
    :cond_3
    iget-object v4, p0, Lc3/p1;->e:Lc3/s3$a;

    .line 80
    .line 81
    invoke-static {v3}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v4, p1, v3, v5}, Lc3/s3$a;->m(Lc3/b$a;Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-direct {p0, p1}, Lc3/p1;->m(Lc3/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    .line 96
    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc3/p1;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized c(Lc3/b$a;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lc3/p1;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lc3/p1;->c:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lc3/p1$a;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lc3/p1$a;->d(Lc3/p1$a;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lc3/p1;->e:Lc3/s3$a;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-static {v1}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-interface {v2, p1, v1, v3}, Lc3/s3$a;->m(Lc3/b$a;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public declared-synchronized d(Lb3/g4;Ld4/t$b;)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p2, Ld4/s;->a:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lc3/p1;->b:Lb3/g4$b;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Lb3/g4$b;->c:I

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lc3/p1;->l(ILd4/t$b;)Lc3/p1$a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public declared-synchronized e(Lc3/b$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc3/p1;->e:Lc3/s3$a;

    .line 3
    .line 4
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc3/p1;->f:Lb3/g4;

    .line 8
    .line 9
    iget-object v1, p1, Lc3/b$a;->b:Lb3/g4;

    .line 10
    .line 11
    iput-object v1, p0, Lc3/p1;->f:Lb3/g4;

    .line 12
    .line 13
    iget-object v1, p0, Lc3/p1;->c:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lc3/p1$a;

    .line 34
    .line 35
    iget-object v3, p0, Lc3/p1;->f:Lb3/g4;

    .line 36
    .line 37
    invoke-virtual {v2, v0, v3}, Lc3/p1$a;->m(Lb3/g4;Lb3/g4;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Lc3/p1$a;->j(Lc3/b$a;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lc3/p1$a;->d(Lc3/p1$a;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-static {v2}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p0, Lc3/p1;->g:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    iput-object v3, p0, Lc3/p1;->g:Ljava/lang/String;

    .line 72
    .line 73
    :cond_2
    iget-object v3, p0, Lc3/p1;->e:Lc3/s3$a;

    .line 74
    .line 75
    invoke-static {v2}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-interface {v3, p1, v2, v4}, Lc3/s3$a;->m(Lc3/b$a;Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-direct {p0, p1}, Lc3/p1;->m(Lc3/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    monitor-exit p0

    .line 91
    throw p1
.end method

.method public f(Lc3/s3$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc3/p1;->e:Lc3/s3$a;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized g(Lc3/b$a;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, v1, Lc3/p1;->e:Lc3/s3$a;

    .line 7
    .line 8
    invoke-static {v2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lc3/b$a;->b:Lb3/g4;

    .line 12
    .line 13
    invoke-virtual {v2}, Lb3/g4;->u()Z

    .line 14
    .line 15
    .line 16
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    iget-object v2, v1, Lc3/p1;->c:Ljava/util/HashMap;

    .line 22
    .line 23
    iget-object v3, v1, Lc3/p1;->g:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lc3/p1$a;

    .line 30
    .line 31
    iget-object v3, v0, Lc3/b$a;->d:Ld4/t$b;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-static {v2}, Lc3/p1$a;->b(Lc3/p1$a;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide/16 v7, -0x1

    .line 43
    .line 44
    cmp-long v3, v5, v7

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-static {v2}, Lc3/p1$a;->c(Lc3/p1$a;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget v3, v0, Lc3/b$a;->c:I

    .line 54
    .line 55
    if-eq v2, v3, :cond_2

    .line 56
    .line 57
    :goto_0
    move v5, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v3, v0, Lc3/b$a;->d:Ld4/t$b;

    .line 60
    .line 61
    iget-wide v6, v3, Ld4/s;->d:J

    .line 62
    .line 63
    invoke-static {v2}, Lc3/p1$a;->b(Lc3/p1$a;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    cmp-long v2, v6, v2

    .line 68
    .line 69
    if-gez v2, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :cond_3
    :try_start_2
    iget v2, v0, Lc3/b$a;->c:I

    .line 77
    .line 78
    iget-object v3, v0, Lc3/b$a;->d:Ld4/t$b;

    .line 79
    .line 80
    invoke-direct {v1, v2, v3}, Lc3/p1;->l(ILd4/t$b;)Lc3/p1$a;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v3, v1, Lc3/p1;->g:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v3, :cond_4

    .line 87
    .line 88
    invoke-static {v2}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iput-object v3, v1, Lc3/p1;->g:Ljava/lang/String;

    .line 93
    .line 94
    :cond_4
    iget-object v3, v0, Lc3/b$a;->d:Ld4/t$b;

    .line 95
    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    invoke-virtual {v3}, Ld4/s;->b()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    new-instance v10, Ld4/t$b;

    .line 105
    .line 106
    iget-object v3, v0, Lc3/b$a;->d:Ld4/t$b;

    .line 107
    .line 108
    iget-object v5, v3, Ld4/s;->a:Ljava/lang/Object;

    .line 109
    .line 110
    iget-wide v6, v3, Ld4/s;->d:J

    .line 111
    .line 112
    iget v3, v3, Ld4/s;->b:I

    .line 113
    .line 114
    invoke-direct {v10, v5, v6, v7, v3}, Ld4/t$b;-><init>(Ljava/lang/Object;JI)V

    .line 115
    .line 116
    .line 117
    iget v3, v0, Lc3/b$a;->c:I

    .line 118
    .line 119
    invoke-direct {v1, v3, v10}, Lc3/p1;->l(ILd4/t$b;)Lc3/p1$a;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v3}, Lc3/p1$a;->d(Lc3/p1$a;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_5

    .line 128
    .line 129
    invoke-static {v3, v4}, Lc3/p1$a;->e(Lc3/p1$a;Z)Z

    .line 130
    .line 131
    .line 132
    iget-object v5, v0, Lc3/b$a;->b:Lb3/g4;

    .line 133
    .line 134
    iget-object v6, v0, Lc3/b$a;->d:Ld4/t$b;

    .line 135
    .line 136
    iget-object v6, v6, Ld4/s;->a:Ljava/lang/Object;

    .line 137
    .line 138
    iget-object v7, v1, Lc3/p1;->b:Lb3/g4$b;

    .line 139
    .line 140
    invoke-virtual {v5, v6, v7}, Lb3/g4;->l(Ljava/lang/Object;Lb3/g4$b;)Lb3/g4$b;

    .line 141
    .line 142
    .line 143
    iget-object v5, v1, Lc3/p1;->b:Lb3/g4$b;

    .line 144
    .line 145
    iget-object v6, v0, Lc3/b$a;->d:Ld4/t$b;

    .line 146
    .line 147
    iget v6, v6, Ld4/s;->b:I

    .line 148
    .line 149
    invoke-virtual {v5, v6}, Lb3/g4$b;->i(I)J

    .line 150
    .line 151
    .line 152
    move-result-wide v5

    .line 153
    invoke-static {v5, v6}, Ly4/q0;->X0(J)J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    iget-object v7, v1, Lc3/p1;->b:Lb3/g4$b;

    .line 158
    .line 159
    invoke-virtual {v7}, Lb3/g4$b;->p()J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    add-long/2addr v5, v7

    .line 164
    const-wide/16 v7, 0x0

    .line 165
    .line 166
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 167
    .line 168
    .line 169
    move-result-wide v11

    .line 170
    new-instance v15, Lc3/b$a;

    .line 171
    .line 172
    iget-wide v6, v0, Lc3/b$a;->a:J

    .line 173
    .line 174
    iget-object v8, v0, Lc3/b$a;->b:Lb3/g4;

    .line 175
    .line 176
    iget v9, v0, Lc3/b$a;->c:I

    .line 177
    .line 178
    iget-object v13, v0, Lc3/b$a;->f:Lb3/g4;

    .line 179
    .line 180
    iget v14, v0, Lc3/b$a;->g:I

    .line 181
    .line 182
    iget-object v5, v0, Lc3/b$a;->h:Ld4/t$b;

    .line 183
    .line 184
    move-object/from16 v16, v5

    .line 185
    .line 186
    iget-wide v4, v0, Lc3/b$a;->i:J

    .line 187
    .line 188
    move-object/from16 v20, v2

    .line 189
    .line 190
    move-object/from16 v21, v3

    .line 191
    .line 192
    iget-wide v2, v0, Lc3/b$a;->j:J

    .line 193
    .line 194
    move-wide/from16 v22, v4

    .line 195
    .line 196
    move-object/from16 v4, v16

    .line 197
    .line 198
    move-wide/from16 v16, v22

    .line 199
    .line 200
    move-object v5, v15

    .line 201
    move-object v0, v15

    .line 202
    move-object v15, v4

    .line 203
    move-wide/from16 v18, v2

    .line 204
    .line 205
    invoke-direct/range {v5 .. v19}, Lc3/b$a;-><init>(JLb3/g4;ILd4/t$b;JLb3/g4;ILd4/t$b;JJ)V

    .line 206
    .line 207
    .line 208
    iget-object v2, v1, Lc3/p1;->e:Lc3/s3$a;

    .line 209
    .line 210
    invoke-static/range {v21 .. v21}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-interface {v2, v0, v3}, Lc3/s3$a;->t0(Lc3/b$a;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    move-object/from16 v20, v2

    .line 219
    .line 220
    :goto_2
    invoke-static/range {v20 .. v20}, Lc3/p1$a;->d(Lc3/p1$a;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_6

    .line 225
    .line 226
    move-object/from16 v0, v20

    .line 227
    .line 228
    const/4 v2, 0x1

    .line 229
    invoke-static {v0, v2}, Lc3/p1$a;->e(Lc3/p1$a;Z)Z

    .line 230
    .line 231
    .line 232
    iget-object v2, v1, Lc3/p1;->e:Lc3/s3$a;

    .line 233
    .line 234
    invoke-static {v0}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    move-object/from16 v4, p1

    .line 239
    .line 240
    invoke-interface {v2, v4, v3}, Lc3/s3$a;->t0(Lc3/b$a;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_6
    move-object/from16 v4, p1

    .line 245
    .line 246
    move-object/from16 v0, v20

    .line 247
    .line 248
    :goto_3
    invoke-static {v0}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iget-object v3, v1, Lc3/p1;->g:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_7

    .line 259
    .line 260
    invoke-static {v0}, Lc3/p1$a;->f(Lc3/p1$a;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_7

    .line 265
    .line 266
    const/4 v2, 0x1

    .line 267
    invoke-static {v0, v2}, Lc3/p1$a;->g(Lc3/p1$a;Z)Z

    .line 268
    .line 269
    .line 270
    iget-object v2, v1, Lc3/p1;->e:Lc3/s3$a;

    .line 271
    .line 272
    invoke-static {v0}, Lc3/p1$a;->a(Lc3/p1$a;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-interface {v2, v4, v0}, Lc3/s3$a;->v0(Lc3/b$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .line 278
    .line 279
    :cond_7
    monitor-exit p0

    .line 280
    return-void

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    monitor-exit p0

    .line 283
    throw v0
.end method
