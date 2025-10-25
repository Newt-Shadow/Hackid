.class final Landroidx/datastore/preferences/protobuf/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/s$b;
    }
.end annotation


# static fields
.field private static final d:Landroidx/datastore/preferences/protobuf/s;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/h1;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/s;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/s;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/preferences/protobuf/s;->d:Landroidx/datastore/preferences/protobuf/s;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h1;->r()Landroidx/datastore/preferences/protobuf/h1;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    return-void
.end method

.method private constructor <init>(Landroidx/datastore/preferences/protobuf/h1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/s;->o()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h1;->r()Landroidx/datastore/preferences/protobuf/h1;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/s;-><init>(Landroidx/datastore/preferences/protobuf/h1;)V

    .line 4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/s;->o()V

    return-void
.end method

.method static b(Landroidx/datastore/preferences/protobuf/q1$b;ILjava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/q1$b;->l:Landroidx/datastore/preferences/protobuf/q1$b;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p2}, Landroidx/datastore/preferences/protobuf/s;->c(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p1, p0

    .line 16
    return p1
.end method

.method static c(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/s$a;->b:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->k(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->L(J)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->J(I)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->H(J)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->F(I)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->Q(I)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    return p0

    .line 86
    :pswitch_6
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/g;

    .line 87
    .line 88
    if-eqz p0, :cond_0

    .line 89
    .line 90
    check-cast p1, Landroidx/datastore/preferences/protobuf/g;

    .line 91
    .line 92
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->g(Landroidx/datastore/preferences/protobuf/g;)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    return p0

    .line 97
    :cond_0
    check-cast p1, [B

    .line 98
    .line 99
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->e([B)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0

    .line 104
    :pswitch_7
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/g;

    .line 105
    .line 106
    if-eqz p0, :cond_1

    .line 107
    .line 108
    check-cast p1, Landroidx/datastore/preferences/protobuf/g;

    .line 109
    .line 110
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->g(Landroidx/datastore/preferences/protobuf/g;)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    return p0

    .line 115
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->N(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0

    .line 122
    :pswitch_8
    check-cast p1, Landroidx/datastore/preferences/protobuf/p0;

    .line 123
    .line 124
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->A(Landroidx/datastore/preferences/protobuf/p0;)I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    return p0

    .line 129
    :pswitch_9
    check-cast p1, Landroidx/datastore/preferences/protobuf/p0;

    .line 130
    .line 131
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->s(Landroidx/datastore/preferences/protobuf/p0;)I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    return p0

    .line 136
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->d(Z)I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    return p0

    .line 147
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->m(I)I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    return p0

    .line 158
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 161
    .line 162
    .line 163
    move-result-wide p0

    .line 164
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->o(J)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    return p0

    .line 169
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->v(I)I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    return p0

    .line 180
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 183
    .line 184
    .line 185
    move-result-wide p0

    .line 186
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->S(J)I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    return p0

    .line 191
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide p0

    .line 197
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->x(J)I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    return p0

    .line 202
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->q(F)I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    return p0

    .line 213
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 216
    .line 217
    .line 218
    move-result-wide p0

    .line 219
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->i(D)I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    return p0

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/s$b;->h()Landroidx/datastore/preferences/protobuf/q1$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/s$b;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/s$b;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/s$b;->k()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    return v3

    .line 35
    :cond_0
    move p0, v3

    .line 36
    :goto_0
    if-ge v3, v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v0, v4}, Landroidx/datastore/preferences/protobuf/s;->c(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    add-int/2addr p0, v4

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/j;->O(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    add-int/2addr p1, p0

    .line 55
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/j;->Q(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr p1, p0

    .line 60
    return p1

    .line 61
    :cond_2
    move p0, v3

    .line 62
    :goto_1
    if-ge v3, v2, :cond_3

    .line 63
    .line 64
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/s;->b(Landroidx/datastore/preferences/protobuf/q1$b;ILjava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    add-int/2addr p0, v4

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return p0

    .line 77
    :cond_4
    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/s;->b(Landroidx/datastore/preferences/protobuf/q1$b;ILjava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0
.end method

.method private g(Ljava/util/Map$Entry;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method static i(Landroidx/datastore/preferences/protobuf/q1$b;Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x2

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/q1$b;->b()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static l(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method private static m(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/y;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/datastore/preferences/protobuf/s$a;->a:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/q1$b;->a()Landroidx/datastore/preferences/protobuf/q1$c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    aget p0, v0, p0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :pswitch_0
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/p0;

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    move v0, v1

    .line 27
    :cond_0
    return v0

    .line 28
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    move v0, v1

    .line 33
    :cond_1
    return v0

    .line 34
    :pswitch_2
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/g;

    .line 35
    .line 36
    if-nez p0, :cond_3

    .line 37
    .line 38
    instance-of p0, p1, [B

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    :cond_3
    :goto_0
    return v0

    .line 45
    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    .line 46
    .line 47
    return p0

    .line 48
    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    .line 49
    .line 50
    return p0

    .line 51
    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    .line 52
    .line 53
    return p0

    .line 54
    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    .line 55
    .line 56
    return p0

    .line 57
    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    .line 58
    .line 59
    return p0

    .line 60
    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    .line 61
    .line 62
    return p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q(Ljava/util/Map$Entry;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public static r()Landroidx/datastore/preferences/protobuf/s;
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/s;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/s;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private t(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/s$b;->h()Landroidx/datastore/preferences/protobuf/q1$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p2}, Landroidx/datastore/preferences/protobuf/s;->m(Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/s$b;->c()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/s$b;->h()Landroidx/datastore/preferences/protobuf/q1$b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/q1$b;->a()Landroidx/datastore/preferences/protobuf/q1$c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 43
    .line 44
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method static u(Landroidx/datastore/preferences/protobuf/j;Landroidx/datastore/preferences/protobuf/q1$b;ILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/q1$b;->l:Landroidx/datastore/preferences/protobuf/q1$b;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    check-cast p3, Landroidx/datastore/preferences/protobuf/p0;

    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/j;->q0(ILandroidx/datastore/preferences/protobuf/p0;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/s;->i(Landroidx/datastore/preferences/protobuf/q1$b;Z)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, p2, v0}, Landroidx/datastore/preferences/protobuf/j;->M0(II)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/s;->v(Landroidx/datastore/preferences/protobuf/j;Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method static v(Landroidx/datastore/preferences/protobuf/j;Landroidx/datastore/preferences/protobuf/q1$b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/s$a;->b:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->j0(I)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->J0(J)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->H0(I)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->F0(J)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->D0(I)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->O0(I)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :pswitch_6
    instance-of p1, p2, Landroidx/datastore/preferences/protobuf/g;

    .line 81
    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    check-cast p2, Landroidx/datastore/preferences/protobuf/g;

    .line 85
    .line 86
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j;->f0(Landroidx/datastore/preferences/protobuf/g;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_0
    check-cast p2, [B

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j;->c0([B)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :pswitch_7
    instance-of p1, p2, Landroidx/datastore/preferences/protobuf/g;

    .line 99
    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    check-cast p2, Landroidx/datastore/preferences/protobuf/g;

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j;->f0(Landroidx/datastore/preferences/protobuf/g;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    check-cast p2, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j;->L0(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :pswitch_8
    check-cast p2, Landroidx/datastore/preferences/protobuf/p0;

    .line 115
    .line 116
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j;->z0(Landroidx/datastore/preferences/protobuf/p0;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_9
    check-cast p2, Landroidx/datastore/preferences/protobuf/p0;

    .line 121
    .line 122
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/j;->s0(Landroidx/datastore/preferences/protobuf/p0;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->b0(Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->l0(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide p1

    .line 152
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->n0(J)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->v0(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 169
    .line 170
    .line 171
    move-result-wide p1

    .line 172
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->Q0(J)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 179
    .line 180
    .line 181
    move-result-wide p1

    .line 182
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->x0(J)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j;->p0(F)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 199
    .line 200
    .line 201
    move-result-wide p1

    .line 202
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j;->h0(D)V

    .line 203
    .line 204
    .line 205
    :goto_0
    return-void

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Landroidx/datastore/preferences/protobuf/s;
    .locals 6

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/s;->r()Landroidx/datastore/preferences/protobuf/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h1;->l()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 16
    .line 17
    invoke-virtual {v4, v2}, Landroidx/datastore/preferences/protobuf/h1;->k(I)Ljava/util/Map$Entry;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v5}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v3, v4}, Landroidx/datastore/preferences/protobuf/s;->s(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h1;->n()Ljava/lang/Iterable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v3, v2}, Landroidx/datastore/preferences/protobuf/s;->s(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/s;->c:Z

    .line 76
    .line 77
    iput-boolean v1, v0, Landroidx/datastore/preferences/protobuf/s;->c:Z

    .line 78
    .line 79
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/s;->a()Landroidx/datastore/preferences/protobuf/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method e()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/s;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/s;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroidx/datastore/preferences/protobuf/b0;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h1;->i()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/b0;-><init>(Ljava/util/Iterator;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->i()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/s;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/datastore/preferences/protobuf/s;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/h1;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public f()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->l()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/h1;->k(I)Ljava/util/Map$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/s;->g(Ljava/util/Map$Entry;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    add-int/2addr v2, v3

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->n()Ljava/lang/Iterable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/s;->g(Ljava/util/Map$Entry;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v2, v1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return v2
.end method

.method public h()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->l()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x0

    .line 10
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 13
    .line 14
    invoke-virtual {v4, v1}, Landroidx/datastore/preferences/protobuf/h1;->k(I)Ljava/util/Map$Entry;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-static {v5}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/s;->d(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->n()Ljava/lang/Iterable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v3, v1}, Landroidx/datastore/preferences/protobuf/s;->d(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v2, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->l()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroidx/datastore/preferences/protobuf/h1;->k(I)Ljava/util/Map$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/s;->l(Ljava/util/Map$Entry;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->n()Ljava/lang/Iterable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/s;->l(Ljava/util/Map$Entry;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    return v1

    .line 56
    :cond_3
    const/4 v0, 0x1

    .line 57
    return v0
.end method

.method public n()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/s;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/s;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroidx/datastore/preferences/protobuf/b0;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h1;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/b0;-><init>(Ljava/util/Iterator;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public o()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/s;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->l()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/h1;->k(I)Ljava/util/Map$Entry;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    instance-of v3, v3, Landroidx/datastore/preferences/protobuf/w;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/datastore/preferences/protobuf/w;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/w;->D()V

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->q()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/s;->b:Z

    .line 48
    .line 49
    return-void
.end method

.method public p(Landroidx/datastore/preferences/protobuf/s;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/h1;->l()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/h1;->k(I)Ljava/util/Map$Entry;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/s;->q(Ljava/util/Map$Entry;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h1;->n()Ljava/lang/Iterable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/s;->q(Ljava/util/Map$Entry;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return-void
.end method

.method public s(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/s$b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p2, Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    check-cast p2, Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p0, p1, v1}, Landroidx/datastore/preferences/protobuf/s;->t(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object p2, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "Wrong object type used with protocol message reflection."

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s;->t(Landroidx/datastore/preferences/protobuf/s$b;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/s;->a:Landroidx/datastore/preferences/protobuf/h1;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/h1;->s(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void
.end method
