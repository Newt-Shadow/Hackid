.class public final Lf3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/x;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lb3/f2$f;

.field private c:Lf3/v;

.field private d:Lx4/j$a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf3/l;->a:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private b(Lb3/f2$f;)Lf3/v;
    .locals 4

    .line 1
    iget-object v0, p0, Lf3/l;->d:Lx4/j$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lx4/s$b;

    .line 7
    .line 8
    invoke-direct {v0}, Lx4/s$b;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lf3/l;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lx4/s$b;->e(Ljava/lang/String;)Lx4/s$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    new-instance v1, Lf3/k0;

    .line 18
    .line 19
    iget-object v2, p1, Lb3/f2$f;->c:Landroid/net/Uri;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_1
    iget-boolean v3, p1, Lb3/f2$f;->h:Z

    .line 30
    .line 31
    invoke-direct {v1, v2, v3, v0}, Lf3/k0;-><init>(Ljava/lang/String;ZLx4/j$a;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lb3/f2$f;->e:Lo6/r;

    .line 35
    .line 36
    invoke-virtual {v0}, Lo6/r;->h()Lo6/s;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lo6/s;->A()Lo6/r0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v3, v2}, Lf3/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    new-instance v0, Lf3/h$b;

    .line 73
    .line 74
    invoke-direct {v0}, Lf3/h$b;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v2, p1, Lb3/f2$f;->a:Ljava/util/UUID;

    .line 78
    .line 79
    sget-object v3, Lf3/j0;->d:Lf3/b0$c;

    .line 80
    .line 81
    invoke-virtual {v0, v2, v3}, Lf3/h$b;->e(Ljava/util/UUID;Lf3/b0$c;)Lf3/h$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-boolean v2, p1, Lb3/f2$f;->f:Z

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lf3/h$b;->b(Z)Lf3/h$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-boolean v2, p1, Lb3/f2$f;->g:Z

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lf3/h$b;->c(Z)Lf3/h$b;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v2, p1, Lb3/f2$f;->j:Lo6/q;

    .line 98
    .line 99
    invoke-static {v2}, Lq6/e;->k(Ljava/util/Collection;)[I

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Lf3/h$b;->d([I)Lf3/h$b;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Lf3/h$b;->a(Lf3/m0;)Lf3/h;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1}, Lb3/f2$f;->c()[B

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, v1, p1}, Lf3/h;->F(I[B)V

    .line 117
    .line 118
    .line 119
    return-object v0
.end method


# virtual methods
.method public a(Lb3/f2;)Lf3/v;
    .locals 2

    .line 1
    iget-object v0, p1, Lb3/f2;->b:Lb3/f2$h;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lb3/f2;->b:Lb3/f2$h;

    .line 7
    .line 8
    iget-object p1, p1, Lb3/f2$h;->c:Lb3/f2$f;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sget v0, Ly4/q0;->a:I

    .line 13
    .line 14
    const/16 v1, 0x12

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lf3/l;->a:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lf3/l;->b:Lb3/f2$f;

    .line 23
    .line 24
    invoke-static {p1, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iput-object p1, p0, Lf3/l;->b:Lb3/f2$f;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lf3/l;->b(Lb3/f2$f;)Lf3/v;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lf3/l;->c:Lf3/v;

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lf3/l;->c:Lf3/v;

    .line 39
    .line 40
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lf3/v;

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1

    .line 51
    :cond_2
    :goto_0
    sget-object p1, Lf3/v;->a:Lf3/v;

    .line 52
    .line 53
    return-object p1
.end method
