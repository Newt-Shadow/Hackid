.class public final Lo0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo0/e;

    invoke-direct {v0}, Lo0/e;-><init>()V

    sput-object v0, Lo0/e;->a:Lo0/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj0/j0;Lk0/b;Ljava/util/List;Ltd/l0;)Lj0/i;
    .locals 2

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
    new-instance v0, Lo0/d;

    .line 17
    .line 18
    sget-object v1, Lj0/j;->a:Lj0/j;

    .line 19
    .line 20
    invoke-virtual {v1, p1, p2, p3, p4}, Lj0/j;->b(Lj0/j0;Lk0/b;Ljava/util/List;Ltd/l0;)Lj0/i;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Lo0/d;-><init>(Lj0/i;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final b(Lk0/b;Ljava/util/List;Ltd/l0;Lid/a;)Lj0/i;
    .locals 8

    .line 1
    const-string v0, "migrations"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "produceFile"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ll0/d;

    .line 17
    .line 18
    sget-object v2, Laf/k;->b:Laf/k;

    .line 19
    .line 20
    sget-object v3, Lo0/j;->a:Lo0/j;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    new-instance v5, Lo0/e$a;

    .line 24
    .line 25
    invoke-direct {v5, p4}, Lo0/e$a;-><init>(Lid/a;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x4

    .line 29
    const/4 v7, 0x0

    .line 30
    move-object v1, v0

    .line 31
    invoke-direct/range {v1 .. v7}, Ll0/d;-><init>(Laf/k;Ll0/c;Lid/Function2;Lid/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, p1, p2, p3}, Lo0/e;->a(Lj0/j0;Lk0/b;Ljava/util/List;Ltd/l0;)Lj0/i;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Lo0/d;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lo0/d;-><init>(Lj0/i;)V

    .line 41
    .line 42
    .line 43
    return-object p2
.end method
