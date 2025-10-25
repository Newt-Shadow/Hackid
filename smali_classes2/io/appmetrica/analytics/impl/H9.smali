.class public abstract Lio/appmetrica/analytics/impl/H9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/EnumSet;

.field public static final c:Ljava/util/EnumSet;

.field public static final d:Ljava/util/EnumSet;

.field public static final e:Ljava/util/EnumSet;

.field public static final f:Ljava/util/EnumSet;

.field public static final g:Ljava/util/EnumSet;

.field public static final h:Ljava/util/EnumSet;

.field public static final i:Ljava/util/List;

.field public static final j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->u:Lio/appmetrica/analytics/impl/nb;

    .line 2
    .line 3
    const/16 v0, 0x1704

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    sget-object v3, Lio/appmetrica/analytics/impl/nb;->v:Lio/appmetrica/analytics/impl/nb;

    .line 10
    .line 11
    const/16 v0, 0x1708

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v1, Lio/appmetrica/analytics/impl/nb;->t:Lio/appmetrica/analytics/impl/nb;

    .line 18
    .line 19
    const/16 v0, 0x1703

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    sget-object v14, Lio/appmetrica/analytics/impl/nb;->r:Lio/appmetrica/analytics/impl/nb;

    .line 26
    .line 27
    const/16 v0, 0x1701

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->s:Lio/appmetrica/analytics/impl/nb;

    .line 34
    .line 35
    const/16 v8, 0x1702

    .line 36
    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    sget-object v22, Lio/appmetrica/analytics/impl/nb;->y:Lio/appmetrica/analytics/impl/nb;

    .line 42
    .line 43
    const/16 v9, 0x1750

    .line 44
    .line 45
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    filled-new-array/range {v4 .. v9}, [Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    sput-object v4, Lio/appmetrica/analytics/impl/H9;->a:Ljava/util/Set;

    .line 58
    .line 59
    sget-object v4, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 60
    .line 61
    sget-object v13, Lio/appmetrica/analytics/impl/nb;->n:Lio/appmetrica/analytics/impl/nb;

    .line 62
    .line 63
    move-object v11, v13

    .line 64
    sget-object v24, Lio/appmetrica/analytics/impl/nb;->o:Lio/appmetrica/analytics/impl/nb;

    .line 65
    .line 66
    move-object/from16 v15, v24

    .line 67
    .line 68
    sget-object v25, Lio/appmetrica/analytics/impl/nb;->p:Lio/appmetrica/analytics/impl/nb;

    .line 69
    .line 70
    move-object/from16 v16, v25

    .line 71
    .line 72
    sget-object v26, Lio/appmetrica/analytics/impl/nb;->q:Lio/appmetrica/analytics/impl/nb;

    .line 73
    .line 74
    move-object/from16 v17, v26

    .line 75
    .line 76
    sget-object v27, Lio/appmetrica/analytics/impl/nb;->z:Lio/appmetrica/analytics/impl/nb;

    .line 77
    .line 78
    sget-object v30, Lio/appmetrica/analytics/impl/nb;->x:Lio/appmetrica/analytics/impl/nb;

    .line 79
    .line 80
    move-object/from16 v5, v30

    .line 81
    .line 82
    sget-object v12, Lio/appmetrica/analytics/impl/nb;->D:Lio/appmetrica/analytics/impl/nb;

    .line 83
    .line 84
    move-object/from16 v23, v13

    .line 85
    .line 86
    move-object/from16 v28, v30

    .line 87
    .line 88
    move-object/from16 v29, v12

    .line 89
    .line 90
    filled-new-array/range {v23 .. v29}, [Lio/appmetrica/analytics/impl/nb;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {v4, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    sput-object v4, Lio/appmetrica/analytics/impl/H9;->b:Ljava/util/EnumSet;

    .line 99
    .line 100
    sget-object v4, Lio/appmetrica/analytics/impl/nb;->f:Lio/appmetrica/analytics/impl/nb;

    .line 101
    .line 102
    invoke-static {v4, v14}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    sput-object v4, Lio/appmetrica/analytics/impl/H9;->c:Ljava/util/EnumSet;

    .line 107
    .line 108
    sget-object v4, Lio/appmetrica/analytics/impl/nb;->w:Lio/appmetrica/analytics/impl/nb;

    .line 109
    .line 110
    sget-object v23, Lio/appmetrica/analytics/impl/nb;->e:Lio/appmetrica/analytics/impl/nb;

    .line 111
    .line 112
    move-object/from16 v6, v23

    .line 113
    .line 114
    sget-object v7, Lio/appmetrica/analytics/impl/nb;->h:Lio/appmetrica/analytics/impl/nb;

    .line 115
    .line 116
    sget-object v8, Lio/appmetrica/analytics/impl/nb;->m:Lio/appmetrica/analytics/impl/nb;

    .line 117
    .line 118
    sget-object v9, Lio/appmetrica/analytics/impl/nb;->k:Lio/appmetrica/analytics/impl/nb;

    .line 119
    .line 120
    sget-object v10, Lio/appmetrica/analytics/impl/nb;->l:Lio/appmetrica/analytics/impl/nb;

    .line 121
    .line 122
    sget-object v18, Lio/appmetrica/analytics/impl/nb;->d:Lio/appmetrica/analytics/impl/nb;

    .line 123
    .line 124
    move-object/from16 v31, v12

    .line 125
    .line 126
    move-object/from16 v12, v18

    .line 127
    .line 128
    sget-object v18, Lio/appmetrica/analytics/impl/nb;->i:Lio/appmetrica/analytics/impl/nb;

    .line 129
    .line 130
    move-object/from16 v32, v13

    .line 131
    .line 132
    move-object/from16 v13, v18

    .line 133
    .line 134
    sget-object v18, Lio/appmetrica/analytics/impl/nb;->j:Lio/appmetrica/analytics/impl/nb;

    .line 135
    .line 136
    move-object/from16 v33, v14

    .line 137
    .line 138
    move-object/from16 v14, v18

    .line 139
    .line 140
    sget-object v18, Lio/appmetrica/analytics/impl/nb;->A:Lio/appmetrica/analytics/impl/nb;

    .line 141
    .line 142
    sget-object v19, Lio/appmetrica/analytics/impl/nb;->B:Lio/appmetrica/analytics/impl/nb;

    .line 143
    .line 144
    sget-object v20, Lio/appmetrica/analytics/impl/nb;->E:Lio/appmetrica/analytics/impl/nb;

    .line 145
    .line 146
    sget-object v21, Lio/appmetrica/analytics/impl/nb;->F:Lio/appmetrica/analytics/impl/nb;

    .line 147
    .line 148
    filled-new-array/range {v0 .. v22}, [Lio/appmetrica/analytics/impl/nb;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    move-object/from16 v1, v33

    .line 153
    .line 154
    invoke-static {v1, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sput-object v0, Lio/appmetrica/analytics/impl/H9;->d:Ljava/util/EnumSet;

    .line 159
    .line 160
    invoke-static/range {v23 .. v23}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sput-object v0, Lio/appmetrica/analytics/impl/H9;->e:Ljava/util/EnumSet;

    .line 165
    .line 166
    invoke-static/range {v23 .. v23}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Lio/appmetrica/analytics/impl/H9;->f:Ljava/util/EnumSet;

    .line 171
    .line 172
    invoke-static/range {v30 .. v30}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    sput-object v0, Lio/appmetrica/analytics/impl/H9;->g:Ljava/util/EnumSet;

    .line 177
    .line 178
    sget-object v0, Lio/appmetrica/analytics/impl/nb;->g:Lio/appmetrica/analytics/impl/nb;

    .line 179
    .line 180
    move-object/from16 v2, v31

    .line 181
    .line 182
    move-object/from16 v1, v32

    .line 183
    .line 184
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sput-object v0, Lio/appmetrica/analytics/impl/H9;->h:Ljava/util/EnumSet;

    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const/16 v1, 0x1801

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const/16 v2, 0x1001

    .line 202
    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const/16 v3, 0x2020

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    sput-object v0, Lio/appmetrica/analytics/impl/H9;->i:Ljava/util/List;

    .line 222
    .line 223
    const/16 v0, 0x3002

    .line 224
    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    filled-new-array {v0}, [Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    sput-object v0, Lio/appmetrica/analytics/impl/H9;->j:Ljava/util/List;

    .line 238
    .line 239
    return-void
.end method
