.class public final Lio/appmetrica/analytics/impl/v9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ue;

.field public final b:Lio/appmetrica/analytics/impl/do;

.field public final c:Lio/appmetrica/analytics/impl/Ek;

.field public final d:Lio/appmetrica/analytics/impl/W6;

.field public final e:Lio/appmetrica/analytics/impl/Q8;

.field public final f:Lio/appmetrica/analytics/impl/wk;

.field public final g:Lio/appmetrica/analytics/impl/c0;

.field public final h:Lio/appmetrica/analytics/impl/c9;

.field public final i:Lio/appmetrica/analytics/impl/q5;

.field public final j:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

.field public final k:I

.field public l:J

.field public m:I


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ue;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Ek;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/c0;Lio/appmetrica/analytics/impl/Q8;Lio/appmetrica/analytics/impl/wk;ILio/appmetrica/analytics/impl/q5;Lio/appmetrica/analytics/impl/c9;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/v9;->a:Lio/appmetrica/analytics/impl/Ue;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/v9;->b:Lio/appmetrica/analytics/impl/do;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/v9;->c:Lio/appmetrica/analytics/impl/Ek;

    .line 9
    .line 10
    iput-object p4, p0, Lio/appmetrica/analytics/impl/v9;->d:Lio/appmetrica/analytics/impl/W6;

    .line 11
    .line 12
    iput-object p5, p0, Lio/appmetrica/analytics/impl/v9;->g:Lio/appmetrica/analytics/impl/c0;

    .line 13
    .line 14
    iput-object p6, p0, Lio/appmetrica/analytics/impl/v9;->e:Lio/appmetrica/analytics/impl/Q8;

    .line 15
    .line 16
    iput-object p7, p0, Lio/appmetrica/analytics/impl/v9;->f:Lio/appmetrica/analytics/impl/wk;

    .line 17
    .line 18
    iput p8, p0, Lio/appmetrica/analytics/impl/v9;->k:I

    .line 19
    .line 20
    iput-object p10, p0, Lio/appmetrica/analytics/impl/v9;->h:Lio/appmetrica/analytics/impl/c9;

    .line 21
    .line 22
    iput-object p11, p0, Lio/appmetrica/analytics/impl/v9;->j:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    .line 23
    .line 24
    iput-object p9, p0, Lio/appmetrica/analytics/impl/v9;->i:Lio/appmetrica/analytics/impl/q5;

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ue;->h()J

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    iput-wide p2, p0, Lio/appmetrica/analytics/impl/v9;->l:J

    .line 31
    .line 32
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ue;->g()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lio/appmetrica/analytics/impl/v9;->m:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    iget-object v2, v0, Lio/appmetrica/analytics/impl/e6;->p:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v3, v1, Lio/appmetrica/analytics/impl/v9;->f:Lio/appmetrica/analytics/impl/wk;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v4, Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object v3, v3, Lio/appmetrica/analytics/impl/wk;->b:Ljava/util/Map;

    .line 17
    .line 18
    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lio/appmetrica/analytics/impl/v9;->a:Lio/appmetrica/analytics/impl/Ue;

    .line 25
    .line 26
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Ue;->i()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/e6;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Lio/appmetrica/analytics/impl/v9;->b:Lio/appmetrica/analytics/impl/do;

    .line 34
    .line 35
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/do;->b()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, v0, Lio/appmetrica/analytics/impl/e6;->o:Ljava/lang/Integer;

    .line 44
    .line 45
    iget-object v2, v1, Lio/appmetrica/analytics/impl/v9;->g:Lio/appmetrica/analytics/impl/c0;

    .line 46
    .line 47
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/c0;->a()Lio/appmetrica/analytics/impl/b0;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    iget-object v2, v1, Lio/appmetrica/analytics/impl/v9;->e:Lio/appmetrica/analytics/impl/Q8;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget v3, v0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 57
    .line 58
    invoke-static {v3}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v2, v2, Lio/appmetrica/analytics/impl/Q8;->b:Lio/appmetrica/analytics/impl/Pc;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Pc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lio/appmetrica/analytics/impl/P8;

    .line 69
    .line 70
    iget-object v11, v1, Lio/appmetrica/analytics/impl/v9;->d:Lio/appmetrica/analytics/impl/W6;

    .line 71
    .line 72
    invoke-interface {v2, v0}, Lio/appmetrica/analytics/impl/P8;->a(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/I8;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    iget v0, v0, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 77
    .line 78
    iget-object v12, v1, Lio/appmetrica/analytics/impl/v9;->h:Lio/appmetrica/analytics/impl/c9;

    .line 79
    .line 80
    new-instance v13, Lio/appmetrica/analytics/impl/t7;

    .line 81
    .line 82
    iget-object v3, v11, Lio/appmetrica/analytics/impl/W6;->g:Landroid/content/Context;

    .line 83
    .line 84
    iget-object v2, v11, Lio/appmetrica/analytics/impl/W6;->h:Lio/appmetrica/analytics/impl/o5;

    .line 85
    .line 86
    iget-object v2, v2, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 87
    .line 88
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    move-object v8, v2

    .line 93
    check-cast v8, Lio/appmetrica/analytics/impl/lh;

    .line 94
    .line 95
    move-object v2, v13

    .line 96
    move-object/from16 v4, p2

    .line 97
    .line 98
    move v5, v0

    .line 99
    move-object v6, v12

    .line 100
    invoke-direct/range {v2 .. v9}, Lio/appmetrica/analytics/impl/t7;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Gk;ILio/appmetrica/analytics/impl/c9;Lio/appmetrica/analytics/impl/I8;Lio/appmetrica/analytics/impl/lh;Lio/appmetrica/analytics/impl/b0;)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lio/appmetrica/analytics/impl/q7;

    .line 104
    .line 105
    iget-wide v3, v10, Lio/appmetrica/analytics/impl/Gk;->a:J

    .line 106
    .line 107
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    iget-object v3, v10, Lio/appmetrica/analytics/impl/Gk;->d:Lio/appmetrica/analytics/impl/Ik;

    .line 112
    .line 113
    iget-wide v4, v10, Lio/appmetrica/analytics/impl/Gk;->b:J

    .line 114
    .line 115
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v17

    .line 119
    iget-object v4, v13, Lio/appmetrica/analytics/impl/t7;->h:Lio/appmetrica/analytics/impl/e6;

    .line 120
    .line 121
    iget v4, v4, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 122
    .line 123
    invoke-static {v4}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    .line 124
    .line 125
    .line 126
    move-result-object v18

    .line 127
    sget-object v4, Lio/appmetrica/analytics/impl/H9;->g:Ljava/util/EnumSet;

    .line 128
    .line 129
    invoke-static {v0}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    xor-int/lit8 v0, v0, 0x1

    .line 138
    .line 139
    const-wide/16 v4, 0x0

    .line 140
    .line 141
    if-eqz v0, :cond_0

    .line 142
    .line 143
    iget-object v6, v12, Lio/appmetrica/analytics/impl/c9;->b:Lio/appmetrica/analytics/impl/do;

    .line 144
    .line 145
    monitor-enter v6

    .line 146
    :try_start_0
    iget-object v0, v6, Lio/appmetrica/analytics/impl/do;->a:Lio/appmetrica/analytics/impl/eo;

    .line 147
    .line 148
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/eo;->a()Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v7, "global_number"

    .line 153
    .line 154
    invoke-virtual {v0, v7, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit v6

    .line 159
    iget-object v0, v12, Lio/appmetrica/analytics/impl/c9;->b:Lio/appmetrica/analytics/impl/do;

    .line 160
    .line 161
    const-wide/16 v6, 0x1

    .line 162
    .line 163
    add-long/2addr v6, v4

    .line 164
    invoke-virtual {v0, v6, v7}, Lio/appmetrica/analytics/impl/do;->b(J)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    monitor-exit v6

    .line 170
    throw v0

    .line 171
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v19

    .line 175
    iget-wide v4, v10, Lio/appmetrica/analytics/impl/Gk;->c:J

    .line 176
    .line 177
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v20

    .line 181
    invoke-virtual {v13}, Lio/appmetrica/analytics/impl/t7;->a()Lio/appmetrica/analytics/impl/p7;

    .line 182
    .line 183
    .line 184
    move-result-object v21

    .line 185
    move-object v14, v2

    .line 186
    move-object/from16 v16, v3

    .line 187
    .line 188
    invoke-direct/range {v14 .. v21}, Lio/appmetrica/analytics/impl/q7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/Ik;Ljava/lang/Long;Lio/appmetrica/analytics/impl/nb;Ljava/lang/Long;Ljava/lang/Long;Lio/appmetrica/analytics/impl/p7;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v11, Lio/appmetrica/analytics/impl/W6;->l:Lio/appmetrica/analytics/impl/r7;

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/r7;->a(Lio/appmetrica/analytics/impl/q7;)Landroid/content/ContentValues;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v11, v0}, Lio/appmetrica/analytics/impl/W6;->a(Landroid/content/ContentValues;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v1, Lio/appmetrica/analytics/impl/v9;->i:Lio/appmetrica/analytics/impl/q5;

    .line 201
    .line 202
    iget-object v0, v0, Lio/appmetrica/analytics/impl/q5;->a:Lio/appmetrica/analytics/impl/vi;

    .line 203
    .line 204
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/vi;->h()V

    .line 205
    .line 206
    .line 207
    return-void
.end method
