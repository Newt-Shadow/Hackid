.class public final Lk7/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private d:Lk7/i;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk7/n$b;->b:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lk7/n$b;->c:Ljava/util/List;

    .line 17
    .line 18
    sget-object v0, Lk7/i;->a:Lk7/i;

    .line 19
    .line 20
    iput-object v0, p0, Lk7/n$b;->d:Lk7/i;

    .line 21
    .line 22
    iput-object p1, p0, Lk7/n$b;->a:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    .line 1
    invoke-static {p0}, Lk7/n$b;->f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public b(Lk7/c;)Lk7/n$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/n$b;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c(Lcom/google/firebase/components/ComponentRegistrar;)Lk7/n$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/n$b;->b:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lk7/o;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lk7/o;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lk7/n$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/n$b;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e()Lk7/n;
    .locals 7

    .line 1
    new-instance v6, Lk7/n;

    .line 2
    .line 3
    iget-object v1, p0, Lk7/n$b;->a:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-object v2, p0, Lk7/n$b;->b:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lk7/n$b;->c:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lk7/n$b;->d:Lk7/i;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lk7/n;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lk7/i;Lk7/n$a;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public g(Lk7/i;)Lk7/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/n$b;->d:Lk7/i;

    .line 2
    .line 3
    return-object p0
.end method
