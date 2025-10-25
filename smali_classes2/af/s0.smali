.class public final Laf/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf/s0$a;
    }
.end annotation


# static fields
.field public static final b:Laf/s0$a;

.field public static final c:Ljava/lang/String;


# instance fields
.field private final a:Laf/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Laf/s0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Laf/s0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Laf/s0;->b:Laf/s0$a;

    .line 8
    .line 9
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "separator"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Laf/s0;->c:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Laf/g;)V
    .locals 1

    .line 1
    const-string v0, "bytes"

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
    iput-object p1, p0, Laf/s0;->a:Laf/g;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Laf/s0;)I
    .locals 1

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Laf/s0;->b()Laf/g;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Laf/g;->b(Laf/g;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final b()Laf/g;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/s0;->a:Laf/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Laf/s0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Laf/s0;->a(Laf/s0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Laf/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Laf/s0;

    .line 6
    .line 7
    invoke-virtual {p1}, Laf/s0;->b()Laf/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final f()Laf/s0;
    .locals 4

    .line 1
    invoke-static {p0}, Lbf/d;->h(Laf/s0;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Laf/s0;

    .line 11
    .line 12
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3, v0}, Laf/g;->E(II)Laf/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v1, v0}, Laf/s0;-><init>(Laf/g;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v1

    .line 25
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Laf/g;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lbf/d;->h(Laf/s0;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/16 v3, 0x5c

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Laf/g;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Laf/g;->j(I)B

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Laf/g;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    move v4, v1

    .line 48
    :goto_1
    if-ge v1, v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5, v1}, Laf/g;->j(I)B

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const/16 v6, 0x2f

    .line 59
    .line 60
    if-eq v5, v6, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5, v1}, Laf/g;->j(I)B

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-ne v5, v3, :cond_3

    .line 71
    .line 72
    :cond_2
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5, v4, v1}, Laf/g;->E(II)Laf/g;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    add-int/lit8 v4, v1, 0x1

    .line 84
    .line 85
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Laf/g;->size()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-ge v4, v1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Laf/g;->size()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v1, v4, v2}, Laf/g;->E(II)Laf/g;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_5
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    invoke-static {p0}, Lbf/d;->h(Laf/s0;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/s0;->m()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Laf/g;->H()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final m()Laf/g;
    .locals 5

    .line 1
    invoke-static {p0}, Lbf/d;->d(Laf/s0;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {v1, v0, v3, v2, v4}, Laf/g;->F(Laf/g;IIILjava/lang/Object;)Laf/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Laf/s0;->u()Ljava/lang/Character;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Laf/g;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    sget-object v0, Laf/g;->e:Laf/g;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    return-object v0
.end method

.method public final n()Laf/s0;
    .locals 3

    .line 1
    sget-object v0, Laf/s0;->b:Laf/s0$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Laf/s0;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Laf/s0$a;->b(Ljava/lang/String;Z)Laf/s0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final o()Laf/s0;
    .locals 7

    .line 1
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lbf/d;->b()Laf/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_8

    .line 15
    .line 16
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lbf/d;->e()Laf/g;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_8

    .line 29
    .line 30
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lbf/d;->a()Laf/g;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_8

    .line 43
    .line 44
    invoke-static {p0}, Lbf/d;->g(Laf/s0;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    invoke-static {p0}, Lbf/d;->d(Laf/s0;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v2, 0x2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x1

    .line 59
    if-ne v0, v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Laf/s0;->u()Ljava/lang/Character;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Laf/g;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v2, 0x3

    .line 76
    if-ne v0, v2, :cond_1

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_1
    new-instance v0, Laf/s0;

    .line 81
    .line 82
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-static {v5, v3, v2, v4, v1}, Laf/g;->F(Laf/g;IIILjava/lang/Object;)Laf/g;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Laf/s0;-><init>(Laf/g;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    move-object v1, v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    if-ne v0, v4, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {}, Lbf/d;->a()Laf/g;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Laf/g;->D(Laf/g;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const/4 v5, -0x1

    .line 113
    if-ne v0, v5, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0}, Laf/s0;->u()Ljava/lang/Character;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-eqz v6, :cond_5

    .line 120
    .line 121
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Laf/g;->size()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-ne v0, v2, :cond_4

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    new-instance v0, Laf/s0;

    .line 133
    .line 134
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-static {v5, v3, v2, v4, v1}, Laf/g;->F(Laf/g;IIILjava/lang/Object;)Laf/g;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {v0, v1}, Laf/s0;-><init>(Laf/g;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    if-ne v0, v5, :cond_6

    .line 147
    .line 148
    new-instance v1, Laf/s0;

    .line 149
    .line 150
    invoke-static {}, Lbf/d;->b()Laf/g;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {v1, v0}, Laf/s0;-><init>(Laf/g;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    if-nez v0, :cond_7

    .line 159
    .line 160
    new-instance v0, Laf/s0;

    .line 161
    .line 162
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v2, v3, v4, v4, v1}, Laf/g;->F(Laf/g;IIILjava/lang/Object;)Laf/g;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Laf/s0;-><init>(Laf/g;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_7
    new-instance v2, Laf/s0;

    .line 175
    .line 176
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {v5, v3, v0, v4, v1}, Laf/g;->F(Laf/g;IIILjava/lang/Object;)Laf/g;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {v2, v0}, Laf/s0;-><init>(Laf/g;)V

    .line 185
    .line 186
    .line 187
    move-object v1, v2

    .line 188
    :cond_8
    :goto_1
    return-object v1
.end method

.method public final p(Laf/s0;)Laf/s0;
    .locals 8

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Laf/s0;->f()Laf/s0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Laf/s0;->f()Laf/s0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-string v1, " and "

    .line 19
    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    invoke-virtual {p0}, Laf/s0;->i()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Laf/s0;->i()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    move v5, v4

    .line 44
    :goto_0
    if-ge v5, v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v6, 0x1

    .line 64
    if-ne v5, v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Laf/g;->size()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {p1}, Laf/s0;->b()Laf/g;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Laf/g;->size()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-ne v3, v7, :cond_1

    .line 83
    .line 84
    sget-object p1, Laf/s0;->b:Laf/s0$a;

    .line 85
    .line 86
    const-string v0, "."

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-static {p1, v0, v4, v6, v1}, Laf/s0$a;->e(Laf/s0$a;Ljava/lang/String;ZILjava/lang/Object;)Laf/s0;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_4

    .line 94
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {}, Lbf/d;->c()Laf/g;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-interface {v3, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const/4 v7, -0x1

    .line 111
    if-ne v3, v7, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v6, v4

    .line 115
    :goto_1
    if-eqz v6, :cond_6

    .line 116
    .line 117
    new-instance v1, Laf/d;

    .line 118
    .line 119
    invoke-direct {v1}, Laf/d;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lbf/d;->f(Laf/s0;)Laf/g;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-nez p1, :cond_3

    .line 127
    .line 128
    invoke-static {p0}, Lbf/d;->f(Laf/s0;)Laf/g;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-nez p1, :cond_3

    .line 133
    .line 134
    sget-object p1, Laf/s0;->c:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {p1}, Lbf/d;->i(Ljava/lang/String;)Laf/g;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    move v3, v5

    .line 145
    :goto_2
    if-ge v3, v2, :cond_4

    .line 146
    .line 147
    invoke-static {}, Lbf/d;->c()Laf/g;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v1, v6}, Laf/d;->T0(Laf/g;)Laf/d;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Laf/d;->T0(Laf/g;)Laf/d;

    .line 155
    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    :goto_3
    if-ge v5, v2, :cond_5

    .line 165
    .line 166
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Laf/g;

    .line 171
    .line 172
    invoke-virtual {v1, v3}, Laf/d;->T0(Laf/g;)Laf/d;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1}, Laf/d;->T0(Laf/g;)Laf/d;

    .line 176
    .line 177
    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_5
    invoke-static {v1, v4}, Lbf/d;->q(Laf/d;Z)Laf/s0;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    :goto_4
    return-object p1

    .line 186
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v2, "Impossible relative path to resolve: "

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v2, "Paths of different roots cannot be relative to each other: "

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0
.end method

.method public final q(Laf/s0;Z)Laf/s0;
    .locals 1

    .line 1
    const-string v0, "child"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lbf/d;->j(Laf/s0;Laf/s0;Z)Laf/s0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final r(Ljava/lang/String;)Laf/s0;
    .locals 1

    .line 1
    const-string v0, "child"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Laf/d;

    .line 7
    .line 8
    invoke-direct {v0}, Laf/d;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Laf/d;->d1(Ljava/lang/String;)Laf/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lbf/d;->q(Laf/d;Z)Laf/s0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1, v0}, Lbf/d;->j(Laf/s0;Laf/s0;Z)Laf/s0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final s()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Laf/s0;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final t()Ljava/nio/file/Path;
    .locals 2

    .line 1
    invoke-virtual {p0}, Laf/s0;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Laf/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "get(toString())"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Laf/g;->H()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final u()Ljava/lang/Character;
    .locals 5

    .line 1
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lbf/d;->e()Laf/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v1, v2, v3, v4}, Laf/g;->s(Laf/g;Laf/g;IILjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Laf/g;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ge v0, v3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Laf/g;->j(I)B

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v3, 0x3a

    .line 41
    .line 42
    if-eq v0, v3, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p0}, Laf/s0;->b()Laf/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Laf/g;->j(I)B

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-char v0, v0

    .line 54
    const/16 v3, 0x61

    .line 55
    .line 56
    if-gt v3, v0, :cond_3

    .line 57
    .line 58
    const/16 v3, 0x7b

    .line 59
    .line 60
    if-ge v0, v3, :cond_3

    .line 61
    .line 62
    move v3, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move v3, v2

    .line 65
    :goto_0
    if-nez v3, :cond_5

    .line 66
    .line 67
    const/16 v3, 0x41

    .line 68
    .line 69
    if-gt v3, v0, :cond_4

    .line 70
    .line 71
    const/16 v3, 0x5b

    .line 72
    .line 73
    if-ge v0, v3, :cond_4

    .line 74
    .line 75
    move v2, v1

    .line 76
    :cond_4
    if-nez v2, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    :goto_1
    return-object v4
.end method
