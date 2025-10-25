.class public Lcom/yandex/metrica/j;
.super Lcom/yandex/metrica/YandexMetricaConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/j$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/lang/Boolean;

.field public final j:Ljava/lang/Boolean;

.field public final k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/metrica/YandexMetricaConfig;-><init>(Lcom/yandex/metrica/YandexMetricaConfig;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/j;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/j;->b:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/j;->e:Ljava/lang/Integer;

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/j;->f:Ljava/lang/Integer;

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/j;->g:Ljava/lang/Integer;

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/yandex/metrica/j;->h:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lcom/yandex/metrica/j;->i:Ljava/lang/Boolean;

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/j;->j:Ljava/lang/Boolean;

    .line 12
    iput-object p1, p0, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/yandex/metrica/j;->k:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/j$b;)V
    .locals 2

    .line 14
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->a(Lcom/yandex/metrica/j$b;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/YandexMetricaConfig;-><init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V

    .line 15
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->E(Lcom/yandex/metrica/j$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/j;->e:Ljava/lang/Integer;

    .line 16
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->G(Lcom/yandex/metrica/j$b;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    .line 18
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->I(Lcom/yandex/metrica/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/j;->a:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->K(Lcom/yandex/metrica/j$b;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/yandex/metrica/j;->b:Ljava/util/Map;

    .line 21
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->L(Lcom/yandex/metrica/j$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/j;->g:Ljava/lang/Integer;

    .line 22
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->M(Lcom/yandex/metrica/j$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/j;->f:Ljava/lang/Integer;

    .line 23
    iget-object v0, p1, Lcom/yandex/metrica/j$b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->N(Lcom/yandex/metrica/j$b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/j;->h:Ljava/util/Map;

    .line 25
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->O(Lcom/yandex/metrica/j$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/j;->i:Ljava/lang/Boolean;

    .line 26
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->q(Lcom/yandex/metrica/j$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/j;->j:Ljava/lang/Boolean;

    .line 27
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->u(Lcom/yandex/metrica/j$b;)V

    .line 28
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->x(Lcom/yandex/metrica/j$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/j;->k:Ljava/lang/Boolean;

    .line 29
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->y(Lcom/yandex/metrica/j$b;)Lcom/yandex/metrica/d;

    .line 30
    invoke-static {p1}, Lcom/yandex/metrica/j$b;->C(Lcom/yandex/metrica/j$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/j$b;Lcom/yandex/metrica/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/j;-><init>(Lcom/yandex/metrica/j$b;)V

    return-void
.end method

.method public static a(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/j$b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/j$b;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lcom/yandex/metrica/j$b;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->f(Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->z(I)Lcom/yandex/metrica/j$b;

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->w(Z)Lcom/yandex/metrica/j$b;

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->B(Z)Lcom/yandex/metrica/j$b;

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->c(Landroid/location/Location;)Lcom/yandex/metrica/j$b;

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->A(Z)Lcom/yandex/metrica/j$b;

    .line 100
    .line 101
    .line 102
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/yandex/metrica/j$b;->l()Lcom/yandex/metrica/j$b;

    .line 119
    .line 120
    .line 121
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->d(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/j$b;

    .line 132
    .line 133
    .line 134
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->j(Z)Lcom/yandex/metrica/j$b;

    .line 149
    .line 150
    .line 151
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->J(Z)Lcom/yandex/metrica/j$b;

    .line 166
    .line 167
    .line 168
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->v(I)Lcom/yandex/metrica/j$b;

    .line 183
    .line 184
    .line 185
    :cond_a
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_b

    .line 192
    .line 193
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_b

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/util/Map$Entry;

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Ljava/lang/String;

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v1, v3, v2}, Lcom/yandex/metrica/j$b;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_c

    .line 238
    .line 239
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->s(Ljava/lang/String;)Lcom/yandex/metrica/j$b;

    .line 242
    .line 243
    .line 244
    :cond_c
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_d

    .line 251
    .line 252
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->F(Z)Lcom/yandex/metrica/j$b;

    .line 259
    .line 260
    .line 261
    :cond_d
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_e

    .line 268
    .line 269
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->H(Z)Lcom/yandex/metrica/j$b;

    .line 276
    .line 277
    .line 278
    :cond_e
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_f

    .line 285
    .line 286
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/j$b;->t(Z)Lcom/yandex/metrica/j$b;

    .line 293
    .line 294
    .line 295
    :cond_f
    instance-of v0, p0, Lcom/yandex/metrica/j;

    .line 296
    .line 297
    if-eqz v0, :cond_12

    .line 298
    .line 299
    check-cast p0, Lcom/yandex/metrica/j;

    .line 300
    .line 301
    iget-object v0, p0, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    .line 302
    .line 303
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_10

    .line 308
    .line 309
    iget-object p0, p0, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    .line 310
    .line 311
    invoke-virtual {v1, p0}, Lcom/yandex/metrica/j$b;->h(Ljava/util/List;)Lcom/yandex/metrica/j$b;

    .line 312
    .line 313
    .line 314
    :cond_10
    const/4 p0, 0x0

    .line 315
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_11

    .line 320
    .line 321
    invoke-virtual {v1, p0}, Lcom/yandex/metrica/j$b;->e(Lcom/yandex/metrica/d;)Lcom/yandex/metrica/j$b;

    .line 322
    .line 323
    .line 324
    :cond_11
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    :cond_12
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lcom/yandex/metrica/j$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/j$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/yandex/metrica/j$b;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
