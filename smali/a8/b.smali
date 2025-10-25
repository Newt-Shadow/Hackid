.class public final La8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic f:[Lpd/k;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/ThreadLocal;

.field private final d:Lld/c;

.field private final e:Lj0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lpd/k;

    .line 3
    .line 4
    new-instance v1, Lkotlin/jvm/internal/x;

    .line 5
    .line 6
    const-string v2, "dataStore"

    .line 7
    .line 8
    const-string v3, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 9
    .line 10
    const-class v4, La8/b;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/x;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/d0;->g(Lkotlin/jvm/internal/w;)Lpd/j;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    aput-object v1, v0, v5

    .line 21
    .line 22
    sput-object v0, La8/b;->f:[Lpd/k;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, La8/b;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, La8/b;->b:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, La8/b;->c:Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    new-instance v3, La8/a;

    .line 27
    .line 28
    invoke-direct {v3, p0}, La8/a;-><init>(La8/b;)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/16 v5, 0xa

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v1, p2

    .line 36
    invoke-static/range {v1 .. v6}, Ln0/a;->b(Ljava/lang/String;Lk0/b;Lid/l;Ltd/l0;ILjava/lang/Object;)Lld/c;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, La8/b;->d:Lld/c;

    .line 41
    .line 42
    invoke-direct {p0, p1}, La8/b;->g(Landroid/content/Context;)Lj0/i;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, La8/b;->e:Lj0/i;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic a(La8/b;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, La8/b;->d(La8/b;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(La8/b;)Lj0/i;
    .locals 0

    .line 1
    iget-object p0, p0, La8/b;->e:Lj0/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(La8/b;)Ljava/lang/ThreadLocal;
    .locals 0

    .line 1
    iget-object p0, p0, La8/b;->c:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final d(La8/b;Landroid/content/Context;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, La8/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-static {p1, p0, v0, v1, v0}, Ln0/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Lm0/a;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private final g(Landroid/content/Context;)Lj0/i;
    .locals 3

    .line 1
    iget-object v0, p0, La8/b;->d:Lld/c;

    .line 2
    .line 3
    sget-object v1, La8/b;->f:[Lpd/k;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Lld/c;->a(Ljava/lang/Object;Lpd/k;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lj0/i;

    .line 13
    .line 14
    return-object p1
.end method


# virtual methods
.method public final e(Lid/l;)Lo0/f;
    .locals 2

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, La8/b$a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, La8/b$a;-><init>(La8/b;Lid/l;Lad/e;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {v1, v0, p1, v1}, Ltd/g;->f(Lad/i;Lid/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lo0/f;

    .line 18
    .line 19
    return-object p1
.end method

.method public final f()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, La8/b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, La8/b$b;-><init>(La8/b;Lad/e;)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v1, v0, v2, v1}, Ltd/g;->f(Lad/i;Lid/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    .line 14
    return-object v0
.end method

.method public final h(Lo0/f$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, La8/b$c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, p2, v1}, La8/b$c;-><init>(La8/b;Lo0/f$a;Ljava/lang/Object;Lad/e;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {v1, v0, p1, v1}, Ltd/g;->f(Lad/i;Lid/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Lo0/f$a;Ljava/lang/Object;)Lo0/f;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, La8/b$d;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, p2, v1}, La8/b$d;-><init>(La8/b;Lo0/f$a;Ljava/lang/Object;Lad/e;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {v1, v0, p1, v1}, Ltd/g;->f(Lad/i;Lid/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lo0/f;

    .line 18
    .line 19
    return-object p1
.end method
