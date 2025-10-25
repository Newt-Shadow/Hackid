.class Lcom/yandex/metrica/impl/ob/K3$c;
.super Lcom/yandex/metrica/impl/ob/K3$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/Md;

.field private final c:Lcom/yandex/metrica/impl/ob/c9;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/K3$j;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Md;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->e()Lcom/yandex/metrica/impl/ob/I3;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/I3;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Md;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->f()Lcom/yandex/metrica/impl/ob/c9;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 10

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/e6;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 4
    .line 5
    const-string v2, "background"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/e6;-><init>(Lcom/yandex/metrica/impl/ob/c9;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e6;->h()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const-wide/high16 v6, -0x8000000000000000L

    .line 19
    .line 20
    if-nez v1, :cond_4

    .line 21
    .line 22
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Md;->c(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    cmp-long v1, v8, v2

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v8, v9}, Lcom/yandex/metrica/impl/ob/e6;->d(J)Lcom/yandex/metrica/impl/ob/e6;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 36
    .line 37
    invoke-virtual {v1, v6, v7}, Lcom/yandex/metrica/impl/ob/Md;->a(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v8

    .line 41
    cmp-long v1, v8, v6

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v8, v9}, Lcom/yandex/metrica/impl/ob/e6;->a(J)Lcom/yandex/metrica/impl/ob/e6;

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 49
    .line 50
    invoke-virtual {v1, v4, v5}, Lcom/yandex/metrica/impl/ob/Md;->b(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v8

    .line 54
    cmp-long v1, v8, v4

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v8, v9}, Lcom/yandex/metrica/impl/ob/e6;->c(J)Lcom/yandex/metrica/impl/ob/e6;

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 62
    .line 63
    invoke-virtual {v1, v4, v5}, Lcom/yandex/metrica/impl/ob/Md;->d(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    cmp-long v1, v8, v4

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, v8, v9}, Lcom/yandex/metrica/impl/ob/e6;->e(J)Lcom/yandex/metrica/impl/ob/e6;

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e6;->b()V

    .line 75
    .line 76
    .line 77
    :cond_4
    new-instance v0, Lcom/yandex/metrica/impl/ob/e6;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 80
    .line 81
    const-string v8, "foreground"

    .line 82
    .line 83
    invoke-direct {v0, v1, v8}, Lcom/yandex/metrica/impl/ob/e6;-><init>(Lcom/yandex/metrica/impl/ob/c9;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e6;->h()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_a

    .line 91
    .line 92
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 93
    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Md;->g(J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    cmp-long v1, v2, v8

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0, v8, v9}, Lcom/yandex/metrica/impl/ob/e6;->d(J)Lcom/yandex/metrica/impl/ob/e6;

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Md;->a(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/e6;->a(Z)Lcom/yandex/metrica/impl/ob/e6;

    .line 119
    .line 120
    .line 121
    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 122
    .line 123
    invoke-virtual {v1, v6, v7}, Lcom/yandex/metrica/impl/ob/Md;->e(J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    cmp-long v3, v1, v6

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/e6;->a(J)Lcom/yandex/metrica/impl/ob/e6;

    .line 132
    .line 133
    .line 134
    :cond_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 135
    .line 136
    invoke-virtual {v1, v4, v5}, Lcom/yandex/metrica/impl/ob/Md;->f(J)J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    cmp-long v3, v1, v4

    .line 141
    .line 142
    if-eqz v3, :cond_8

    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/e6;->c(J)Lcom/yandex/metrica/impl/ob/e6;

    .line 145
    .line 146
    .line 147
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 148
    .line 149
    invoke-virtual {v1, v4, v5}, Lcom/yandex/metrica/impl/ob/Md;->h(J)J

    .line 150
    .line 151
    .line 152
    move-result-wide v1

    .line 153
    cmp-long v3, v1, v4

    .line 154
    .line 155
    if-eqz v3, :cond_9

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/e6;->e(J)Lcom/yandex/metrica/impl/ob/e6;

    .line 158
    .line 159
    .line 160
    :cond_9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e6;->b()V

    .line 161
    .line 162
    .line 163
    :cond_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Md;->f()Lcom/yandex/metrica/impl/ob/s$a;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 172
    .line 173
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/c9;->a(Lcom/yandex/metrica/impl/ob/s$a;)Lcom/yandex/metrica/impl/ob/c9;

    .line 174
    .line 175
    .line 176
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Md;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_c

    .line 188
    .line 189
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/c9;->n()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_c

    .line 200
    .line 201
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/c9;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c9;

    .line 204
    .line 205
    .line 206
    :cond_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 207
    .line 208
    invoke-virtual {v0, v6, v7}, Lcom/yandex/metrica/impl/ob/Md;->i(J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    cmp-long v2, v0, v6

    .line 213
    .line 214
    if-eqz v2, :cond_d

    .line 215
    .line 216
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 217
    .line 218
    invoke-virtual {v2, v6, v7}, Lcom/yandex/metrica/impl/ob/c9;->b(J)J

    .line 219
    .line 220
    .line 221
    move-result-wide v2

    .line 222
    cmp-long v2, v2, v6

    .line 223
    .line 224
    if-nez v2, :cond_d

    .line 225
    .line 226
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 227
    .line 228
    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/c9;->c(J)Lcom/yandex/metrica/impl/ob/c9;

    .line 229
    .line 230
    .line 231
    :cond_d
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Md;->h()V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$c;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 239
    .line 240
    .line 241
    return-void
.end method

.method protected c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$c;->b:Lcom/yandex/metrica/impl/ob/Md;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Md;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
