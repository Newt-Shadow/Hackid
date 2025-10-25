.class public final Lio/appmetrica/analytics/impl/ch;
.super Lio/appmetrica/analytics/impl/Pg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/ue;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public final d:Lio/appmetrica/analytics/impl/G2;

.field public final e:Lio/appmetrica/analytics/impl/e2;

.field public final f:Lio/appmetrica/analytics/impl/z2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ue;)V
    .locals 9

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/V1;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Bm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/Cm;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Cm;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/impl/G2;

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lio/appmetrica/analytics/impl/G2;-><init>(Landroid/content/Context;)V

    new-instance v7, Lio/appmetrica/analytics/impl/e2;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/e2;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/z2;

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lio/appmetrica/analytics/impl/z2;-><init>(Landroid/content/Context;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 5
    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/impl/ch;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ue;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/G2;Lio/appmetrica/analytics/impl/e2;Lio/appmetrica/analytics/impl/z2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ue;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/G2;Lio/appmetrica/analytics/impl/e2;Lio/appmetrica/analytics/impl/z2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pg;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 7
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ch;->b:Lio/appmetrica/analytics/impl/ue;

    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ch;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 9
    iput-object p4, p0, Lio/appmetrica/analytics/impl/ch;->d:Lio/appmetrica/analytics/impl/G2;

    .line 10
    iput-object p5, p0, Lio/appmetrica/analytics/impl/ch;->e:Lio/appmetrica/analytics/impl/e2;

    .line 11
    iput-object p6, p0, Lio/appmetrica/analytics/impl/ch;->f:Lio/appmetrica/analytics/impl/z2;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/o5;->b:Lio/appmetrica/analytics/impl/h5;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/h5;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/do;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/o5;->w()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    iget-object v1, p0, Lio/appmetrica/analytics/impl/ch;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 23
    .line 24
    invoke-interface {v1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lio/appmetrica/analytics/impl/V1;

    .line 29
    .line 30
    iget-object v2, v1, Lio/appmetrica/analytics/impl/V1;->a:Ljava/util/List;

    .line 31
    .line 32
    iget-object v3, v1, Lio/appmetrica/analytics/impl/V1;->b:Lio/appmetrica/analytics/impl/F2;

    .line 33
    .line 34
    iget-object v4, p0, Lio/appmetrica/analytics/impl/ch;->d:Lio/appmetrica/analytics/impl/G2;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const/16 v5, 0x1c

    .line 40
    .line 41
    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, 0x0

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    iget-object v5, v4, Lio/appmetrica/analytics/impl/G2;->a:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v4, v4, Lio/appmetrica/analytics/impl/G2;->b:Lio/appmetrica/analytics/impl/e2;

    .line 51
    .line 52
    invoke-static {v5, v4}, Lio/appmetrica/analytics/impl/C2;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/e2;)Lio/appmetrica/analytics/impl/F2;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v4, v6

    .line 58
    :goto_0
    iget-object v5, v1, Lio/appmetrica/analytics/impl/V1;->c:Ljava/util/List;

    .line 59
    .line 60
    iget-object v7, p0, Lio/appmetrica/analytics/impl/ch;->f:Lio/appmetrica/analytics/impl/z2;

    .line 61
    .line 62
    iget-object v7, v7, Lio/appmetrica/analytics/impl/z2;->a:Landroid/location/LocationManager;

    .line 63
    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    new-instance v9, Lio/appmetrica/analytics/impl/y2;

    .line 69
    .line 70
    invoke-direct {v9}, Lio/appmetrica/analytics/impl/y2;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v10, "getting available providers"

    .line 74
    .line 75
    const-string v11, "location manager"

    .line 76
    .line 77
    invoke-static {v7, v10, v11, v8, v9}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafelyOrDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Ljava/util/List;

    .line 82
    .line 83
    iget-object v8, p0, Lio/appmetrica/analytics/impl/ch;->b:Lio/appmetrica/analytics/impl/ue;

    .line 84
    .line 85
    iget-object v9, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 86
    .line 87
    iget-object v9, v9, Lio/appmetrica/analytics/impl/o5;->a:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v8, Lio/appmetrica/analytics/impl/Oi;

    .line 93
    .line 94
    new-instance v10, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 95
    .line 96
    invoke-direct {v10}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-direct {v8, v9, v10}, Lio/appmetrica/analytics/impl/Oi;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/Oi;->a()Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {v8, v2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->areCollectionsEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_1

    .line 111
    .line 112
    move-object v8, v6

    .line 113
    :cond_1
    if-nez v8, :cond_2

    .line 114
    .line 115
    invoke-static {v3, v4}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_2

    .line 120
    .line 121
    invoke-static {v5, v7}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->areCollectionsEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_2

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    new-instance v6, Lio/appmetrica/analytics/impl/V1;

    .line 129
    .line 130
    if-nez v8, :cond_3

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    move-object v2, v8

    .line 134
    :goto_1
    invoke-direct {v6, v2, v4, v7}, Lio/appmetrica/analytics/impl/V1;-><init>(Ljava/util/List;Lio/appmetrica/analytics/impl/F2;Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    if-nez v6, :cond_4

    .line 138
    .line 139
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/o5;->z()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 146
    .line 147
    iget-object v2, v1, Lio/appmetrica/analytics/impl/V1;->a:Ljava/util/List;

    .line 148
    .line 149
    iget-object v3, v1, Lio/appmetrica/analytics/impl/V1;->b:Lio/appmetrica/analytics/impl/F2;

    .line 150
    .line 151
    iget-object v4, p0, Lio/appmetrica/analytics/impl/ch;->e:Lio/appmetrica/analytics/impl/e2;

    .line 152
    .line 153
    iget-object v1, v1, Lio/appmetrica/analytics/impl/V1;->c:Ljava/util/List;

    .line 154
    .line 155
    invoke-static {p1, v2, v3, v4, v1}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Ljava/util/Collection;Lio/appmetrica/analytics/impl/F2;Lio/appmetrica/analytics/impl/e2;Ljava/util/List;)Lio/appmetrica/analytics/impl/e6;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object v1, v0, Lio/appmetrica/analytics/impl/v9;->c:Lio/appmetrica/analytics/impl/Ek;

    .line 160
    .line 161
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ek;->b(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 166
    .line 167
    invoke-static {v1, v2, v3}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;J)Lio/appmetrica/analytics/impl/Gk;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, v0, Lio/appmetrica/analytics/impl/v9;->j:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    .line 175
    .line 176
    invoke-interface {p1}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeSeconds()J

    .line 177
    .line 178
    .line 179
    move-result-wide v1

    .line 180
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/v9;->l:J

    .line 181
    .line 182
    iget-object p1, v0, Lio/appmetrica/analytics/impl/v9;->a:Lio/appmetrica/analytics/impl/Ue;

    .line 183
    .line 184
    invoke-virtual {p1, v1, v2}, Lio/appmetrica/analytics/impl/Ue;->a(J)Lio/appmetrica/analytics/impl/Ue;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ve;->b()V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 193
    .line 194
    iget-object v1, v6, Lio/appmetrica/analytics/impl/V1;->a:Ljava/util/List;

    .line 195
    .line 196
    iget-object v2, v6, Lio/appmetrica/analytics/impl/V1;->b:Lio/appmetrica/analytics/impl/F2;

    .line 197
    .line 198
    iget-object v3, p0, Lio/appmetrica/analytics/impl/ch;->e:Lio/appmetrica/analytics/impl/e2;

    .line 199
    .line 200
    iget-object v4, v6, Lio/appmetrica/analytics/impl/V1;->c:Ljava/util/List;

    .line 201
    .line 202
    invoke-static {p1, v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Ljava/util/Collection;Lio/appmetrica/analytics/impl/F2;Lio/appmetrica/analytics/impl/e2;Ljava/util/List;)Lio/appmetrica/analytics/impl/e6;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object v1, v0, Lio/appmetrica/analytics/impl/v9;->c:Lio/appmetrica/analytics/impl/Ek;

    .line 207
    .line 208
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ek;->b(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 213
    .line 214
    invoke-static {v1, v2, v3}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;J)Lio/appmetrica/analytics/impl/Gk;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, v0, Lio/appmetrica/analytics/impl/v9;->j:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    .line 222
    .line 223
    invoke-interface {p1}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeSeconds()J

    .line 224
    .line 225
    .line 226
    move-result-wide v1

    .line 227
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/v9;->l:J

    .line 228
    .line 229
    iget-object p1, v0, Lio/appmetrica/analytics/impl/v9;->a:Lio/appmetrica/analytics/impl/Ue;

    .line 230
    .line 231
    invoke-virtual {p1, v1, v2}, Lio/appmetrica/analytics/impl/Ue;->a(J)Lio/appmetrica/analytics/impl/Ue;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ve;->b()V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lio/appmetrica/analytics/impl/ch;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 239
    .line 240
    invoke-interface {p1, v6}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_5
    :goto_3
    const/4 p1, 0x0

    .line 244
    return p1
.end method
