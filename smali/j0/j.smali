.class public final Lj0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj0/j;

    invoke-direct {v0}, Lj0/j;-><init>()V

    sput-object v0, Lj0/j;->a:Lj0/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;)Lj0/i;
    .locals 7

    .line 1
    const-string v0, "serializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "migrations"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scope"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "produceFile"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lj0/o;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v1, v0

    .line 27
    move-object v2, p1

    .line 28
    move-object v4, p5

    .line 29
    invoke-direct/range {v1 .. v6}, Lj0/o;-><init>(Lj0/e0;Lid/l;Lid/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, p2, p3, p4}, Lj0/j;->b(Lj0/j0;Lk0/b;Ljava/util/List;Ltd/l0;)Lj0/i;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public final b(Lj0/j0;Lk0/b;Ljava/util/List;Ltd/l0;)Lj0/i;
    .locals 1

    .line 1
    const-string v0, "storage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "migrations"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scope"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p2, Lk0/a;

    .line 20
    .line 21
    invoke-direct {p2}, Lk0/a;-><init>()V

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object v0, Lj0/h;->a:Lj0/h$a;

    .line 25
    .line 26
    invoke-virtual {v0, p3}, Lj0/h$a;->b(Ljava/util/List;)Lid/Function2;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {p3}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    new-instance v0, Lj0/k;

    .line 35
    .line 36
    invoke-direct {v0, p1, p3, p2, p4}, Lj0/k;-><init>(Lj0/j0;Ljava/util/List;Lj0/e;Ltd/l0;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method
