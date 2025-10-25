.class public final Lse/f;
.super Lve/f$c;
.source "SourceFile"

# interfaces
.implements Lne/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/f$a;,
        Lse/f$b;
    }
.end annotation


# static fields
.field public static final t:Lse/f$a;


# instance fields
.field private final c:Lse/g;

.field private final d:Lne/c0;

.field private e:Ljava/net/Socket;

.field private f:Ljava/net/Socket;

.field private g:Lne/r;

.field private h:Lne/x;

.field private i:Lve/f;

.field private j:Laf/f;

.field private k:Laf/e;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:Ljava/util/List;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lse/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lse/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lse/f;->t:Lse/f$a;

    return-void
.end method

.method public constructor <init>(Lse/g;Lne/c0;)V
    .locals 1

    .line 1
    const-string v0, "connectionPool"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "route"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lve/f$c;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lse/f;->c:Lse/g;

    .line 15
    .line 16
    iput-object p2, p0, Lse/f;->d:Lne/c0;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lse/f;->q:I

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lse/f;->r:Ljava/util/List;

    .line 27
    .line 28
    const-wide p1, 0x7fffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide p1, p0, Lse/f;->s:J

    .line 34
    .line 35
    return-void
.end method

.method private final A(Ljava/util/List;)Z
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/Collection;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lne/c0;

    .line 33
    .line 34
    invoke-virtual {v0}, Lne/c0;->b()Ljava/net/Proxy;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    if-ne v2, v3, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lse/f;->d:Lne/c0;

    .line 48
    .line 49
    invoke-virtual {v2}, Lne/c0;->b()Ljava/net/Proxy;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 58
    .line 59
    if-ne v2, v3, :cond_2

    .line 60
    .line 61
    iget-object v2, p0, Lse/f;->d:Lne/c0;

    .line 62
    .line 63
    invoke-virtual {v2}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    move v0, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move v0, v1

    .line 80
    :goto_0
    if-eqz v0, :cond_1

    .line 81
    .line 82
    move v1, v4

    .line 83
    :cond_3
    :goto_1
    return v1
.end method

