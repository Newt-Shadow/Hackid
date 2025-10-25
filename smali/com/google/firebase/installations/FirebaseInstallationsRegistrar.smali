.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk7/d;)Ll8/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lk7/d;)Ll8/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lk7/d;)Ll8/e;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/firebase/installations/c;

    .line 2
    .line 3
    const-class v1, Lh7/f;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lk7/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lh7/f;

    .line 10
    .line 11
    const-class v2, Li8/i;

    .line 12
    .line 13
    invoke-interface {p0, v2}, Lk7/d;->a(Ljava/lang/Class;)Lk8/b;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Lj7/a;

    .line 18
    .line 19
    const-class v4, Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    invoke-static {v3, v4}, Lk7/e0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk7/e0;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {p0, v3}, Lk7/d;->b(Lk7/e0;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    const-class v4, Lj7/b;

    .line 32
    .line 33
    const-class v5, Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    invoke-static {v4, v5}, Lk7/e0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk7/e0;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {p0, v4}, Lk7/d;->b(Lk7/e0;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    invoke-static {p0}, Ll7/j;->a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/installations/c;-><init>(Lh7/f;Lk8/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk7/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ll8/e;

    .line 2
    .line 3
    invoke-static {v0}, Lk7/c;->c(Ljava/lang/Class;)Lk7/c$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-installations"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lk7/c$b;->h(Ljava/lang/String;)Lk7/c$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v2, Lh7/f;

    .line 14
    .line 15
    invoke-static {v2}, Lk7/q;->k(Ljava/lang/Class;)Lk7/q;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v2, Li8/i;

    .line 24
    .line 25
    invoke-static {v2}, Lk7/q;->i(Ljava/lang/Class;)Lk7/q;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-class v2, Lj7/a;

    .line 34
    .line 35
    const-class v3, Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lk7/e0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk7/e0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lk7/q;->l(Lk7/e0;)Lk7/q;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-class v2, Lj7/b;

    .line 50
    .line 51
    const-class v3, Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    invoke-static {v2, v3}, Lk7/e0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk7/e0;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lk7/q;->l(Lk7/e0;)Lk7/q;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lk7/c$b;->b(Lk7/q;)Lk7/c$b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v2, Ll8/f;

    .line 66
    .line 67
    invoke-direct {v2}, Ll8/f;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lk7/c$b;->f(Lk7/g;)Lk7/c$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lk7/c$b;->d()Lk7/c;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {}, Li8/h;->a()Lk7/c;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "19.0.0"

    .line 83
    .line 84
    invoke-static {v1, v3}, Ls8/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk7/c;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    filled-new-array {v0, v2, v1}, [Lk7/c;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method
