.class public final Llb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/u;


# instance fields
.field private final a:Leb/d;


# direct methods
.method public constructor <init>(Leb/d;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llb/b;->a:Leb/d;

    .line 10
    .line 11
    return-void
.end method

.method private final b(Lne/z;)Lne/z;
    .locals 2

    .line 1
    new-instance v0, Laf/d;

    .line 2
    .line 3
    invoke-direct {v0}, Laf/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lne/z;->e(Laf/e;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Llb/b$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, v0}, Llb/b$a;-><init>(Lne/z;Laf/d;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method private final c(Lne/z;)Lne/z;
    .locals 1

    .line 1
    new-instance v0, Llb/b$b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Llb/b$b;-><init>(Lne/z;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(Lne/u$a;)Lne/a0;
    .locals 5

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lne/u$a;->b()Lne/y;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lne/y;->a()Lne/z;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v2, "Content-Encoding"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lne/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0}, Lne/y;->h()Lne/y$a;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "gzip"

    .line 29
    .line 30
    invoke-virtual {v3, v2, v4}, Lne/y$a;->d(Ljava/lang/String;Ljava/lang/String;)Lne/y$a;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0}, Lne/y;->g()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {p0, v1}, Llb/b;->c(Lne/z;)Lne/z;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {p0, v1}, Llb/b;->b(Lne/z;)Lne/z;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v2, v3, v1}, Lne/y$a;->f(Ljava/lang/String;Lne/z;)Lne/y$a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lne/y$a;->a()Lne/y;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    iget-object v2, p0, Llb/b;->a:Leb/d;

    .line 57
    .line 58
    invoke-virtual {v2}, Leb/d;->o()Llb/i;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "Failed to gzip the request body: "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x2e

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v2, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-interface {p1, v0}, Lne/u$a;->a(Lne/y;)Lne/a0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    invoke-interface {p1, v0}, Lne/u$a;->a(Lne/y;)Lne/a0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_1
    return-object p1
.end method
