.class public abstract Lxd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxd/k;


# instance fields
.field public final a:Lad/i;

.field public final b:I

.field public final c:Lvd/a;


# direct methods
.method public constructor <init>(Lad/i;ILvd/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxd/e;->a:Lad/i;

    .line 5
    .line 6
    iput p2, p0, Lxd/e;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lxd/e;->c:Lvd/a;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic d(Lxd/e;Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lxd/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lxd/e$a;-><init>(Lwd/e;Lxd/e;Lad/e;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Ltd/m0;->d(Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public a(Lad/i;ILvd/a;)Lwd/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/e;->a:Lad/i;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lad/i;->e(Lad/i;)Lad/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lvd/a;->a:Lvd/a;

    .line 8
    .line 9
    if-eq p3, v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget p3, p0, Lxd/e;->b:I

    .line 13
    .line 14
    const/4 v0, -0x3

    .line 15
    if-ne p3, v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    if-ne p2, v0, :cond_2

    .line 19
    .line 20
    :goto_0
    move p2, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const/4 v0, -0x2

    .line 23
    if-ne p3, v0, :cond_3

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_3
    if-ne p2, v0, :cond_4

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_4
    add-int/2addr p3, p2

    .line 30
    if-ltz p3, :cond_5

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_5
    const p2, 0x7fffffff

    .line 34
    .line 35
    .line 36
    :goto_1
    iget-object p3, p0, Lxd/e;->c:Lvd/a;

    .line 37
    .line 38
    :goto_2
    iget-object v0, p0, Lxd/e;->a:Lad/i;

    .line 39
    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_6

    .line 45
    .line 46
    iget v0, p0, Lxd/e;->b:I

    .line 47
    .line 48
    if-ne p2, v0, :cond_6

    .line 49
    .line 50
    iget-object v0, p0, Lxd/e;->c:Lvd/a;

    .line 51
    .line 52
    if-ne p3, v0, :cond_6

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lxd/e;->f(Lad/i;ILvd/a;)Lxd/e;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public collect(Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lxd/e;->d(Lxd/e;Lwd/e;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e(Lvd/v;Lad/e;)Ljava/lang/Object;
.end method

.method protected abstract f(Lad/i;ILvd/a;)Lxd/e;
.end method

.method public final g()Lid/Function2;
    .locals 2

    .line 1
    new-instance v0, Lxd/e$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lxd/e$b;-><init>(Lxd/e;Lad/e;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final h()I
    .locals 2

    .line 1
    iget v0, p0, Lxd/e;->b:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, -0x2

    .line 7
    :cond_0
    return v0
.end method

.method public i(Ltd/l0;)Lvd/w;
    .locals 9

    .line 1
    iget-object v1, p0, Lxd/e;->a:Lad/i;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxd/e;->h()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, p0, Lxd/e;->c:Lvd/a;

    .line 8
    .line 9
    sget-object v4, Ltd/n0;->c:Ltd/n0;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {p0}, Lxd/e;->g()Lid/Function2;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    const/16 v7, 0x10

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    move-object v0, p1

    .line 20
    invoke-static/range {v0 .. v8}, Lvd/t;->c(Ltd/l0;Lad/i;ILvd/a;Ltd/n0;Lid/l;Lid/Function2;ILjava/lang/Object;)Lvd/w;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lxd/e;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lxd/e;->a:Lad/i;

    .line 17
    .line 18
    sget-object v2, Lad/j;->a:Lad/j;

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "context="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lxd/e;->a:Lad/i;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    iget v1, p0, Lxd/e;->b:I

    .line 45
    .line 46
    const/4 v2, -0x3

    .line 47
    if-eq v1, v2, :cond_2

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "capacity="

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v2, p0, Lxd/e;->b:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v1, p0, Lxd/e;->c:Lvd/a;

    .line 72
    .line 73
    sget-object v2, Lvd/a;->a:Lvd/a;

    .line 74
    .line 75
    if-eq v1, v2, :cond_3

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "onBufferOverflow="

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lxd/e;->c:Lvd/a;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-static {p0}, Ltd/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x5b

    .line 112
    .line 113
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", "

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/16 v7, 0x3e

    .line 124
    .line 125
    const/4 v8, 0x0

    .line 126
    invoke-static/range {v0 .. v8}, Lyc/m;->X(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lid/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/16 v0, 0x5d

    .line 134
    .line 135
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    return-object v0
.end method
