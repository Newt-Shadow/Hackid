.class public final Lne/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:Lse/h;

.field private a:Lne/o;

.field private b:Lne/j;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private e:Lne/q$c;

.field private f:Z

.field private g:Lne/b;

.field private h:Z

.field private i:Z

.field private j:Lne/m;

.field private k:Lne/p;

.field private l:Ljava/net/Proxy;

.field private m:Ljava/net/ProxySelector;

.field private n:Lne/b;

.field private o:Ljavax/net/SocketFactory;

.field private p:Ljavax/net/ssl/SSLSocketFactory;

.field private q:Ljavax/net/ssl/X509TrustManager;

.field private r:Ljava/util/List;

.field private s:Ljava/util/List;

.field private t:Ljavax/net/ssl/HostnameVerifier;

.field private u:Lne/f;

.field private v:Lze/c;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lne/o;

    .line 5
    .line 6
    invoke-direct {v0}, Lne/o;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lne/w$a;->a:Lne/o;

    .line 10
    .line 11
    new-instance v0, Lne/j;

    .line 12
    .line 13
    invoke-direct {v0}, Lne/j;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lne/w$a;->b:Lne/j;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lne/w$a;->c:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lne/w$a;->d:Ljava/util/List;

    .line 31
    .line 32
    sget-object v0, Lne/q;->b:Lne/q;

    .line 33
    .line 34
    invoke-static {v0}, Loe/d;->g(Lne/q;)Lne/q$c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lne/w$a;->e:Lne/q$c;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lne/w$a;->f:Z

    .line 42
    .line 43
    sget-object v1, Lne/b;->b:Lne/b;

    .line 44
    .line 45
    iput-object v1, p0, Lne/w$a;->g:Lne/b;

    .line 46
    .line 47
    iput-boolean v0, p0, Lne/w$a;->h:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lne/w$a;->i:Z

    .line 50
    .line 51
    sget-object v0, Lne/m;->b:Lne/m;

    .line 52
    .line 53
    iput-object v0, p0, Lne/w$a;->j:Lne/m;

    .line 54
    .line 55
    sget-object v0, Lne/p;->b:Lne/p;

    .line 56
    .line 57
    iput-object v0, p0, Lne/w$a;->k:Lne/p;

    .line 58
    .line 59
    iput-object v1, p0, Lne/w$a;->n:Lne/b;

    .line 60
    .line 61
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "getDefault()"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lne/w$a;->o:Ljavax/net/SocketFactory;

    .line 71
    .line 72
    sget-object v0, Lne/w;->D:Lne/w$b;

    .line 73
    .line 74
    invoke-virtual {v0}, Lne/w$b;->a()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, p0, Lne/w$a;->r:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {v0}, Lne/w$b;->b()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lne/w$a;->s:Ljava/util/List;

    .line 85
    .line 86
    sget-object v0, Lze/d;->a:Lze/d;

    .line 87
    .line 88
    iput-object v0, p0, Lne/w$a;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 89
    .line 90
    sget-object v0, Lne/f;->d:Lne/f;

    .line 91
    .line 92
    iput-object v0, p0, Lne/w$a;->u:Lne/f;

    .line 93
    .line 94
    const/16 v0, 0x2710

    .line 95
    .line 96
    iput v0, p0, Lne/w$a;->x:I

    .line 97
    .line 98
    iput v0, p0, Lne/w$a;->y:I

    .line 99
    .line 100
    iput v0, p0, Lne/w$a;->z:I

    .line 101
    .line 102
    const-wide/16 v0, 0x400

    .line 103
    .line 104
    iput-wide v0, p0, Lne/w$a;->B:J

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/w$a;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final B()Lse/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->C:Lse/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->o:Ljavax/net/SocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w$a;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public final F()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->q:Ljavax/net/ssl/X509TrustManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G(Ljava/net/Proxy;)Lne/w$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lne/w$a;->w()Ljava/net/Proxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lne/w$a;->I(Lse/h;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lne/w$a;->H(Ljava/net/Proxy;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final H(Ljava/net/Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/w$a;->l:Ljava/net/Proxy;

    .line 2
    .line 3
    return-void
.end method

.method public final I(Lse/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/w$a;->C:Lse/h;

    .line 2
    .line 3
    return-void
.end method

.method public final a(Lne/u;)Lne/w$a;
    .locals 1

    .line 1
    const-string v0, "interceptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lne/w$a;->r()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public final b()Lne/w;
    .locals 1

    .line 1
    new-instance v0, Lne/w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lne/w;-><init>(Lne/w$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c()Lne/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->g:Lne/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lne/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w$a;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()Lze/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->v:Lze/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lne/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->u:Lne/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w$a;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()Lne/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->b:Lne/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lne/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->j:Lne/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lne/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->a:Lne/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lne/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->k:Lne/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Lne/q$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->e:Lne/q$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/w$a;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/w$a;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lne/w$a;->B:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final t()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w$a;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->l:Ljava/net/Proxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Lne/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->n:Lne/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/w$a;->m:Ljava/net/ProxySelector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()I
    .locals 1

    .line 1
    iget v0, p0, Lne/w$a;->y:I

    .line 2
    .line 3
    return v0
.end method
