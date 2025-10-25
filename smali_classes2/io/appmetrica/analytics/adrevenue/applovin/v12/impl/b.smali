.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;


# instance fields
.field public final a:Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/a;

.field public final b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/a;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/b;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/a;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/b;->b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "AppLovin"

    return-object v0
.end method

.method public final varargs process([Ljava/lang/Object;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Lcom/applovin/mediation/MaxAd;

    .line 6
    .line 7
    const-class v3, Lcom/applovin/sdk/AppLovinSdk;

    .line 8
    .line 9
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->isArgumentsOfClasses([Ljava/lang/Object;[Ljava/lang/Class;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    invoke-static {v1, v3}, Lyc/g;->A([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_a

    .line 26
    .line 27
    check-cast v2, Lcom/applovin/mediation/MaxAd;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-static {v1, v4}, Lyc/g;->A([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_9

    .line 35
    .line 36
    check-cast v5, Lcom/applovin/sdk/AppLovinSdk;

    .line 37
    .line 38
    iget-object v6, v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/b;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/a;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_0
    move-object v10, v6

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object v7, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    .line 53
    .line 54
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    sget-object v6, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->NATIVE:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-object v7, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    .line 64
    .line 65
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    sget-object v6, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->BANNER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    sget-object v7, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    .line 75
    .line 76
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_4

    .line 81
    .line 82
    sget-object v6, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->REWARDED:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    sget-object v7, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    .line 86
    .line 87
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_5

    .line 92
    .line 93
    sget-object v6, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->INTERSTITIAL:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    sget-object v7, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    .line 97
    .line 98
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    sget-object v6, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->MREC:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    sget-object v6, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->OTHER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_1
    const/4 v6, 0x3

    .line 111
    new-array v6, v6, [Lxc/k;

    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/applovin/sdk/AppLovinSdk;->getConfiguration()Lcom/applovin/sdk/AppLovinSdkConfiguration;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-interface {v5}, Lcom/applovin/sdk/AppLovinSdkConfiguration;->getCountryCode()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    const-string v7, "countryCode"

    .line 122
    .line 123
    invoke-static {v7, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    aput-object v5, v6, v3

    .line 128
    .line 129
    const-string v5, "original_source"

    .line 130
    .line 131
    const-string v7, "ad-revenue-applovin-v12"

    .line 132
    .line 133
    invoke-static {v5, v7}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    aput-object v5, v6, v4

    .line 138
    .line 139
    invoke-interface {v2}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-eqz v5, :cond_7

    .line 144
    .line 145
    invoke-virtual {v5}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    if-nez v5, :cond_8

    .line 150
    .line 151
    :cond_7
    const-string v5, "null"

    .line 152
    .line 153
    :cond_8
    const-string v7, "original_ad_type"

    .line 154
    .line 155
    invoke-static {v7, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const/4 v7, 0x2

    .line 160
    aput-object v5, v6, v7

    .line 161
    .line 162
    invoke-static {v6}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v17

    .line 166
    invoke-interface {v2}, Lcom/applovin/mediation/MaxAd;->getRevenue()D

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    const-wide/16 v7, 0x0

    .line 171
    .line 172
    invoke-static {v5, v6, v7, v8}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getFiniteDoubleOrDefault(DD)D

    .line 173
    .line 174
    .line 175
    move-result-wide v5

    .line 176
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    const-string v5, "USD"

    .line 181
    .line 182
    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-interface {v2}, Lcom/applovin/mediation/MaxAd;->getNetworkName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    invoke-interface {v2}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    invoke-interface {v2}, Lcom/applovin/mediation/MaxAd;->getPlacement()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    invoke-interface {v2}, Lcom/applovin/mediation/MaxAd;->getNetworkPlacement()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    invoke-interface {v2}, Lcom/applovin/mediation/MaxAd;->getRevenuePrecision()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v16

    .line 206
    new-instance v2, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    .line 207
    .line 208
    const/4 v13, 0x0

    .line 209
    const/16 v18, 0x1

    .line 210
    .line 211
    const/16 v19, 0x20

    .line 212
    .line 213
    const/16 v20, 0x0

    .line 214
    .line 215
    move-object v7, v2

    .line 216
    invoke-direct/range {v7 .. v20}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 217
    .line 218
    .line 219
    iget-object v5, v0, Lio/appmetrica/analytics/adrevenue/applovin/v12/impl/b;->b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 220
    .line 221
    invoke-interface {v5}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getInternalClientModuleFacade()Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-interface {v5, v2}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;->reportAdRevenue(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v6, "Ad Revenue from AppLovin with values "

    .line 235
    .line 236
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, " was reported"

    .line 247
    .line 248
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    new-array v3, v3, [Ljava/lang/Object;

    .line 256
    .line 257
    invoke-virtual {v2, v1, v3}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    return v4

    .line 261
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    .line 262
    .line 263
    const-string v2, "null cannot be cast to non-null type com.applovin.sdk.AppLovinSdk"

    .line 264
    .line 265
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1

    .line 269
    :cond_a
    new-instance v1, Ljava/lang/NullPointerException;

    .line 270
    .line 271
    const-string v2, "null cannot be cast to non-null type com.applovin.mediation.MaxAd"

    .line 272
    .line 273
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v1
.end method
