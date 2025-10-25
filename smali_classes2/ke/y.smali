.class public final Lke/y;
.super Lhe/b;
.source "SourceFile"

# interfaces
.implements Lje/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lke/y$a;
    }
.end annotation


# instance fields
.field private final a:Lke/g;

.field private final b:Lje/b;

.field private final c:Lke/d0;

.field private final d:[Lje/e;

.field private final e:Lle/b;

.field private final f:Lje/d;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lke/g;Lje/b;Lke/d0;[Lje/e;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lhe/b;-><init>()V

    .line 2
    iput-object p1, p0, Lke/y;->a:Lke/g;

    .line 3
    iput-object p2, p0, Lke/y;->b:Lje/b;

    .line 4
    iput-object p3, p0, Lke/y;->c:Lke/d0;

    .line 5
    iput-object p4, p0, Lke/y;->d:[Lje/e;

    .line 6
    invoke-virtual {p0}, Lke/y;->n()Lje/b;

    move-result-object p1

    invoke-virtual {p1}, Lje/b;->d()Lle/b;

    move-result-object p1

    iput-object p1, p0, Lke/y;->e:Lle/b;

    .line 7
    invoke-virtual {p0}, Lke/y;->n()Lje/b;

    move-result-object p1

    invoke-virtual {p1}, Lje/b;->c()Lje/d;

    move-result-object p1

    iput-object p1, p0, Lke/y;->f:Lje/d;

    .line 8
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    .line 9
    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    .line 10
    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lke/l;Lje/b;Lke/d0;[Lje/e;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, p2}, Lke/i;->a(Lke/l;Lje/b;)Lke/g;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lke/y;-><init>(Lke/g;Lje/b;Lke/d0;[Lje/e;)V

    return-void
.end method

.method private final u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lke/g;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lke/y;->r(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 10
    .line 11
    const/16 v0, 0x3a

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lke/g;->e(C)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 17
    .line 18
    invoke-virtual {p1}, Lke/g;->m()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lke/y;->r(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Lge/d;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lke/y;->c:Lke/d0;

    .line 7
    .line 8
    iget-char p1, p1, Lke/d0;->b:C

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 13
    .line 14
    invoke-virtual {p1}, Lke/g;->n()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 18
    .line 19
    invoke-virtual {p1}, Lke/g;->d()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 23
    .line 24
    iget-object v0, p0, Lke/y;->c:Lke/d0;

    .line 25
    .line 26
    iget-char v0, v0, Lke/d0;->b:C

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lke/g;->e(C)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public b(Lge/d;)Lhe/d;
    .locals 4

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lke/y;->n()Lje/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lke/e0;->b(Lje/b;Lge/d;)Lke/d0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-char v1, v0, Lke/d0;->a:C

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lke/y;->a:Lke/g;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lke/g;->e(C)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lke/y;->a:Lke/g;

    .line 24
    .line 25
    invoke-virtual {v1}, Lke/g;->b()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lke/y;->h:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lke/y;->i:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Lge/d;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    invoke-direct {p0, v1, v2}, Lke/y;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lke/y;->h:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, p0, Lke/y;->i:Ljava/lang/String;

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lke/y;->c:Lke/d0;

    .line 49
    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    iget-object p1, p0, Lke/y;->d:[Lje/e;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    aget-object p1, p1, v1

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    new-instance p1, Lke/y;

    .line 67
    .line 68
    iget-object v1, p0, Lke/y;->a:Lke/g;

    .line 69
    .line 70
    invoke-virtual {p0}, Lke/y;->n()Lje/b;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v3, p0, Lke/y;->d:[Lje/e;

    .line 75
    .line 76
    invoke-direct {p1, v1, v2, v0, v3}, Lke/y;-><init>(Lke/g;Lje/b;Lke/d0;[Lje/e;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 2
    .line 3
    const-string v1, "null"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lke/g;->i(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Lge/d;ILee/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lke/y;->f:Lje/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lje/d;->j()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lhe/b;->f(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public g(D)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lke/y;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lke/y;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lke/g;->f(D)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lke/y;->f:Lje/d;

    .line 19
    .line 20
    invoke-virtual {v0}, Lje/d;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_1
    if-eqz v0, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lke/y;->a:Lke/g;

    .line 49
    .line 50
    iget-object p2, p2, Lke/g;->a:Lke/l;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p1, p2}, Lke/q;->a(Ljava/lang/Number;Ljava/lang/String;)Lke/o;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    throw p1

    .line 61
    :cond_3
    :goto_2
    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lke/y;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lke/y;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lke/g;->j(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public k(Lee/e;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const-string v0, "serializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lje/e;->n()Lje/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lje/b;->c()Lje/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lje/d;->p()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, p0, p2}, Lee/e;->e(Lhe/f;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-interface {p0}, Lje/e;->n()Lje/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lje/b;->c()Lje/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lje/d;->f()Lje/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lke/w$a;->a:[I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    aget v0, v1, v0

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x1

    .line 46
    if-eq v0, v2, :cond_3

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    if-eq v0, v3, :cond_3

    .line 50
    .line 51
    const/4 v3, 0x3

    .line 52
    if-ne v0, v3, :cond_2

    .line 53
    .line 54
    invoke-interface {p1}, Lee/e;->a()Lge/d;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Lge/d;->e()Lge/f;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v3, Lge/g$a;->a:Lge/g$a;

    .line 63
    .line 64
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    sget-object v3, Lge/g$d;->a:Lge/g$d;

    .line 71
    .line 72
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    :cond_1
    move v1, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance p1, Lxc/i;

    .line 81
    .line 82
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-interface {p1}, Lee/e;->a()Lge/d;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {p0}, Lje/e;->n()Lje/b;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lke/w;->a(Lge/d;Lje/b;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v0, 0x0

    .line 102
    :goto_1
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-interface {p1}, Lee/e;->a()Lge/d;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v1}, Lge/d;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v0, p0, Lke/y;->h:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v1, p0, Lke/y;->i:Ljava/lang/String;

    .line 115
    .line 116
    :cond_5
    invoke-interface {p1, p0, p2}, Lee/e;->e(Lhe/f;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    return-void
.end method

.method public m(Lge/d;I)Z
    .locals 0

    .line 1
    const-string p2, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lke/y;->f:Lje/d;

    .line 7
    .line 8
    invoke-virtual {p1}, Lje/d;->i()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public n()Lje/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lke/y;->b:Lje/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lke/y;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lke/y;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lke/g;->g(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public p(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lke/y;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lke/y;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lke/g;->h(J)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lke/g;->k(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public s(Lge/d;I)Z
    .locals 6

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lke/y;->c:Lke/d0;

    .line 7
    .line 8
    sget-object v1, Lke/y$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/16 v1, 0x2c

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v0, v2, :cond_6

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/16 v4, 0x3a

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    if-eq v0, v5, :cond_3

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    if-eq v0, v5, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 31
    .line 32
    invoke-virtual {v0}, Lke/g;->a()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lke/g;->e(C)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lke/y;->a:Lke/g;

    .line 44
    .line 45
    invoke-virtual {v0}, Lke/g;->c()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lke/y;->n()Lje/b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p1, v0, p2}, Lke/s;->g(Lge/d;Lje/b;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lke/y;->r(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Lke/g;->e(C)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 65
    .line 66
    invoke-virtual {p1}, Lke/g;->m()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    if-nez p2, :cond_2

    .line 71
    .line 72
    iput-boolean v2, p0, Lke/y;->g:Z

    .line 73
    .line 74
    :cond_2
    if-ne p2, v2, :cond_8

    .line 75
    .line 76
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lke/g;->e(C)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 82
    .line 83
    invoke-virtual {p1}, Lke/g;->m()V

    .line 84
    .line 85
    .line 86
    iput-boolean v3, p0, Lke/y;->g:Z

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 90
    .line 91
    invoke-virtual {p1}, Lke/g;->a()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    rem-int/2addr p2, v5

    .line 98
    if-nez p2, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lke/g;->e(C)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 106
    .line 107
    invoke-virtual {p1}, Lke/g;->c()V

    .line 108
    .line 109
    .line 110
    move v3, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 113
    .line 114
    invoke-virtual {p1, v4}, Lke/g;->e(C)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 118
    .line 119
    invoke-virtual {p1}, Lke/g;->m()V

    .line 120
    .line 121
    .line 122
    :goto_0
    iput-boolean v3, p0, Lke/y;->g:Z

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    iput-boolean v2, p0, Lke/y;->g:Z

    .line 126
    .line 127
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 128
    .line 129
    invoke-virtual {p1}, Lke/g;->c()V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 134
    .line 135
    invoke-virtual {p1}, Lke/g;->a()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_7

    .line 140
    .line 141
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lke/g;->e(C)V

    .line 144
    .line 145
    .line 146
    :cond_7
    iget-object p1, p0, Lke/y;->a:Lke/g;

    .line 147
    .line 148
    invoke-virtual {p1}, Lke/g;->c()V

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_1
    return v2
.end method
