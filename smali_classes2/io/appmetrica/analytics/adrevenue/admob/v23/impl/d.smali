.class public final Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/ads/AdValue;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Lcom/google/android/gms/ads/ResponseInfo;Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;
    .locals 37

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    long-to-double v1, v1

    .line 8
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double/2addr v1, v3

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    invoke-static {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getFiniteDoubleOrDefault(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const-string v3, "PRECISE"

    .line 21
    .line 22
    const-string v4, ""

    .line 23
    .line 24
    const-string v5, "PUBLISHER_PROVIDED"

    .line 25
    .line 26
    const/4 v6, 0x3

    .line 27
    const-string v7, "ESTIMATED"

    .line 28
    .line 29
    const/4 v8, 0x2

    .line 30
    const-string v9, "UNKNOWN"

    .line 31
    .line 32
    const/4 v10, 0x1

    .line 33
    if-eqz p3, :cond_4

    .line 34
    .line 35
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/ads/ResponseInfo;->getLoadedAdapterResponseInfo()Lcom/google/android/gms/ads/AdapterResponseInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    if-eqz v11, :cond_4

    .line 40
    .line 41
    new-instance v24, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    .line 42
    .line 43
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 52
    .line 53
    .line 54
    move-result-object v14

    .line 55
    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdapterClassName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v16

    .line 59
    const/16 v18, 0x0

    .line 60
    .line 61
    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceInstanceId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v19

    .line 65
    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceInstanceName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v20

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    move-object/from16 v21, v9

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    if-ne v1, v10, :cond_1

    .line 79
    .line 80
    move-object/from16 v21, v7

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    if-ne v1, v8, :cond_2

    .line 84
    .line 85
    move-object/from16 v21, v5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    if-ne v1, v6, :cond_3

    .line 89
    .line 90
    move-object/from16 v21, v3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    move-object/from16 v21, v4

    .line 94
    .line 95
    :goto_0
    new-instance v1, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/b;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/b;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/16 v23, 0x1

    .line 101
    .line 102
    move-object/from16 v12, v24

    .line 103
    .line 104
    move-object/from16 v15, p1

    .line 105
    .line 106
    move-object/from16 v17, p4

    .line 107
    .line 108
    move-object/from16 v22, v1

    .line 109
    .line 110
    invoke-direct/range {v12 .. v23}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 111
    .line 112
    .line 113
    return-object v24

    .line 114
    :cond_4
    new-instance v11, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    .line 115
    .line 116
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 117
    .line 118
    .line 119
    move-result-object v26

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 125
    .line 126
    .line 127
    move-result-object v27

    .line 128
    const/16 v29, 0x0

    .line 129
    .line 130
    const/16 v31, 0x0

    .line 131
    .line 132
    const/16 v32, 0x0

    .line 133
    .line 134
    const/16 v33, 0x0

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    move-object/from16 v34, v9

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    if-ne v1, v10, :cond_6

    .line 146
    .line 147
    move-object/from16 v34, v7

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    if-ne v1, v8, :cond_7

    .line 151
    .line 152
    move-object/from16 v34, v5

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    if-ne v1, v6, :cond_8

    .line 156
    .line 157
    move-object/from16 v34, v3

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    move-object/from16 v34, v4

    .line 161
    .line 162
    :goto_1
    new-instance v1, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/c;

    .line 163
    .line 164
    invoke-direct {v1, v0}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/c;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/16 v36, 0x1

    .line 168
    .line 169
    move-object/from16 v25, v11

    .line 170
    .line 171
    move-object/from16 v28, p1

    .line 172
    .line 173
    move-object/from16 v30, p4

    .line 174
    .line 175
    move-object/from16 v35, v1

    .line 176
    .line 177
    invoke-direct/range {v25 .. v36}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 178
    .line 179
    .line 180
    return-object v11
.end method
