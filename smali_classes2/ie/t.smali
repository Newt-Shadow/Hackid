.class public Lie/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lge/d;
.implements Lie/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lie/f;

.field private final c:I

.field private d:I

.field private final e:[Ljava/lang/String;

.field private final f:[Ljava/util/List;

.field private g:Ljava/util/List;

.field private final h:[Z

.field private i:Ljava/util/Map;

.field private final j:Lxc/d;

.field private final k:Lxc/d;

.field private final l:Lxc/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lie/f;I)V
    .locals 1

    .line 1
    const-string v0, "serialName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lie/t;->a:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lie/t;->b:Lie/f;

    .line 12
    .line 13
    iput p3, p0, Lie/t;->c:I

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lie/t;->d:I

    .line 17
    .line 18
    new-array p1, p3, [Ljava/lang/String;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    :goto_0
    if-ge p2, p3, :cond_0

    .line 22
    .line 23
    const-string v0, "[UNINITIALIZED]"

    .line 24
    .line 25
    aput-object v0, p1, p2

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object p1, p0, Lie/t;->e:[Ljava/lang/String;

    .line 31
    .line 32
    iget p1, p0, Lie/t;->c:I

    .line 33
    .line 34
    new-array p2, p1, [Ljava/util/List;

    .line 35
    .line 36
    iput-object p2, p0, Lie/t;->f:[Ljava/util/List;

    .line 37
    .line 38
    new-array p1, p1, [Z

    .line 39
    .line 40
    iput-object p1, p0, Lie/t;->h:[Z

    .line 41
    .line 42
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lie/t;->i:Ljava/util/Map;

    .line 47
    .line 48
    sget-object p1, Lxc/h;->b:Lxc/h;

    .line 49
    .line 50
    new-instance p2, Lie/p;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lie/p;-><init>(Lie/t;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Lie/t;->j:Lxc/d;

    .line 60
    .line 61
    new-instance p2, Lie/q;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lie/q;-><init>(Lie/t;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p0, Lie/t;->k:Lxc/d;

    .line 71
    .line 72
    new-instance p2, Lie/r;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lie/r;-><init>(Lie/t;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p2}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lie/t;->l:Lxc/d;

    .line 82
    .line 83
    return-void
.end method

.method public static synthetic k(Lie/t;)[Lge/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lie/t;->w(Lie/t;)[Lge/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lie/t;I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lie/t;->v(Lie/t;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lie/t;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lie/t;->o(Lie/t;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Lie/t;)[Lee/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lie/t;->r(Lie/t;)[Lee/b;

    move-result-object p0

    return-object p0
.end method

.method private static final o(Lie/t;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lie/t;->t()[Lge/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lie/u;->a(Lge/d;[Lge/d;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private final q()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lie/t;->e:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v4, p0, Lie/t;->e:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object v4, v4, v2

    .line 19
    .line 20
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object v0
.end method

.method private static final r(Lie/t;)[Lee/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lie/t;->b:Lie/f;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lie/f;->d()[Lee/b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-object p0, Lie/v;->a:[Lee/b;

    .line 12
    .line 13
    :cond_1
    return-object p0
.end method

.method private final s()[Lee/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->j:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lee/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->l:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static final v(Lie/t;I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lie/t;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ": "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lie/t;->i(I)Lge/d;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Lge/d;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static final w(Lie/t;)[Lge/d;
    .locals 4

    .line 1
    iget-object p0, p0, Lie/t;->b:Lie/f;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lie/f;->b()[Lee/b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    array-length v1, p0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    array-length v1, p0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    aget-object v3, p0, v2

    .line 22
    .line 23
    invoke-interface {v3}, Lee/b;->a()Lge/d;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :cond_1
    invoke-static {v0}, Lie/n;->b(Ljava/util/List;)[Lge/d;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lge/d$a;->c(Lge/d;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lie/t;->i:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, -0x3

    .line 22
    :goto_0
    return p1
.end method

.method public e()Lge/f;
    .locals 1

    .line 1
    sget-object v0, Lge/g$a;->a:Lge/g$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_2

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lie/t;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :goto_0
    move v0, v2

    .line 12
    goto :goto_2

    .line 13
    :cond_1
    invoke-interface {p0}, Lge/d;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v3, p1

    .line 18
    check-cast v3, Lge/d;

    .line 19
    .line 20
    invoke-interface {v3}, Lge/d;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    check-cast p1, Lie/t;

    .line 32
    .line 33
    invoke-virtual {p0}, Lie/t;->t()[Lge/d;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lie/t;->t()[Lge/d;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-interface {p0}, Lge/d;->f()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-interface {v3}, Lge/d;->f()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eq p1, v1, :cond_4

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-interface {p0}, Lge/d;->f()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    move v1, v2

    .line 64
    :goto_1
    if-ge v1, p1, :cond_7

    .line 65
    .line 66
    invoke-interface {p0, v1}, Lge/d;->i(I)Lge/d;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v4}, Lge/d;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v3, v1}, Lge/d;->i(I)Lge/d;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v5}, Lge/d;->a()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    invoke-interface {p0, v1}, Lge/d;->i(I)Lge/d;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v4}, Lge/d;->e()Lge/f;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v3, v1}, Lge/d;->i(I)Lge/d;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-interface {v5}, Lge/d;->e()Lge/f;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_6

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    :goto_2
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lie/t;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->e:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->g:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public h(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->f:[Ljava/util/List;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lie/t;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public i(I)Lge/d;
    .locals 1

    .line 1
    invoke-direct {p0}, Lie/t;->s()[Lee/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    aget-object p1, v0, p1

    .line 6
    .line 7
    invoke-interface {p1}, Lee/b;->a()Lge/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public isInline()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lge/d$a;->b(Lge/d;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public j(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->h:[Z

    .line 2
    .line 3
    aget-boolean p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public final p(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lie/t;->e:[Ljava/lang/String;

    .line 7
    .line 8
    iget v1, p0, Lie/t;->d:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, p0, Lie/t;->d:I

    .line 13
    .line 14
    aput-object p1, v0, v1

    .line 15
    .line 16
    iget-object p1, p0, Lie/t;->h:[Z

    .line 17
    .line 18
    aput-boolean p2, p1, v1

    .line 19
    .line 20
    iget-object p1, p0, Lie/t;->f:[Ljava/util/List;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    aput-object p2, p1, v1

    .line 24
    .line 25
    iget p1, p0, Lie/t;->c:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    if-ne v1, p1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lie/t;->q()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lie/t;->i:Ljava/util/Map;

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final t()[Lge/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/t;->k:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lge/d;

    .line 8
    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lie/t;->c:I

    .line 3
    .line 4
    invoke-static {v0, v1}, Lod/g;->k(II)Lod/c;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, ", "

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lie/t;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x28

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, ")"

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    new-instance v8, Lie/s;

    .line 36
    .line 37
    invoke-direct {v8, p0}, Lie/s;-><init>(Lie/t;)V

    .line 38
    .line 39
    .line 40
    const/16 v9, 0x18

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    invoke-static/range {v2 .. v10}, Lyc/m;->X(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lid/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
