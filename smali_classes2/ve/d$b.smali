.class public final Lve/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field private final b:Z

.field private final c:Laf/d;

.field private d:I

.field private e:Z

.field public f:I

.field public g:[Lve/c;

.field private h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(IZLaf/d;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lve/d$b;->a:I

    .line 3
    iput-boolean p2, p0, Lve/d$b;->b:Z

    .line 4
    iput-object p3, p0, Lve/d$b;->c:Laf/d;

    const p2, 0x7fffffff

    .line 5
    iput p2, p0, Lve/d$b;->d:I

    .line 6
    iput p1, p0, Lve/d$b;->f:I

    const/16 p1, 0x8

    new-array p1, p1, [Lve/c;

    .line 7
    iput-object p1, p0, Lve/d$b;->g:[Lve/c;

    .line 8
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lve/d$b;->h:I

    return-void
.end method

.method public synthetic constructor <init>(IZLaf/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lve/d$b;-><init>(IZLaf/d;)V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget v0, p0, Lve/d$b;->f:I

    .line 2
    .line 3
    iget v1, p0, Lve/d$b;->j:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lve/d$b;->b()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-int/2addr v1, v0

    .line 14
    invoke-direct {p0, v1}, Lve/d$b;->c(I)I

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method private final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lve/d$b;->g:[Lve/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x6

    .line 7
    const/4 v5, 0x0

    .line 8
    invoke-static/range {v0 .. v5}, Lyc/g;->n([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lve/d$b;->g:[Lve/c;

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lve/d$b;->h:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lve/d$b;->i:I

    .line 20
    .line 21
    iput v0, p0, Lve/d$b;->j:I

    .line 22
    .line 23
    return-void
.end method

.method private final c(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lve/d$b;->g:[Lve/c;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    iget v2, p0, Lve/d$b;->h:I

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lve/d$b;->g:[Lve/c;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget v2, v2, Lve/c;->c:I

    .line 23
    .line 24
    sub-int/2addr p1, v2

    .line 25
    iget v2, p0, Lve/d$b;->j:I

    .line 26
    .line 27
    iget-object v3, p0, Lve/d$b;->g:[Lve/c;

    .line 28
    .line 29
    aget-object v3, v3, v1

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v3, v3, Lve/c;->c:I

    .line 35
    .line 36
    sub-int/2addr v2, v3

    .line 37
    iput v2, p0, Lve/d$b;->j:I

    .line 38
    .line 39
    iget v2, p0, Lve/d$b;->i:I

    .line 40
    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    iput v2, p0, Lve/d$b;->i:I

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lve/d$b;->g:[Lve/c;

    .line 51
    .line 52
    add-int/lit8 v1, v2, 0x1

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    add-int/2addr v2, v0

    .line 57
    iget v3, p0, Lve/d$b;->i:I

    .line 58
    .line 59
    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lve/d$b;->g:[Lve/c;

    .line 63
    .line 64
    iget v1, p0, Lve/d$b;->h:I

    .line 65
    .line 66
    add-int/lit8 v2, v1, 0x1

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    add-int/2addr v1, v0

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget p1, p0, Lve/d$b;->h:I

    .line 76
    .line 77
    add-int/2addr p1, v0

    .line 78
    iput p1, p0, Lve/d$b;->h:I

    .line 79
    .line 80
    :cond_1
    return v0
.end method

.method private final d(Lve/c;)V
    .locals 6

    .line 1
    iget v0, p1, Lve/c;->c:I

    .line 2
    .line 3
    iget v1, p0, Lve/d$b;->f:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lve/d$b;->b()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v2, p0, Lve/d$b;->j:I

    .line 12
    .line 13
    add-int/2addr v2, v0

    .line 14
    sub-int/2addr v2, v1

    .line 15
    invoke-direct {p0, v2}, Lve/d$b;->c(I)I

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lve/d$b;->i:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    iget-object v2, p0, Lve/d$b;->g:[Lve/c;

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    if-le v1, v3, :cond_1

    .line 26
    .line 27
    array-length v1, v2

    .line 28
    mul-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    new-array v1, v1, [Lve/c;

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    array-length v4, v2

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lve/d$b;->g:[Lve/c;

    .line 39
    .line 40
    array-length v2, v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    iput v2, p0, Lve/d$b;->h:I

    .line 44
    .line 45
    iput-object v1, p0, Lve/d$b;->g:[Lve/c;

    .line 46
    .line 47
    :cond_1
    iget v1, p0, Lve/d$b;->h:I

    .line 48
    .line 49
    add-int/lit8 v2, v1, -0x1

    .line 50
    .line 51
    iput v2, p0, Lve/d$b;->h:I

    .line 52
    .line 53
    iget-object v2, p0, Lve/d$b;->g:[Lve/c;

    .line 54
    .line 55
    aput-object p1, v2, v1

    .line 56
    .line 57
    iget p1, p0, Lve/d$b;->i:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    iput p1, p0, Lve/d$b;->i:I

    .line 62
    .line 63
    iget p1, p0, Lve/d$b;->j:I

    .line 64
    .line 65
    add-int/2addr p1, v0

    .line 66
    iput p1, p0, Lve/d$b;->j:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 1

    .line 1
    iput p1, p0, Lve/d$b;->a:I

    .line 2
    .line 3
    const/16 v0, 0x4000

    .line 4
    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lve/d$b;->f:I

    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lve/d$b;->d:I

    .line 17
    .line 18
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lve/d$b;->d:I

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lve/d$b;->e:Z

    .line 26
    .line 27
    iput p1, p0, Lve/d$b;->f:I

    .line 28
    .line 29
    invoke-direct {p0}, Lve/d$b;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final f(Laf/g;)V
    .locals 4

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lve/d$b;->b:Z

    .line 7
    .line 8
    const/16 v1, 0x7f

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lve/k;->a:Lve/k;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lve/k;->d(Laf/g;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p1}, Laf/g;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    new-instance v2, Laf/d;

    .line 25
    .line 26
    invoke-direct {v2}, Laf/d;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Lve/k;->c(Laf/g;Laf/e;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Laf/d;->E()Laf/g;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Laf/g;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v2, 0x80

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1, v2}, Lve/d$b;->h(III)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lve/d$b;->c:Laf/d;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Laf/d;->T0(Laf/g;)Laf/d;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Laf/g;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v0, v1, v2}, Lve/d$b;->h(III)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lve/d$b;->c:Laf/d;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Laf/d;->T0(Laf/g;)Laf/d;

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 14

    .line 1
    const-string v0, "headerBlock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lve/d$b;->e:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lve/d$b;->d:I

    .line 12
    .line 13
    iget v2, p0, Lve/d$b;->f:I

    .line 14
    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    const/16 v4, 0x1f

    .line 18
    .line 19
    if-ge v0, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0, v4, v3}, Lve/d$b;->h(III)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-boolean v1, p0, Lve/d$b;->e:Z

    .line 25
    .line 26
    const v0, 0x7fffffff

    .line 27
    .line 28
    .line 29
    iput v0, p0, Lve/d$b;->d:I

    .line 30
    .line 31
    iget v0, p0, Lve/d$b;->f:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, v4, v3}, Lve/d$b;->h(III)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    move v2, v1

    .line 41
    :goto_0
    if-ge v2, v0, :cond_c

    .line 42
    .line 43
    add-int/lit8 v3, v2, 0x1

    .line 44
    .line 45
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lve/c;

    .line 50
    .line 51
    iget-object v4, v2, Lve/c;->a:Laf/g;

    .line 52
    .line 53
    invoke-virtual {v4}, Laf/g;->G()Laf/g;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v5, v2, Lve/c;->b:Laf/g;

    .line 58
    .line 59
    sget-object v6, Lve/d;->a:Lve/d;

    .line 60
    .line 61
    invoke-virtual {v6}, Lve/d;->b()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Ljava/lang/Integer;

    .line 70
    .line 71
    const/4 v8, -0x1

    .line 72
    const/4 v9, 0x1

    .line 73
    if-eqz v7, :cond_5

    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    add-int/2addr v7, v9

    .line 80
    const/4 v10, 0x2

    .line 81
    if-gt v10, v7, :cond_2

    .line 82
    .line 83
    const/16 v10, 0x8

    .line 84
    .line 85
    if-ge v7, v10, :cond_2

    .line 86
    .line 87
    move v10, v9

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move v10, v1

    .line 90
    :goto_1
    if-eqz v10, :cond_4

    .line 91
    .line 92
    invoke-virtual {v6}, Lve/d;->c()[Lve/c;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    add-int/lit8 v11, v7, -0x1

    .line 97
    .line 98
    aget-object v10, v10, v11

    .line 99
    .line 100
    iget-object v10, v10, Lve/c;->b:Laf/g;

    .line 101
    .line 102
    invoke-static {v10, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_3

    .line 107
    .line 108
    move v6, v7

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {v6}, Lve/d;->c()[Lve/c;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    aget-object v6, v6, v7

    .line 115
    .line 116
    iget-object v6, v6, Lve/c;->b:Laf/g;

    .line 117
    .line 118
    invoke-static {v6, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_4

    .line 123
    .line 124
    add-int/lit8 v6, v7, 0x1

    .line 125
    .line 126
    move v13, v7

    .line 127
    move v7, v6

    .line 128
    move v6, v13

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    move v6, v7

    .line 131
    move v7, v8

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    move v6, v8

    .line 134
    move v7, v6

    .line 135
    :goto_2
    if-ne v7, v8, :cond_8

    .line 136
    .line 137
    iget v10, p0, Lve/d$b;->h:I

    .line 138
    .line 139
    add-int/2addr v10, v9

    .line 140
    iget-object v9, p0, Lve/d$b;->g:[Lve/c;

    .line 141
    .line 142
    array-length v9, v9

    .line 143
    :goto_3
    if-ge v10, v9, :cond_8

    .line 144
    .line 145
    add-int/lit8 v11, v10, 0x1

    .line 146
    .line 147
    iget-object v12, p0, Lve/d$b;->g:[Lve/c;

    .line 148
    .line 149
    aget-object v12, v12, v10

    .line 150
    .line 151
    invoke-static {v12}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v12, v12, Lve/c;->a:Laf/g;

    .line 155
    .line 156
    invoke-static {v12, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-eqz v12, :cond_7

    .line 161
    .line 162
    iget-object v12, p0, Lve/d$b;->g:[Lve/c;

    .line 163
    .line 164
    aget-object v12, v12, v10

    .line 165
    .line 166
    invoke-static {v12}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v12, v12, Lve/c;->b:Laf/g;

    .line 170
    .line 171
    invoke-static {v12, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    if-eqz v12, :cond_6

    .line 176
    .line 177
    iget v7, p0, Lve/d$b;->h:I

    .line 178
    .line 179
    sub-int/2addr v10, v7

    .line 180
    sget-object v7, Lve/d;->a:Lve/d;

    .line 181
    .line 182
    invoke-virtual {v7}, Lve/d;->c()[Lve/c;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    array-length v7, v7

    .line 187
    add-int/2addr v7, v10

    .line 188
    goto :goto_4

    .line 189
    :cond_6
    if-ne v6, v8, :cond_7

    .line 190
    .line 191
    iget v6, p0, Lve/d$b;->h:I

    .line 192
    .line 193
    sub-int/2addr v10, v6

    .line 194
    sget-object v6, Lve/d;->a:Lve/d;

    .line 195
    .line 196
    invoke-virtual {v6}, Lve/d;->c()[Lve/c;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    array-length v6, v6

    .line 201
    add-int/2addr v6, v10

    .line 202
    :cond_7
    move v10, v11

    .line 203
    goto :goto_3

    .line 204
    :cond_8
    :goto_4
    if-eq v7, v8, :cond_9

    .line 205
    .line 206
    const/16 v2, 0x7f

    .line 207
    .line 208
    const/16 v4, 0x80

    .line 209
    .line 210
    invoke-virtual {p0, v7, v2, v4}, Lve/d$b;->h(III)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_9
    const/16 v7, 0x40

    .line 215
    .line 216
    if-ne v6, v8, :cond_a

    .line 217
    .line 218
    iget-object v6, p0, Lve/d$b;->c:Laf/d;

    .line 219
    .line 220
    invoke-virtual {v6, v7}, Laf/d;->X0(I)Laf/d;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v4}, Lve/d$b;->f(Laf/g;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v5}, Lve/d$b;->f(Laf/g;)V

    .line 227
    .line 228
    .line 229
    invoke-direct {p0, v2}, Lve/d$b;->d(Lve/c;)V

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_a
    sget-object v8, Lve/c;->e:Laf/g;

    .line 234
    .line 235
    invoke-virtual {v4, v8}, Laf/g;->D(Laf/g;)Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-eqz v8, :cond_b

    .line 240
    .line 241
    sget-object v8, Lve/c;->j:Laf/g;

    .line 242
    .line 243
    invoke-static {v8, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-nez v4, :cond_b

    .line 248
    .line 249
    const/16 v2, 0xf

    .line 250
    .line 251
    invoke-virtual {p0, v6, v2, v1}, Lve/d$b;->h(III)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v5}, Lve/d$b;->f(Laf/g;)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_b
    const/16 v4, 0x3f

    .line 259
    .line 260
    invoke-virtual {p0, v6, v4, v7}, Lve/d$b;->h(III)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v5}, Lve/d$b;->f(Laf/g;)V

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, v2}, Lve/d$b;->d(Lve/c;)V

    .line 267
    .line 268
    .line 269
    :goto_5
    move v2, v3

    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_c
    return-void
.end method

.method public final h(III)V
    .locals 1

    .line 1
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lve/d$b;->c:Laf/d;

    .line 4
    .line 5
    or-int/2addr p1, p3

    .line 6
    invoke-virtual {p2, p1}, Laf/d;->X0(I)Laf/d;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lve/d$b;->c:Laf/d;

    .line 11
    .line 12
    or-int/2addr p3, p2

    .line 13
    invoke-virtual {v0, p3}, Laf/d;->X0(I)Laf/d;

    .line 14
    .line 15
    .line 16
    sub-int/2addr p1, p2

    .line 17
    :goto_0
    const/16 p2, 0x80

    .line 18
    .line 19
    if-lt p1, p2, :cond_1

    .line 20
    .line 21
    and-int/lit8 p3, p1, 0x7f

    .line 22
    .line 23
    iget-object v0, p0, Lve/d$b;->c:Laf/d;

    .line 24
    .line 25
    or-int/2addr p2, p3

    .line 26
    invoke-virtual {v0, p2}, Laf/d;->X0(I)Laf/d;

    .line 27
    .line 28
    .line 29
    ushr-int/lit8 p1, p1, 0x7

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lve/d$b;->c:Laf/d;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Laf/d;->X0(I)Laf/d;

    .line 35
    .line 36
    .line 37
    return-void
.end method
