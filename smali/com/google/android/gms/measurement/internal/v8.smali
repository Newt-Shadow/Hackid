.class final Lcom/google/android/gms/measurement/internal/v8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/w9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/w9;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/v8;->a:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v8;->b:Lcom/google/android/gms/measurement/internal/w9;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "app_id"

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/v8;->b:Lcom/google/android/gms/measurement/internal/w9;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/v8;->a:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-static {v3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v4, "name"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string v4, "origin"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v6}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    const-string v5, "value"

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static {v7}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 46
    .line 47
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_0

    .line 52
    .line 53
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "Conditional property not set since app measurement is disabled"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    new-instance v16, Lcom/google/android/gms/measurement/internal/ud;

    .line 70
    .line 71
    const-string v7, "triggered_timestamp"

    .line 72
    .line 73
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    move-object/from16 v5, v16

    .line 82
    .line 83
    move-object v10, v4

    .line 84
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/ud;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :try_start_0
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    const-string v6, "triggered_event_name"

    .line 98
    .line 99
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    const-string v6, "triggered_event_params"

    .line 104
    .line 105
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    const-wide/16 v12, 0x0

    .line 110
    .line 111
    const/4 v14, 0x1

    .line 112
    const/4 v15, 0x1

    .line 113
    move-object v11, v4

    .line 114
    invoke-virtual/range {v7 .. v15}, Lcom/google/android/gms/measurement/internal/yd;->R(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/g0;

    .line 115
    .line 116
    .line 117
    move-result-object v18

    .line 118
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    const-string v6, "timed_out_event_name"

    .line 127
    .line 128
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    const-string v6, "timed_out_event_params"

    .line 133
    .line 134
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    const-wide/16 v12, 0x0

    .line 139
    .line 140
    const/4 v14, 0x1

    .line 141
    const/4 v15, 0x1

    .line 142
    move-object v11, v4

    .line 143
    invoke-virtual/range {v7 .. v15}, Lcom/google/android/gms/measurement/internal/yd;->R(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/g0;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    const-string v5, "expired_event_name"

    .line 156
    .line 157
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    const-string v5, "expired_event_params"

    .line 162
    .line 163
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    const-wide/16 v12, 0x0

    .line 168
    .line 169
    const/4 v14, 0x1

    .line 170
    const/4 v15, 0x1

    .line 171
    move-object v11, v4

    .line 172
    invoke-virtual/range {v7 .. v15}, Lcom/google/android/gms/measurement/internal/yd;->R(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/g0;

    .line 173
    .line 174
    .line 175
    move-result-object v21
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    new-instance v5, Lcom/google/android/gms/measurement/internal/i;

    .line 177
    .line 178
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    const-string v1, "creation_timestamp"

    .line 183
    .line 184
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v11

    .line 188
    const/4 v13, 0x0

    .line 189
    const-string v1, "trigger_event_name"

    .line 190
    .line 191
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    const-string v1, "trigger_timeout"

    .line 196
    .line 197
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v19

    .line 201
    const-string v1, "time_to_live"

    .line 202
    .line 203
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v22

    .line 207
    move-object v7, v5

    .line 208
    move-object v9, v4

    .line 209
    move-object/from16 v10, v16

    .line 210
    .line 211
    move-object v15, v6

    .line 212
    move-wide/from16 v16, v19

    .line 213
    .line 214
    move-wide/from16 v19, v22

    .line 215
    .line 216
    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/measurement/internal/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ud;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/g0;JLcom/google/android/gms/measurement/internal/g0;JLcom/google/android/gms/measurement/internal/g0;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 220
    .line 221
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/vb;->d0(Lcom/google/android/gms/measurement/internal/i;)V

    .line 226
    .line 227
    .line 228
    :catch_0
    return-void
.end method
