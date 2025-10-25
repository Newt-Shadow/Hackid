.class public final Lx8/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/j$a;
    }
.end annotation


# static fields
.field public static final c:Lx8/j$a;


# instance fields
.field private final a:Lx8/o;

.field private final b:Lx8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx8/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx8/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lx8/j;->c:Lx8/j$a;

    return-void
.end method

.method public constructor <init>(Lx8/o;Lx8/o;)V
    .locals 1

    .line 1
    const-string v0, "localOverrideSettings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "remoteSettings"

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
    iput-object p1, p0, Lx8/j;->a:Lx8/o;

    .line 15
    .line 16
    iput-object p2, p0, Lx8/j;->b:Lx8/o;

    .line 17
    .line 18
    return-void
.end method

.method private final d(D)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final e(J)Z
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lsd/a;->D(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Lsd/a;->y(J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method


# virtual methods
.method public final a()D
    .locals 3

    .line 1
    iget-object v0, p0, Lx8/j;->a:Lx8/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lx8/o;->d()Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-direct {p0, v0, v1}, Lx8/j;->d(D)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-wide v0

    .line 20
    :cond_0
    iget-object v0, p0, Lx8/j;->b:Lx8/o;

    .line 21
    .line 22
    invoke-interface {v0}, Lx8/o;->d()Ljava/lang/Double;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-direct {p0, v0, v1}, Lx8/j;->d(D)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    return-wide v0

    .line 39
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 40
    .line 41
    return-wide v0
.end method

.method public final b()J
    .locals 3

    .line 1
    iget-object v0, p0, Lx8/j;->a:Lx8/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lx8/o;->c()Lsd/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lsd/a;->H()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-direct {p0, v0, v1}, Lx8/j;->e(J)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-wide v0

    .line 20
    :cond_0
    iget-object v0, p0, Lx8/j;->b:Lx8/o;

    .line 21
    .line 22
    invoke-interface {v0}, Lx8/o;->c()Lsd/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lsd/a;->H()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-direct {p0, v0, v1}, Lx8/j;->e(J)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    return-wide v0

    .line 39
    :cond_1
    sget-object v0, Lsd/a;->b:Lsd/a$a;

    .line 40
    .line 41
    const/16 v0, 0x1e

    .line 42
    .line 43
    sget-object v1, Lsd/d;->f:Lsd/d;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lsd/c;->h(ILsd/d;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/j;->a:Lx8/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lx8/o;->a()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lx8/j;->b:Lx8/o;

    .line 15
    .line 16
    invoke-interface {v0}, Lx8/o;->a()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public final f(Lad/e;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lx8/j$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lx8/j$b;

    .line 7
    .line 8
    iget v1, v0, Lx8/j$b;->d:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lx8/j$b;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lx8/j$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lx8/j$b;-><init>(Lx8/j;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lx8/j$b;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lx8/j$b;->d:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object v2, v0, Lx8/j$b;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Lx8/j;

    .line 56
    .line 57
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lx8/j;->a:Lx8/o;

    .line 65
    .line 66
    iput-object p0, v0, Lx8/j$b;->a:Ljava/lang/Object;

    .line 67
    .line 68
    iput v4, v0, Lx8/j$b;->d:I

    .line 69
    .line 70
    invoke-interface {p1, v0}, Lx8/o;->b(Lad/e;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v1, :cond_4

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_4
    move-object v2, p0

    .line 78
    :goto_1
    iget-object p1, v2, Lx8/j;->b:Lx8/o;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    iput-object v2, v0, Lx8/j$b;->a:Ljava/lang/Object;

    .line 82
    .line 83
    iput v3, v0, Lx8/j$b;->d:I

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lx8/o;->b(Lad/e;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v1, :cond_5

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_5
    :goto_2
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 93
    .line 94
    return-object p1
.end method
