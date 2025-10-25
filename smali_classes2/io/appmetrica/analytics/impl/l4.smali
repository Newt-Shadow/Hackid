.class public final Lio/appmetrica/analytics/impl/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/mm;

.field public final b:Lio/appmetrica/analytics/impl/O;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/mm;Lio/appmetrica/analytics/impl/O;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/l4;->a:Lio/appmetrica/analytics/impl/mm;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/l4;->b:Lio/appmetrica/analytics/impl/O;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/k4;

    .line 4
    .line 5
    iget-object v2, v1, Lio/appmetrica/analytics/impl/l4;->a:Lio/appmetrica/analytics/impl/mm;

    .line 6
    .line 7
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/mm;->e()Lio/appmetrica/analytics/impl/Ql;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v1, Lio/appmetrica/analytics/impl/l4;->b:Lio/appmetrica/analytics/impl/O;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    new-instance v4, Lio/appmetrica/analytics/impl/Wd;

    .line 15
    .line 16
    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Wd;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/O;->a(Lio/appmetrica/analytics/impl/Fi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    .line 20
    .line 21
    .line 22
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v3

    .line 24
    iget-object v3, v2, Lio/appmetrica/analytics/impl/Ql;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v3}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v5, v2, Lio/appmetrica/analytics/impl/Ql;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v5}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v6, v2, Lio/appmetrica/analytics/impl/Ql;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v6}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-object v7, v2, Lio/appmetrica/analytics/impl/Ql;->j:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v7}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v8, v2, Lio/appmetrica/analytics/impl/Ql;->i:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v8}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    iget-object v9, v2, Lio/appmetrica/analytics/impl/Ql;->k:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v9}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-static {v9}, Lio/appmetrica/analytics/impl/sb;->a(Ljava/util/HashMap;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-static {v9}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/impl/sb;->a(Ljava/util/HashMap;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-static {v10}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    new-instance v11, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 77
    .line 78
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 83
    .line 84
    if-nez v12, :cond_0

    .line 85
    .line 86
    const/4 v12, 0x0

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 93
    .line 94
    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 95
    .line 96
    :goto_0
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 101
    .line 102
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    iget-object v15, v15, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {v11, v12, v14, v15}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v12, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 112
    .line 113
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 118
    .line 119
    if-nez v14, :cond_1

    .line 120
    .line 121
    const/4 v14, 0x0

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 128
    .line 129
    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 130
    .line 131
    :goto_1
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    iget-object v15, v15, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 136
    .line 137
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    .line 142
    .line 143
    invoke-direct {v12, v14, v15, v13}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v14, Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 147
    .line 148
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 153
    .line 154
    if-nez v13, :cond_2

    .line 155
    .line 156
    const/4 v13, 0x0

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 163
    .line 164
    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 165
    .line 166
    :goto_2
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    iget-object v15, v15, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    .line 171
    .line 172
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    iget-object v4, v4, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    .line 177
    .line 178
    invoke-direct {v14, v13, v15, v4}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v4, v2, Lio/appmetrica/analytics/impl/Ql;->h:Ljava/util/Map;

    .line 182
    .line 183
    invoke-static {v4}, Lio/appmetrica/analytics/impl/sb;->a(Ljava/util/Map;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-static {v4}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    invoke-static {}, Lio/appmetrica/analytics/impl/on;->a()J

    .line 192
    .line 193
    .line 194
    move-result-wide v15

    .line 195
    move-object/from16 v20, v14

    .line 196
    .line 197
    move-wide v14, v15

    .line 198
    move-object/from16 p1, v13

    .line 199
    .line 200
    move-wide/from16 v21, v14

    .line 201
    .line 202
    iget-wide v13, v2, Lio/appmetrica/analytics/impl/Ql;->o:J

    .line 203
    .line 204
    iget-object v4, v2, Lio/appmetrica/analytics/impl/Ql;->A:Lio/appmetrica/analytics/impl/om;

    .line 205
    .line 206
    iget v4, v4, Lio/appmetrica/analytics/impl/om;->a:I

    .line 207
    .line 208
    move-object v15, v11

    .line 209
    move-object/from16 v23, v12

    .line 210
    .line 211
    int-to-long v11, v4

    .line 212
    add-long v16, v13, v11

    .line 213
    .line 214
    iget-object v2, v2, Lio/appmetrica/analytics/impl/Ql;->n:Lio/appmetrica/analytics/impl/C4;

    .line 215
    .line 216
    iget-object v2, v2, Lio/appmetrica/analytics/impl/C4;->f:Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-static {v2}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/ha;

    .line 219
    .line 220
    .line 221
    move-result-object v18

    .line 222
    new-instance v2, Landroid/os/Bundle;

    .line 223
    .line 224
    move-object/from16 v19, v2

    .line 225
    .line 226
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    .line 228
    .line 229
    move-object v2, v0

    .line 230
    move-object v4, v5

    .line 231
    move-object v5, v6

    .line 232
    move-object v6, v7

    .line 233
    move-object v7, v8

    .line 234
    move-object v8, v9

    .line 235
    move-object v9, v10

    .line 236
    move-object v10, v15

    .line 237
    move-object/from16 v11, v23

    .line 238
    .line 239
    move-object/from16 v12, v20

    .line 240
    .line 241
    move-object/from16 v13, p1

    .line 242
    .line 243
    move-wide/from16 v14, v21

    .line 244
    .line 245
    invoke-direct/range {v2 .. v19}, Lio/appmetrica/analytics/impl/k4;-><init>(Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;JJLio/appmetrica/analytics/impl/ha;Landroid/os/Bundle;)V

    .line 246
    .line 247
    .line 248
    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    monitor-exit v3

    .line 251
    throw v0
.end method