.method private final E(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lse/f;->f:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lse/f;->j:Laf/f;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lse/f;->k:Laf/e;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lve/f$a;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    sget-object v6, Lre/e;->i:Lre/e;

    .line 24
    .line 25
    invoke-direct {v4, v5, v6}, Lve/f$a;-><init>(ZLre/e;)V

    .line 26
    .line 27
    .line 28
    iget-object v5, p0, Lse/f;->d:Lne/c0;

    .line 29
    .line 30
    invoke-virtual {v5}, Lne/c0;->a()Lne/a;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5}, Lne/a;->l()Lne/t;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Lne/t;->h()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v0, v5, v1, v2}, Lve/f$a;->s(Ljava/net/Socket;Ljava/lang/String;Laf/f;Laf/e;)Lve/f$a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lve/f$a;->k(Lve/f$c;)Lve/f$a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lve/f$a;->l(I)Lve/f$a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lve/f$a;->a()Lve/f;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lse/f;->i:Lve/f;

    .line 59
    .line 60
    sget-object v0, Lve/f;->C:Lve/f$b;

    .line 61
    .line 62
    invoke-virtual {v0}, Lve/f$b;->a()Lve/m;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lve/m;->d()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lse/f;->q:I

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    const/4 v1, 0x3

    .line 74
    invoke-static {p1, v3, v0, v1, v0}, Lve/f;->m1(Lve/f;ZLre/e;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private final F(Lne/t;)Z
    .locals 4

    .line 1
    sget-boolean v0, Loe/d;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Thread "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " MUST hold lock on "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lse/f;->d:Lne/c0;

    .line 52
    .line 53
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lne/t;->l()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0}, Lne/t;->l()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/4 v3, 0x0

    .line 70
    if-eq v1, v2, :cond_2

    .line 71
    .line 72
    return v3

    .line 73
    :cond_2
    invoke-virtual {p1}, Lne/t;->h()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0}, Lne/t;->h()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v1, 0x1

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    return v1

    .line 89
    :cond_3
    iget-boolean v0, p0, Lse/f;->m:Z

    .line 90
    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lse/f;->g:Lne/r;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1, v0}, Lse/f;->e(Lne/t;Lne/r;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    move v3, v1

    .line 107
    :cond_4
    return v3
.end method

.method public static final synthetic c(Lse/f;)Lne/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lse/f;->g:Lne/r;

    .line 2
    .line 3
    return-object p0
.end method

.method private final e(Lne/t;Lne/r;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lne/r;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lze/d;->a:Lze/d;

    .line 18
    .line 19
    invoke-virtual {p1}, Lne/t;->h()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lze/d;->e(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v2

    .line 37
    :goto_0
    return v1
.end method

.method private final h(IILne/e;Lne/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lse/f;->d:Lne/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lne/c0;->b()Ljava/net/Proxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lse/f;->d:Lne/c0;

    .line 8
    .line 9
    invoke-virtual {v1}, Lne/c0;->a()Lne/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v3, Lse/f$b;->a:[I

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    aget v2, v3, v2

    .line 28
    .line 29
    :goto_0
    const/4 v3, 0x1

    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    .line 35
    new-instance v1, Ljava/net/Socket;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v1}, Lne/a;->j()Ljavax/net/SocketFactory;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iput-object v1, p0, Lse/f;->e:Ljava/net/Socket;

    .line 53
    .line 54
    iget-object v2, p0, Lse/f;->d:Lne/c0;

    .line 55
    .line 56
    invoke-virtual {v2}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p4, p3, v2, v0}, Lne/q;->i(Lne/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    sget-object p2, Lwe/j;->a:Lwe/j$a;

    .line 67
    .line 68
    invoke-virtual {p2}, Lwe/j$a;->g()Lwe/j;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iget-object p3, p0, Lse/f;->d:Lne/c0;

    .line 73
    .line 74
    invoke-virtual {p3}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p2, v1, p3, p1}, Lwe/j;->f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-static {v1}, Laf/m0;->g(Ljava/net/Socket;)Laf/a1;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Laf/m0;->b(Laf/a1;)Laf/f;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lse/f;->j:Laf/f;

    .line 90
    .line 91
    invoke-static {v1}, Laf/m0;->d(Ljava/net/Socket;)Laf/y0;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Laf/m0;->a(Laf/y0;)Laf/e;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lse/f;->k:Laf/e;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-string p3, "throw with null exception"

    .line 108
    .line 109
    invoke-static {p2, p3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-nez p2, :cond_2

    .line 114
    .line 115
    :goto_2
    return-void

    .line 116
    :cond_2
    new-instance p2, Ljava/io/IOException;

    .line 117
    .line 118
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw p2

    .line 122
    :catch_1
    move-exception p1

    .line 123
    new-instance p2, Ljava/net/ConnectException;

    .line 124
    .line 125
    iget-object p3, p0, Lse/f;->d:Lne/c0;

    .line 126
    .line 127
    invoke-virtual {p3}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    const-string p4, "Failed to connect to "

    .line 132
    .line 133
    invoke-static {p4, p3}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 141
    .line 142
    .line 143
    throw p2
.end method

.method private final i(Lse/b;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lse/f;->d:Lne/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lne/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lse/f;->e:Ljava/net/Socket;

    .line 16
    .line 17
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lne/t;->h()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lne/t;->l()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {p1, v1}, Lse/b;->a(Ljavax/net/ssl/SSLSocket;)Lne/k;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lne/k;->h()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    sget-object v3, Lwe/j;->a:Lwe/j$a;

    .line 53
    .line 54
    invoke-virtual {v3}, Lwe/j$a;->g()Lwe/j;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lne/t;->h()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v0}, Lne/a;->f()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v1, v4, v5}, Lwe/j;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    sget-object v4, Lne/r;->e:Lne/r$a;

    .line 81
    .line 82
    const-string v5, "sslSocketSession"

    .line 83
    .line 84
    invoke-static {v3, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v3}, Lne/r$a;->a(Ljavax/net/ssl/SSLSession;)Lne/r;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v0}, Lne/a;->e()Ljavax/net/ssl/HostnameVerifier;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v5}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v7}, Lne/t;->h()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-interface {v5, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_2

    .line 111
    .line 112
    invoke-virtual {v4}, Lne/r;->d()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    move-object v3, p1

    .line 117
    check-cast v3, Ljava/util/Collection;

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    xor-int/2addr v3, v6

    .line 124
    if-eqz v3, :cond_1

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 132
    .line 133
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 134
    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v5, "\n              |Hostname "

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lne/t;->h()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, " not verified:\n              |    certificate: "

    .line 157
    .line 158
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    sget-object v0, Lne/f;->c:Lne/f$b;

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Lne/f$b;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v0, "\n              |    DN: "

    .line 171
    .line 172
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, "\n              |    subjectAltNames: "

    .line 187
    .line 188
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    sget-object v0, Lze/d;->a:Lze/d;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Lze/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p1, "\n              "

    .line 201
    .line 202
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p1, v2, v6, v2}, Lrd/n;->l(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {v3, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v3

    .line 217
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 218
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v3, "Hostname "

    .line 225
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lne/t;->h()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v0, " not verified (no certificates)"

    .line 241
    .line 242
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :cond_2
    invoke-virtual {v0}, Lne/a;->a()Lne/f;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    new-instance v5, Lne/r;

    .line 261
    .line 262
    invoke-virtual {v4}, Lne/r;->e()Lne/d0;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v4}, Lne/r;->a()Lne/h;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-virtual {v4}, Lne/r;->c()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    new-instance v9, Lse/f$c;

    .line 275
    .line 276
    invoke-direct {v9, v3, v4, v0}, Lse/f$c;-><init>(Lne/f;Lne/r;Lne/a;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {v5, v6, v7, v8, v9}, Lne/r;-><init>(Lne/d0;Lne/h;Ljava/util/List;Lid/a;)V

    .line 280
    .line 281
    .line 282
    iput-object v5, p0, Lse/f;->g:Lne/r;

    .line 283
    .line 284
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lne/t;->h()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    new-instance v4, Lse/f$d;

    .line 293
    .line 294
    invoke-direct {v4, p0}, Lse/f$d;-><init>(Lse/f;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v0, v4}, Lne/f;->b(Ljava/lang/String;Lid/a;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Lne/k;->h()Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_3

    .line 305
    .line 306
    sget-object p1, Lwe/j;->a:Lwe/j$a;

    .line 307
    .line 308
    invoke-virtual {p1}, Lwe/j$a;->g()Lwe/j;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1, v1}, Lwe/j;->g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    :cond_3
    iput-object v1, p0, Lse/f;->f:Ljava/net/Socket;

    .line 317
    .line 318
    invoke-static {v1}, Laf/m0;->g(Ljava/net/Socket;)Laf/a1;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-static {p1}, Laf/m0;->b(Laf/a1;)Laf/f;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    iput-object p1, p0, Lse/f;->j:Laf/f;

    .line 327
    .line 328
    invoke-static {v1}, Laf/m0;->d(Ljava/net/Socket;)Laf/y0;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-static {p1}, Laf/m0;->a(Laf/y0;)Laf/e;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iput-object p1, p0, Lse/f;->k:Laf/e;

    .line 337
    .line 338
    if-eqz v2, :cond_4

    .line 339
    .line 340
    sget-object p1, Lne/x;->b:Lne/x$a;

    .line 341
    .line 342
    invoke-virtual {p1, v2}, Lne/x$a;->a(Ljava/lang/String;)Lne/x;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    goto :goto_0

    .line 347
    :cond_4
    sget-object p1, Lne/x;->d:Lne/x;

    .line 348
    .line 349
    :goto_0
    iput-object p1, p0, Lse/f;->h:Lne/x;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .line 351
    sget-object p1, Lwe/j;->a:Lwe/j$a;

    .line 352
    .line 353
    invoke-virtual {p1}, Lwe/j$a;->g()Lwe/j;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p1, v1}, Lwe/j;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :catchall_0
    move-exception p1

    .line 362
    move-object v2, v1

    .line 363
    goto :goto_1

    .line 364
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 365
    .line 366
    const-string v0, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    .line 367
    .line 368
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 372
    :catchall_1
    move-exception p1

    .line 373
    :goto_1
    if-eqz v2, :cond_6

    .line 374
    .line 375
    sget-object v0, Lwe/j;->a:Lwe/j$a;

    .line 376
    .line 377
    invoke-virtual {v0}, Lwe/j$a;->g()Lwe/j;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0, v2}, Lwe/j;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 382
    .line 383
    .line 384
    :cond_6
    if-nez v2, :cond_7

    .line 385
    .line 386
    goto :goto_2

    .line 387
    :cond_7
    invoke-static {v2}, Loe/d;->m(Ljava/net/Socket;)V

    .line 388
    .line 389
    .line 390
    :goto_2
    throw p1
