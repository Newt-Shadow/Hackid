.class public final Lne/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/d$a;,
        Lne/d$b;
    }
.end annotation


# static fields
.field public static final n:Lne/d$b;

.field public static final o:Lne/d;

.field public static final p:Lne/d;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lne/d$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lne/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lne/d;->n:Lne/d$b;

    .line 8
    .line 9
    new-instance v0, Lne/d$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lne/d$a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lne/d$a;->d()Lne/d$a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lne/d$a;->a()Lne/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lne/d;->o:Lne/d;

    .line 23
    .line 24
    new-instance v0, Lne/d$a;

    .line 25
    .line 26
    invoke-direct {v0}, Lne/d$a;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lne/d$a;->e()Lne/d$a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7fffffff

    .line 34
    .line 35
    .line 36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lne/d$a;->c(ILjava/util/concurrent/TimeUnit;)Lne/d$a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lne/d$a;->a()Lne/d;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lne/d;->p:Lne/d;

    .line 47
    .line 48
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lne/d;->a:Z

    .line 4
    iput-boolean p2, p0, Lne/d;->b:Z

    .line 5
    iput p3, p0, Lne/d;->c:I

    .line 6
    iput p4, p0, Lne/d;->d:I

    .line 7
    iput-boolean p5, p0, Lne/d;->e:Z

    .line 8
    iput-boolean p6, p0, Lne/d;->f:Z

    .line 9
    iput-boolean p7, p0, Lne/d;->g:Z

    .line 10
    iput p8, p0, Lne/d;->h:I

    .line 11
    iput p9, p0, Lne/d;->i:I

    .line 12
    iput-boolean p10, p0, Lne/d;->j:Z

    .line 13
    iput-boolean p11, p0, Lne/d;->k:Z

    .line 14
    iput-boolean p12, p0, Lne/d;->l:Z

    .line 15
    iput-object p13, p0, Lne/d;->m:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lne/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/d;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/d;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/d;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lne/d;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lne/d;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lne/d;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/d;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/d;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/d;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/d;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lne/d;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Lne/d;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lne/d;->m:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lne/d;->h()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "no-cache, "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lne/d;->i()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v1, "no-store, "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lne/d;->d()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, ", "

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    if-eq v1, v3, :cond_2

    .line 40
    .line 41
    const-string v1, "max-age="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lne/d;->d()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Lne/d;->l()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eq v1, v3, :cond_3

    .line 61
    .line 62
    const-string v1, "s-maxage="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lne/d;->l()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p0}, Lne/d;->b()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    const-string v1, "private, "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p0}, Lne/d;->c()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    const-string v1, "public, "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_5
    invoke-virtual {p0}, Lne/d;->g()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    const-string v1, "must-revalidate, "

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_6
    invoke-virtual {p0}, Lne/d;->e()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eq v1, v3, :cond_7

    .line 115
    .line 116
    const-string v1, "max-stale="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lne/d;->e()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-virtual {p0}, Lne/d;->f()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eq v1, v3, :cond_8

    .line 136
    .line 137
    const-string v1, "min-fresh="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lne/d;->f()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :cond_8
    invoke-virtual {p0}, Lne/d;->k()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_9

    .line 157
    .line 158
    const-string v1, "only-if-cached, "

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    :cond_9
    invoke-virtual {p0}, Lne/d;->j()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    const-string v1, "no-transform, "

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-virtual {p0}, Lne/d;->a()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_b

    .line 179
    .line 180
    const-string v1, "immutable, "

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    :cond_b
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_c

    .line 190
    .line 191
    const/4 v1, 0x1

    .line 192
    goto :goto_0

    .line 193
    :cond_c
    const/4 v1, 0x0

    .line 194
    :goto_0
    if-eqz v1, :cond_d

    .line 195
    .line 196
    const-string v0, ""

    .line 197
    .line 198
    return-object v0

    .line 199
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    add-int/lit8 v1, v1, -0x2

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 217
    .line 218
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iput-object v0, p0, Lne/d;->m:Ljava/lang/String;

    .line 222
    .line 223
    :cond_e
    return-object v0
.end method
