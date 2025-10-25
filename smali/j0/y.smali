.class public final Lj0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj0/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj0/y;

    invoke-direct {v0}, Lj0/y;-><init>()V

    sput-object v0, Lj0/y;->a:Lj0/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj0/e0;Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;)Lj0/i;
    .locals 3

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
    new-instance v0, Lj0/k;

    .line 22
    .line 23
    new-instance v1, Lj0/o;

    .line 24
    .line 25
    new-instance v2, Lj0/y$a;

    .line 26
    .line 27
    invoke-direct {v2, p4}, Lj0/y$a;-><init>(Ltd/l0;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p1, v2, p5}, Lj0/o;-><init>(Lj0/e0;Lid/l;Lid/a;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lj0/h;->a:Lj0/h$a;

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Lj0/h$a;->b(Ljava/util/List;)Lid/Function2;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p2, Lk0/a;

    .line 47
    .line 48
    invoke-direct {p2}, Lk0/a;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-direct {v0, v1, p1, p2, p4}, Lj0/k;-><init>(Lj0/j0;Ljava/util/List;Lj0/e;Ltd/l0;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method