.end method

.method private final j(IIILne/e;Lne/q;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lse/f;->l()Lne/y;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lne/y;->i()Lne/t;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/16 v3, 0x15

    .line 11
    .line 12
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p4, p5}, Lse/f;->h(IILne/e;Lne/q;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2, p3, v0, v1}, Lse/f;->k(IILne/y;Lne/t;)Lne/y;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v3, p0, Lse/f;->e:Ljava/net/Socket;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v3}, Loe/d;->m(Ljava/net/Socket;)V

    .line 32
    .line 33
    .line 34
    :goto_1
    const/4 v3, 0x0

    .line 35
    iput-object v3, p0, Lse/f;->e:Ljava/net/Socket;

    .line 36
    .line 37
    iput-object v3, p0, Lse/f;->k:Laf/e;

    .line 38
    .line 39
    iput-object v3, p0, Lse/f;->j:Laf/f;

    .line 40
    .line 41
    iget-object v4, p0, Lse/f;->d:Lne/c0;

    .line 42
    .line 43
    invoke-virtual {v4}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p0, Lse/f;->d:Lne/c0;

    .line 48
    .line 49
    invoke-virtual {v5}, Lne/c0;->b()Ljava/net/Proxy;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {p5, p4, v4, v5, v3}, Lne/q;->g(Lne/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lne/x;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_2
    return-void
.end method

.method private final k(IILne/y;Lne/t;)Lne/y;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CONNECT "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p4, v1}, Loe/d;->P(Lne/t;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p4, " HTTP/1.1"

    .line 20
    .line 21
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    :goto_0
    iget-object v0, p0, Lse/f;->j:Laf/f;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lse/f;->k:Laf/e;

    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lue/b;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, v4, p0, v0, v2}, Lue/b;-><init>(Lne/w;Lse/f;Laf/f;Laf/e;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Laf/a1;->n()Laf/b1;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    int-to-long v6, p1

    .line 49
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    invoke-virtual {v5, v6, v7, v8}, Laf/b1;->g(JLjava/util/concurrent/TimeUnit;)Laf/b1;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Laf/y0;->n()Laf/b1;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    int-to-long v6, p2

    .line 59
    invoke-virtual {v5, v6, v7, v8}, Laf/b1;->g(JLjava/util/concurrent/TimeUnit;)Laf/b1;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Lne/y;->e()Lne/s;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v3, v5, p4}, Lue/b;->A(Lne/s;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lue/b;->b()V

    .line 70
    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-virtual {v3, v5}, Lue/b;->c(Z)Lne/a0$a;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v5}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, p3}, Lne/a0$a;->s(Lne/y;)Lne/a0$a;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {p3}, Lne/a0$a;->c()Lne/a0;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {v3, p3}, Lue/b;->z(Lne/a0;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Lne/a0;->f()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/16 v5, 0xc8

    .line 96
    .line 97
    if-eq v3, v5, :cond_3

    .line 98
    .line 99
    const/16 v0, 0x197

    .line 100
    .line 101
    if-ne v3, v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lse/f;->d:Lne/c0;

    .line 104
    .line 105
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lne/a;->h()Lne/b;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v2, p0, Lse/f;->d:Lne/c0;

    .line 114
    .line 115
    invoke-interface {v0, v2, p3}, Lne/b;->a(Lne/c0;Lne/a0;)Lne/y;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    const-string v2, "Connection"

    .line 122
    .line 123
    const/4 v3, 0x2

    .line 124
    invoke-static {p3, v2, v4, v3, v4}, Lne/a0;->k(Lne/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    const-string v2, "close"

    .line 129
    .line 130
    invoke-static {v2, p3, v1}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_0

    .line 135
    .line 136
    return-object v0

    .line 137
    :cond_0
    move-object p3, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 140
    .line 141
    const-string p2, "Failed to authenticate with proxy"

    .line 142
    .line 143
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 148
    .line 149
    invoke-virtual {p3}, Lne/a0;->f()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    const-string p3, "Unexpected response code for CONNECT: "

    .line 158
    .line 159
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_3
    invoke-interface {v0}, Laf/f;->d()Laf/d;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Laf/d;->N()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_4

    .line 176
    .line 177
    invoke-interface {v2}, Laf/e;->d()Laf/d;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Laf/d;->N()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_4

    .line 186
    .line 187
    return-object v4

    .line 188
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 189
    .line 190
    const-string p2, "TLS tunnel buffered too many bytes!"

    .line 191
    .line 192
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1
.end method

.method private final l()Lne/y;
    .locals 4

    .line 1
    new-instance v0, Lne/y$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lne/y$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lse/f;->d:Lne/c0;

    .line 7
    .line 8
    invoke-virtual {v1}, Lne/c0;->a()Lne/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lne/a;->l()Lne/t;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lne/y$a;->n(Lne/t;)Lne/y$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "CONNECT"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lne/y$a;->f(Ljava/lang/String;Lne/z;)Lne/y$a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lse/f;->d:Lne/c0;

    .line 28
    .line 29
    invoke-virtual {v1}, Lne/c0;->a()Lne/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lne/a;->l()Lne/t;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-static {v1, v2}, Loe/d;->P(Lne/t;Z)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "Host"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lne/y$a;->d(Ljava/lang/String;Ljava/lang/String;)Lne/y$a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "Proxy-Connection"

    .line 49
    .line 50
    const-string v2, "Keep-Alive"

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lne/y$a;->d(Ljava/lang/String;Ljava/lang/String;)Lne/y$a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "User-Agent"

    .line 57
    .line 58
    const-string v2, "okhttp/4.11.0"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lne/y$a;->d(Ljava/lang/String;Ljava/lang/String;)Lne/y$a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lne/y$a;->a()Lne/y;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lne/a0$a;

    .line 69
    .line 70
    invoke-direct {v1}, Lne/a0$a;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lne/a0$a;->s(Lne/y;)Lne/a0$a;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Lne/x;->d:Lne/x;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lne/a0$a;->q(Lne/x;)Lne/a0$a;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/16 v2, 0x197

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lne/a0$a;->g(I)Lne/a0$a;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "Preemptive Authenticate"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lne/a0$a;->n(Ljava/lang/String;)Lne/a0$a;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v2, Loe/d;->c:Lne/b0;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lne/a0$a;->b(Lne/b0;)Lne/a0$a;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-wide/16 v2, -0x1

    .line 102
    .line 103
    invoke-virtual {v1, v2, v3}, Lne/a0$a;->t(J)Lne/a0$a;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v2, v3}, Lne/a0$a;->r(J)Lne/a0$a;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "Proxy-Authenticate"

    .line 112
    .line 113
    const-string v3, "OkHttp-Preemptive"

    .line 114
    .line 115
    invoke-virtual {v1, v2, v3}, Lne/a0$a;->k(Ljava/lang/String;Ljava/lang/String;)Lne/a0$a;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lne/a0$a;->c()Lne/a0;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lse/f;->d:Lne/c0;

    .line 124
    .line 125
    invoke-virtual {v2}, Lne/c0;->a()Lne/a;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lne/a;->h()Lne/b;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v3, p0, Lse/f;->d:Lne/c0;

    .line 134
    .line 135
    invoke-interface {v2, v3, v1}, Lne/b;->a(Lne/c0;Lne/a0;)Lne/y;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-nez v1, :cond_0

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    move-object v0, v1

    .line 143
    :goto_0
    return-object v0
.end method

.method private final m(Lse/b;ILne/e;Lne/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lse/f;->d:Lne/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lne/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lse/f;->d:Lne/c0;

    .line 14
    .line 15
    invoke-virtual {p1}, Lne/c0;->a()Lne/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lne/a;->f()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p3, Lne/x;->g:Lne/x;

    .line 24
    .line 25
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lse/f;->e:Ljava/net/Socket;

    .line 32
    .line 33
    iput-object p1, p0, Lse/f;->f:Ljava/net/Socket;

    .line 34
    .line 35
    iput-object p3, p0, Lse/f;->h:Lne/x;

    .line 36
    .line 37
    invoke-direct {p0, p2}, Lse/f;->E(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lse/f;->e:Ljava/net/Socket;

    .line 42
    .line 43
    iput-object p1, p0, Lse/f;->f:Ljava/net/Socket;

    .line 44
    .line 45
    sget-object p1, Lne/x;->d:Lne/x;

    .line 46
    .line 47
    iput-object p1, p0, Lse/f;->h:Lne/x;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {p4, p3}, Lne/q;->B(Lne/e;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lse/f;->i(Lse/b;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lse/f;->g:Lne/r;

    .line 57
    .line 58
    invoke-virtual {p4, p3, p1}, Lne/q;->A(Lne/e;Lne/r;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lse/f;->h:Lne/x;

    .line 62
    .line 63
    sget-object p3, Lne/x;->f:Lne/x;

    .line 64
    .line 65
    if-ne p1, p3, :cond_2

    .line 66
    .line 67
    invoke-direct {p0, p2}, Lse/f;->E(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method


# virtual methods
.method public final B(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lse/f;->s:J

    .line 2
    .line 3
    return-void
.end method

.method public final C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lse/f;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public D()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/f;->f:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final declared-synchronized G(Lse/e;Ljava/io/IOException;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "call"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    instance-of v0, p2, Lve/n;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    move-object v0, p2

    .line 13
    check-cast v0, Lve/n;

    .line 14
    .line 15
    iget-object v0, v0, Lve/n;->a:Lve/b;

    .line 16
    .line 17
    sget-object v2, Lve/b;->j:Lve/b;

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    iget p1, p0, Lse/f;->p:I

    .line 22
    .line 23
    add-int/2addr p1, v1

    .line 24
    iput p1, p0, Lse/f;->p:I

    .line 25
    .line 26
    if-le p1, v1, :cond_5

    .line 27
    .line 28
    iput-boolean v1, p0, Lse/f;->l:Z

    .line 29
    .line 30
    iget p1, p0, Lse/f;->n:I

    .line 31
    .line 32
    add-int/2addr p1, v1

    .line 33
    iput p1, p0, Lse/f;->n:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    check-cast p2, Lve/n;

    .line 37
    .line 38
    iget-object p2, p2, Lve/n;->a:Lve/b;

    .line 39
    .line 40
    sget-object v0, Lve/b;->k:Lve/b;

    .line 41
    .line 42
    if-ne p2, v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lse/e;->q()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iput-boolean v1, p0, Lse/f;->l:Z

    .line 52
    .line 53
    iget p1, p0, Lse/f;->n:I

    .line 54
    .line 55
    add-int/2addr p1, v1

    .line 56
    iput p1, p0, Lse/f;->n:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lse/f;->v()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    instance-of v0, p2, Lve/a;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    :cond_3
    iput-boolean v1, p0, Lse/f;->l:Z

    .line 70
    .line 71
    iget v0, p0, Lse/f;->o:I

    .line 72
    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Lse/e;->k()Lne/w;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lse/f;->d:Lne/c0;

    .line 82
    .line 83
    invoke-virtual {p0, p1, v0, p2}, Lse/f;->g(Lne/w;Lne/c0;Ljava/io/IOException;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget p1, p0, Lse/f;->n:I

    .line 87
    .line 88
    add-int/2addr p1, v1

    .line 89
    iput p1, p0, Lse/f;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    :cond_5
    :goto_0
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0

    .line 95
    throw p1
.end method

.method public declared-synchronized a(Lve/f;Lve/m;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "connection"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "settings"

    .line 8
    .line 9
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lve/m;->d()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lse/f;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public b(Lve/i;)V
    .locals 2

    .line 1
    const-string v0, "stream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lve/b;->j:Lve/b;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Lve/i;->d(Lve/b;Ljava/io/IOException;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lse/f;->e:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Loe/d;->m(Ljava/net/Socket;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public final f(IIIIZLne/e;Lne/q;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    move-object/from16 v9, p7

    .line 6
    .line 7
    const-string v0, "call"

    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "eventListener"

    .line 13
    .line 14
    invoke-static {v9, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v7, Lse/f;->h:Lne/x;

    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move v0, v10

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_d

    .line 26
    .line 27
    iget-object v0, v7, Lse/f;->d:Lne/c0;

    .line 28
    .line 29
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lne/a;->b()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v11, Lse/b;

    .line 38
    .line 39
    invoke-direct {v11, v0}, Lse/b;-><init>(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v7, Lse/f;->d:Lne/c0;

    .line 43
    .line 44
    invoke-virtual {v1}, Lne/c0;->a()Lne/a;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lne/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    sget-object v1, Lne/k;->k:Lne/k;

    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, v7, Lse/f;->d:Lne/c0;

    .line 63
    .line 64
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lne/t;->h()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Lwe/j;->a:Lwe/j$a;

    .line 77
    .line 78
    invoke-virtual {v1}, Lwe/j$a;->g()Lwe/j;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Lwe/j;->i(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    new-instance v1, Lse/i;

    .line 90
    .line 91
    new-instance v2, Ljava/net/UnknownServiceException;

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v4, "CLEARTEXT communication to "

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, " not permitted by network security policy"

    .line 107
    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v2}, Lse/i;-><init>(Ljava/io/IOException;)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_2
    new-instance v0, Lse/i;

    .line 123
    .line 124
    new-instance v1, Ljava/net/UnknownServiceException;

    .line 125
    .line 126
    const-string v2, "CLEARTEXT communication not enabled for client"

    .line 127
    .line 128
    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v1}, Lse/i;-><init>(Ljava/io/IOException;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_3
    iget-object v0, v7, Lse/f;->d:Lne/c0;

    .line 136
    .line 137
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lne/a;->f()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Lne/x;->g:Lne/x;

    .line 146
    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_c

    .line 152
    .line 153
    :goto_1
    const/4 v12, 0x0

    .line 154
    move-object v13, v12

    .line 155
    :goto_2
    :try_start_0
    iget-object v0, v7, Lse/f;->d:Lne/c0;

    .line 156
    .line 157
    invoke-virtual {v0}, Lne/c0;->c()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    move-object/from16 v1, p0

    .line 164
    .line 165
    move/from16 v2, p1

    .line 166
    .line 167
    move/from16 v3, p2

    .line 168
    .line 169
    move/from16 v4, p3

    .line 170
    .line 171
    move-object/from16 v5, p6

    .line 172
    .line 173
    move-object/from16 v6, p7

    .line 174
    .line 175
    invoke-direct/range {v1 .. v6}, Lse/f;->j(IIILne/e;Lne/q;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, v7, Lse/f;->e:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    .line 180
    if-nez v0, :cond_4

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_4
    move/from16 v14, p1

    .line 184
    .line 185
    move/from16 v15, p2

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_5
    move/from16 v14, p1

    .line 189
    .line 190
    move/from16 v15, p2

    .line 191
    .line 192
    :try_start_1
    invoke-direct {v7, v14, v15, v8, v9}, Lse/f;->h(IILne/e;Lne/q;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .line 194
    .line 195
    :goto_3
    move/from16 v6, p4

    .line 196
    .line 197
    :try_start_2
    invoke-direct {v7, v11, v6, v8, v9}, Lse/f;->m(Lse/b;ILne/e;Lne/q;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v7, Lse/f;->d:Lne/c0;

    .line 201
    .line 202
    invoke-virtual {v0}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v1, v7, Lse/f;->d:Lne/c0;

    .line 207
    .line 208
    invoke-virtual {v1}, Lne/c0;->b()Ljava/net/Proxy;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-object v2, v7, Lse/f;->h:Lne/x;

    .line 213
    .line 214
    invoke-virtual {v9, v8, v0, v1, v2}, Lne/q;->g(Lne/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lne/x;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    .line 216
    .line 217
    :goto_4
    iget-object v0, v7, Lse/f;->d:Lne/c0;

    .line 218
    .line 219
    invoke-virtual {v0}, Lne/c0;->c()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_7

    .line 224
    .line 225
    iget-object v0, v7, Lse/f;->e:Ljava/net/Socket;

    .line 226
    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_6
    new-instance v0, Lse/i;

    .line 231
    .line 232
    new-instance v1, Ljava/net/ProtocolException;

    .line 233
    .line 234
    const-string v2, "Too many tunnel connections attempted: 21"

    .line 235
    .line 236
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {v0, v1}, Lse/i;-><init>(Ljava/io/IOException;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 244
    .line 245
    .line 246
    move-result-wide v0

    .line 247
    iput-wide v0, v7, Lse/f;->s:J

    .line 248
    .line 249
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    goto :goto_7

    .line 252
    :catch_1
    move-exception v0

    .line 253
    goto :goto_6

    .line 254
    :catch_2
    move-exception v0

    .line 255
    move/from16 v14, p1

    .line 256
    .line 257
    move/from16 v15, p2

    .line 258
    .line 259
    :goto_6
    move/from16 v6, p4

    .line 260
    .line 261
    :goto_7
    iget-object v1, v7, Lse/f;->f:Ljava/net/Socket;

    .line 262
    .line 263
    if-nez v1, :cond_8

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_8
    invoke-static {v1}, Loe/d;->m(Ljava/net/Socket;)V

    .line 267
    .line 268
    .line 269
    :goto_8
    iget-object v1, v7, Lse/f;->e:Ljava/net/Socket;

    .line 270
    .line 271
    if-nez v1, :cond_9

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_9
    invoke-static {v1}, Loe/d;->m(Ljava/net/Socket;)V

    .line 275
    .line 276
    .line 277
    :goto_9
    iput-object v12, v7, Lse/f;->f:Ljava/net/Socket;

    .line 278
    .line 279
    iput-object v12, v7, Lse/f;->e:Ljava/net/Socket;

    .line 280
    .line 281
    iput-object v12, v7, Lse/f;->j:Laf/f;

    .line 282
    .line 283
    iput-object v12, v7, Lse/f;->k:Laf/e;

    .line 284
    .line 285
    iput-object v12, v7, Lse/f;->g:Lne/r;

    .line 286
    .line 287
    iput-object v12, v7, Lse/f;->h:Lne/x;

    .line 288
    .line 289
    iput-object v12, v7, Lse/f;->i:Lve/f;

    .line 290
    .line 291
    iput v10, v7, Lse/f;->q:I

    .line 292
    .line 293
    iget-object v1, v7, Lse/f;->d:Lne/c0;

    .line 294
    .line 295
    invoke-virtual {v1}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    iget-object v1, v7, Lse/f;->d:Lne/c0;

    .line 300
    .line 301
    invoke-virtual {v1}, Lne/c0;->b()Ljava/net/Proxy;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    const/4 v5, 0x0

    .line 306
    move-object/from16 v1, p7

    .line 307
    .line 308
    move-object/from16 v2, p6

    .line 309
    .line 310
    move-object v6, v0

    .line 311
    invoke-virtual/range {v1 .. v6}, Lne/q;->h(Lne/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lne/x;Ljava/io/IOException;)V

    .line 312
    .line 313
    .line 314
    if-nez v13, :cond_a

    .line 315
    .line 316
    new-instance v13, Lse/i;

    .line 317
    .line 318
    invoke-direct {v13, v0}, Lse/i;-><init>(Ljava/io/IOException;)V

    .line 319
    .line 320
    .line 321
    goto :goto_a

    .line 322
    :cond_a
    invoke-virtual {v13, v0}, Lse/i;->a(Ljava/io/IOException;)V

    .line 323
    .line 324
    .line 325
    :goto_a
    if-eqz p5, :cond_b

    .line 326
    .line 327
    invoke-virtual {v11, v0}, Lse/b;->b(Ljava/io/IOException;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_b

    .line 332
    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    :cond_b
    throw v13

    .line 336
    :cond_c
    new-instance v0, Lse/i;

    .line 337
    .line 338
    new-instance v1, Ljava/net/UnknownServiceException;

    .line 339
    .line 340
    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 341
    .line 342
    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-direct {v0, v1}, Lse/i;-><init>(Ljava/io/IOException;)V

    .line 346
    .line 347
    .line 348
    throw v0

    .line 349
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 350
    .line 351
    const-string v1, "already connected"

    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw v0
.end method

.method public final g(Lne/w;Lne/c0;Ljava/io/IOException;)V
    .locals 3

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "failedRoute"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "failure"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lne/c0;->b()Ljava/net/Proxy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Lne/c0;->a()Lne/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lne/a;->i()Ljava/net/ProxySelector;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lne/t;->q()Ljava/net/URI;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lne/c0;->b()Ljava/net/Proxy;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p1}, Lne/w;->r()Lse/h;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p2}, Lse/h;->b(Lne/c0;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/f;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lse/f;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lse/f;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lse/f;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public r()Lne/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/f;->g:Lne/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized s()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lse/f;->o:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lse/f;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final t(Lne/a;Ljava/util/List;)Z
    .locals 3

    .line 1
    const-string v0, "address"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Loe/d;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "Thread "

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " MUST hold lock on "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lse/f;->r:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v1, p0, Lse/f;->q:I

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    if-ge v0, v1, :cond_9

    .line 66
    .line 67
    iget-boolean v0, p0, Lse/f;->l:Z

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lse/f;->d:Lne/c0;

    .line 73
    .line 74
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lne/a;->d(Lne/a;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    return v2

    .line 85
    :cond_3
    invoke-virtual {p1}, Lne/a;->l()Lne/t;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lne/t;->h()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lse/f;->z()Lne/c0;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lne/c0;->a()Lne/a;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lne/a;->l()Lne/t;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lne/t;->h()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/4 v1, 0x1

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    return v1

    .line 117
    :cond_4
    iget-object v0, p0, Lse/f;->i:Lve/f;

    .line 118
    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    return v2

    .line 122
    :cond_5
    if-eqz p2, :cond_9

    .line 123
    .line 124
    invoke-direct {p0, p2}, Lse/f;->A(Ljava/util/List;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-nez p2, :cond_6

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    invoke-virtual {p1}, Lne/a;->e()Ljavax/net/ssl/HostnameVerifier;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    sget-object v0, Lze/d;->a:Lze/d;

    .line 136
    .line 137
    if-eq p2, v0, :cond_7

    .line 138
    .line 139
    return v2

    .line 140
    :cond_7
    invoke-virtual {p1}, Lne/a;->l()Lne/t;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-direct {p0, p2}, Lse/f;->F(Lne/t;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_8

    .line 149
    .line 150
    return v2

    .line 151
    :cond_8
    :try_start_0
    invoke-virtual {p1}, Lne/a;->a()Lne/f;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lne/a;->l()Lne/t;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lne/t;->h()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p0}, Lse/f;->r()Lne/r;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lne/r;->d()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p2, p1, v0}, Lne/f;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    return v1

    .line 181
    :catch_0
    :cond_9
    :goto_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Connection{"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lse/f;->d:Lne/c0;

    .line 12
    .line 13
    invoke-virtual {v1}, Lne/c0;->a()Lne/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lne/a;->l()Lne/t;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lne/t;->h()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x3a

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lse/f;->d:Lne/c0;

    .line 34
    .line 35
    invoke-virtual {v1}, Lne/c0;->a()Lne/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lne/a;->l()Lne/t;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lne/t;->l()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", proxy="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lse/f;->d:Lne/c0;

    .line 56
    .line 57
    invoke-virtual {v1}, Lne/c0;->b()Ljava/net/Proxy;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " hostAddress="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lse/f;->d:Lne/c0;

    .line 70
    .line 71
    invoke-virtual {v1}, Lne/c0;->d()Ljava/net/InetSocketAddress;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, " cipherSuite="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lse/f;->g:Lne/r;

    .line 84
    .line 85
    const-string v2, "none"

    .line 86
    .line 87
    if-nez v1, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1}, Lne/r;->a()Lne/h;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move-object v2, v1

    .line 98
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, " protocol="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lse/f;->h:Lne/x;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x7d

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0
.end method

.method public final u(Z)Z
    .locals 7

    .line 1
    sget-boolean v0, Loe/d;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Thread "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iget-object v2, p0, Lse/f;->e:Ljava/net/Socket;

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lse/f;->f:Ljava/net/Socket;

    .line 61
    .line 62
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Lse/f;->j:Laf/f;

    .line 66
    .line 67
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iget-object v2, p0, Lse/f;->i:Lve/f;

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-virtual {v2, v0, v1}, Lve/f;->X0(J)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    return p1

    .line 104
    :cond_3
    monitor-enter p0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lse/f;->o()J

    .line 106
    .line 107
    .line 108
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    sub-long/2addr v0, v5

    .line 110
    monitor-exit p0

    .line 111
    const-wide v5, 0x2540be400L

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    cmp-long v0, v0, v5

    .line 117
    .line 118
    if-ltz v0, :cond_4

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    invoke-static {v3, v4}, Loe/d;->E(Ljava/net/Socket;Laf/f;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    return p1

    .line 127
    :cond_4
    const/4 p1, 0x1

    .line 128
    return p1

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    monitor-exit p0

    .line 131
    throw p1

    .line 132
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 133
    return p1
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lse/f;->i:Lve/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final w(Lne/w;Lte/g;)Lte/d;
    .locals 6

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "chain"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lse/f;->f:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lse/f;->j:Laf/f;

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lse/f;->k:Laf/e;

    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lse/f;->i:Lve/f;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    new-instance v0, Lve/g;

    .line 31
    .line 32
    invoke-direct {v0, p1, p0, p2, v3}, Lve/g;-><init>(Lne/w;Lse/f;Lte/g;Lve/f;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Lte/g;->k()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Laf/a1;->n()Laf/b1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lte/g;->h()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-long v3, v3

    .line 52
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    invoke-virtual {v0, v3, v4, v5}, Laf/b1;->g(JLjava/util/concurrent/TimeUnit;)Laf/b1;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Laf/y0;->n()Laf/b1;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2}, Lte/g;->j()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    int-to-long v3, p2

    .line 66
    invoke-virtual {v0, v3, v4, v5}, Laf/b1;->g(JLjava/util/concurrent/TimeUnit;)Laf/b1;

    .line 67
    .line 68
    .line 69
    new-instance v0, Lue/b;

    .line 70
    .line 71
    invoke-direct {v0, p1, p0, v1, v2}, Lue/b;-><init>(Lne/w;Lse/f;Laf/f;Laf/e;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-object v0
.end method

.method public final declared-synchronized x()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lse/f;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public final declared-synchronized y()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lse/f;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public z()Lne/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/f;->d:Lne/c0;

    .line 2
    .line 3
    return-object v0
.end method
