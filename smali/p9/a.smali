.class public final Lp9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/l;


# static fields
.field private static final b:[Ld9/p;


# instance fields
.field private final a:Lq9/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ld9/p;

    .line 3
    .line 4
    sput-object v0, Lp9/a;->b:[Ld9/p;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq9/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lq9/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp9/a;->a:Lq9/c;

    .line 10
    .line 11
    return-void
.end method

.method private static d(Lj9/b;)Lj9/b;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lj9/b;->i()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aget v4, v0, v3

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    aget v6, v0, v5

    .line 15
    .line 16
    const/4 v7, 0x3

    .line 17
    aget v0, v0, v7

    .line 18
    .line 19
    new-instance v7, Lj9/b;

    .line 20
    .line 21
    const/16 v8, 0x1e

    .line 22
    .line 23
    const/16 v9, 0x21

    .line 24
    .line 25
    invoke-direct {v7, v8, v9}, Lj9/b;-><init>(II)V

    .line 26
    .line 27
    .line 28
    move v10, v1

    .line 29
    :goto_0
    if-ge v10, v9, :cond_2

    .line 30
    .line 31
    mul-int v11, v10, v0

    .line 32
    .line 33
    div-int/lit8 v12, v0, 0x2

    .line 34
    .line 35
    add-int/2addr v11, v12

    .line 36
    div-int/2addr v11, v9

    .line 37
    add-int/2addr v11, v4

    .line 38
    add-int/lit8 v12, v0, -0x1

    .line 39
    .line 40
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    move v12, v1

    .line 45
    :goto_1
    if-ge v12, v8, :cond_1

    .line 46
    .line 47
    mul-int v13, v12, v6

    .line 48
    .line 49
    div-int/lit8 v14, v6, 0x2

    .line 50
    .line 51
    add-int/2addr v13, v14

    .line 52
    and-int/lit8 v14, v10, 0x1

    .line 53
    .line 54
    mul-int/2addr v14, v6

    .line 55
    div-int/2addr v14, v5

    .line 56
    add-int/2addr v13, v14

    .line 57
    div-int/2addr v13, v8

    .line 58
    add-int/lit8 v14, v6, -0x1

    .line 59
    .line 60
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    add-int/2addr v13, v2

    .line 65
    invoke-virtual {p0, v13, v11}, Lj9/b;->e(II)Z

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    if-eqz v13, :cond_0

    .line 70
    .line 71
    invoke-virtual {v7, v12, v10}, Lj9/b;->q(II)V

    .line 72
    .line 73
    .line 74
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-object v7

    .line 81
    :cond_3
    invoke-static {}, Ld9/j;->a()Ld9/j;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ld9/c;Ljava/util/Map;)Ld9/n;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ld9/c;->a()Lj9/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lp9/a;->d(Lj9/b;)Lj9/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lp9/a;->a:Lq9/c;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lq9/c;->b(Lj9/b;Ljava/util/Map;)Lj9/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Ld9/n;

    .line 16
    .line 17
    invoke-virtual {p1}, Lj9/e;->k()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lj9/e;->g()[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lp9/a;->b:[Ld9/p;

    .line 26
    .line 27
    sget-object v3, Ld9/a;->j:Ld9/a;

    .line 28
    .line 29
    invoke-direct {p2, v0, v1, v2, v3}, Ld9/n;-><init>(Ljava/lang/String;[B[Ld9/p;Ld9/a;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Ld9/o;->e:Ld9/o;

    .line 33
    .line 34
    invoke-virtual {p1}, Lj9/e;->d()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2, v0, v1}, Ld9/n;->h(Ld9/o;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lj9/e;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    sget-object v0, Ld9/o;->d:Ld9/o;

    .line 48
    .line 49
    invoke-virtual {p2, v0, p1}, Ld9/n;->h(Ld9/o;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object p2
.end method

.method public c(Ld9/c;)Ld9/n;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lp9/a;->b(Ld9/c;Ljava/util/Map;)Ld9/n;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
