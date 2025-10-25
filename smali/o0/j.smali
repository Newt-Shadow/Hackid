.class public final Lo0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/j$a;
    }
.end annotation


# static fields
.field public static final a:Lo0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo0/j;

    invoke-direct {v0}, Lo0/j;-><init>()V

    sput-object v0, Lo0/j;->a:Lo0/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Ljava/lang/String;Ln0/h;Lo0/c;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ln0/h;->g0()Ln0/h$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lo0/j$a;->a:[I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    :goto_0
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    :pswitch_0
    new-instance p1, Lxc/i;

    .line 23
    .line 24
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :pswitch_1
    new-instance p1, Lj0/d;

    .line 29
    .line 30
    const-string p2, "Value not set."

    .line 31
    .line 32
    invoke-direct {p1, p2, v2, v1, v2}, Lj0/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :pswitch_2
    invoke-static {p1}, Lo0/h;->b(Ljava/lang/String;)Lo0/f$a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2}, Ln0/h;->Y()Landroidx/datastore/preferences/protobuf/g;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/g;->B()[B

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "value.bytes.toByteArray()"

    .line 49
    .line 50
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1, p2}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_3
    invoke-static {p1}, Lo0/h;->h(Ljava/lang/String;)Lo0/f$a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2}, Ln0/h;->f0()Ln0/g;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ln0/g;->T()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v0, "value.stringSet.stringsList"

    .line 71
    .line 72
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast p2, Ljava/lang/Iterable;

    .line 76
    .line 77
    invoke-static {p2}, Lyc/m;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p3, p1, p2}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_4
    invoke-static {p1}, Lo0/h;->g(Ljava/lang/String;)Lo0/f$a;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2}, Ln0/h;->e0()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string v0, "value.string"

    .line 94
    .line 95
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p1, p2}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_5
    invoke-static {p1}, Lo0/h;->f(Ljava/lang/String;)Lo0/f$a;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2}, Ln0/h;->d0()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p3, p1, p2}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_6
    invoke-static {p1}, Lo0/h;->e(Ljava/lang/String;)Lo0/f$a;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2}, Ln0/h;->c0()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p3, p1, p2}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :pswitch_7
    invoke-static {p1}, Lo0/h;->c(Ljava/lang/String;)Lo0/f$a;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p2}, Ln0/h;->a0()D

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p3, p1, p2}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :pswitch_8
    invoke-static {p1}, Lo0/h;->d(Ljava/lang/String;)Lo0/f$a;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p2}, Ln0/h;->b0()F

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p3, p1, p2}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :pswitch_9
    invoke-static {p1}, Lo0/h;->a(Ljava/lang/String;)Lo0/f$a;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p2}, Ln0/h;->X()Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p3, p1, p2}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :goto_1
    return-void

    .line 182
    :pswitch_a
    new-instance p1, Lj0/d;

    .line 183
    .line 184
    const-string p2, "Value case is null."

    .line 185
    .line 186
    invoke-direct {p1, p2, v2, v1, v2}, Lj0/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    .line 188
    .line 189
    throw p1

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final f(Ljava/lang/Object;)Ln0/h;
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ln0/h;->h0()Ln0/h$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Ln0/h$a;->r(Z)Ln0/h$a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "newBuilder().setBoolean(value).build()"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Ln0/h;

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {}, Ln0/h;->h0()Ln0/h$a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast p1, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {v0, p1}, Ln0/h$a;->v(F)Ln0/h$a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "newBuilder().setFloat(value).build()"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast p1, Ln0/h;

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-static {}, Ln0/h;->h0()Ln0/h$a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast p1, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    invoke-virtual {v0, v1, v2}, Ln0/h$a;->u(D)Ln0/h$a;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "newBuilder().setDouble(value).build()"

    .line 86
    .line 87
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    check-cast p1, Ln0/h;

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-static {}, Ln0/h;->h0()Ln0/h$a;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast p1, Ljava/lang/Number;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {v0, p1}, Ln0/h$a;->w(I)Ln0/h$a;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "newBuilder().setInteger(value).build()"

    .line 117
    .line 118
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    check-cast p1, Ln0/h;

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-static {}, Ln0/h;->h0()Ln0/h$a;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast p1, Ljava/lang/Number;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    invoke-virtual {v0, v1, v2}, Ln0/h$a;->x(J)Ln0/h$a;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string v0, "newBuilder().setLong(value).build()"

    .line 148
    .line 149
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    check-cast p1, Ln0/h;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    .line 156
    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    invoke-static {}, Ln0/h;->h0()Ln0/h$a;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast p1, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Ln0/h$a;->y(Ljava/lang/String;)Ln0/h$a;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string v0, "newBuilder().setString(value).build()"

    .line 174
    .line 175
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    check-cast p1, Ln0/h;

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_5
    instance-of v0, p1, Ljava/util/Set;

    .line 182
    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    invoke-static {}, Ln0/h;->h0()Ln0/h$a;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {}, Ln0/g;->U()Ln0/g$a;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string v2, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>"

    .line 194
    .line 195
    invoke-static {p1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    check-cast p1, Ljava/util/Set;

    .line 199
    .line 200
    invoke-virtual {v1, p1}, Ln0/g$a;->r(Ljava/lang/Iterable;)Ln0/g$a;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v0, p1}, Ln0/h$a;->z(Ln0/g$a;)Ln0/h$a;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string v0, "newBuilder().setStringSe\u2026                ).build()"

    .line 213
    .line 214
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    check-cast p1, Ln0/h;

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_6
    instance-of v0, p1, [B

    .line 221
    .line 222
    if-eqz v0, :cond_7

    .line 223
    .line 224
    invoke-static {}, Ln0/h;->h0()Ln0/h$a;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast p1, [B

    .line 229
    .line 230
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/g;->m([B)Landroidx/datastore/preferences/protobuf/g;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v0, p1}, Ln0/h$a;->t(Landroidx/datastore/preferences/protobuf/g;)Ln0/h$a;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    const-string v0, "newBuilder().setBytes(By\u2026.copyFrom(value)).build()"

    .line 243
    .line 244
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    check-cast p1, Ln0/h;

    .line 248
    .line 249
    :goto_0
    return-object p1

    .line 250
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 251
    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v2, "PreferencesSerializer does not support type: "

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo0/j;->e()Lo0/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b(Laf/f;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object p2, Ln0/d;->a:Ln0/d$a;

    .line 2
    .line 3
    invoke-interface {p1}, Laf/f;->S0()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ln0/d$a;->a(Ljava/io/InputStream;)Ln0/f;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    new-array p2, p2, [Lo0/f$b;

    .line 13
    .line 14
    invoke-static {p2}, Lo0/g;->b([Lo0/f$b;)Lo0/c;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1}, Ln0/f;->R()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "preferencesProto.preferencesMap"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ln0/h;

    .line 58
    .line 59
    sget-object v2, Lo0/j;->a:Lo0/j;

    .line 60
    .line 61
    const-string v3, "name"

    .line 62
    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v3, "value"

    .line 67
    .line 68
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v1, v0, p2}, Lo0/j;->d(Ljava/lang/String;Ln0/h;Lo0/c;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Lo0/f;->d()Lo0/f;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Laf/e;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo0/f;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lo0/j;->g(Lo0/f;Laf/e;Lad/e;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e()Lo0/f;
    .locals 1

    .line 1
    invoke-static {}, Lo0/g;->a()Lo0/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g(Lo0/f;Laf/e;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lo0/f;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Ln0/f;->U()Ln0/f$a;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lo0/f$a;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1}, Lo0/f$a;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {p0, v0}, Lo0/j;->f(Ljava/lang/Object;)Ln0/h;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p3, v1, v0}, Ln0/f$a;->r(Ljava/lang/String;Ln0/h;)Ln0/f$a;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/w$a;->j()Landroidx/datastore/preferences/protobuf/w;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ln0/f;

    .line 56
    .line 57
    invoke-interface {p2}, Laf/e;->P0()Ljava/io/OutputStream;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/a;->h(Ljava/io/OutputStream;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 65
    .line 66
    return-object p1
.end method
