.class public abstract Lcom/yandex/metrica/impl/ob/Hg$a;
.super Lcom/yandex/metrica/impl/ob/Eg$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/metrica/impl/ob/Hg;",
        "A:",
        "Lcom/yandex/metrica/impl/ob/Eg$a;",
        ">",
        "Lcom/yandex/metrica/impl/ob/Eg$b<",
        "TT;TA;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yandex/metrica/impl/ob/mn;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Hg$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/mn;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/mn;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Eg$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Hg$a;->c:Lcom/yandex/metrica/impl/ob/mn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Eg$c;)Lcom/yandex/metrica/impl/ob/Hg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Eg$c<",
            "TA;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Eg$b;->a()Lcom/yandex/metrica/impl/ob/Eg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/U;->a()Lcom/yandex/metrica/impl/ob/U;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Eg;->a(Lcom/yandex/metrica/impl/ob/U;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->n()Lcom/yandex/metrica/impl/ob/e2;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/e2;->a()Lcom/yandex/metrica/impl/ob/c2;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Eg;->a(Lcom/yandex/metrica/impl/ob/c2;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->a:Lcom/yandex/metrica/impl/ob/pi;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Eg;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lcom/yandex/metrica/impl/ob/Eg$a;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/Eg$a;->a:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/c2;->a()Lcom/yandex/metrica/c;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/c2;->a()Lcom/yandex/metrica/c;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/yandex/metrica/c;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v2, v3

    .line 58
    :goto_0
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Eg;->c(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->b:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lcom/yandex/metrica/impl/ob/Eg$a;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/Eg$a;->b:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->a:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-static {v4, v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :cond_2
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Eg;->b(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->b:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Lcom/yandex/metrica/impl/ob/Eg$a;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Eg$a;->c:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->a:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :cond_3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Eg;->a(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->b:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Eg;->e(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->r()Lcom/yandex/metrica/impl/ob/xb;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->a:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/xb;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/zb;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Eg;->a(Lcom/yandex/metrica/impl/ob/zb;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->a()Lcom/yandex/metrica/impl/ob/Bb;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Bb;->a()Lcom/yandex/metrica/impl/ob/Ab;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Eg;->a(Lcom/yandex/metrica/impl/ob/Ab;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->a:Landroid/content/Context;

    .line 149
    .line 150
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/g1;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/g1;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/g1;->a()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const/4 v2, 0x0

    .line 163
    if-eqz v1, :cond_4

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    move-object v3, p1

    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    .line 173
    :goto_1
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/Eg;->d(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    check-cast v0, Lcom/yandex/metrica/impl/ob/Hg;

    .line 177
    .line 178
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->a:Landroid/content/Context;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Hg$a;->c:Lcom/yandex/metrica/impl/ob/mn;

    .line 185
    .line 186
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->a:Landroid/content/Context;

    .line 187
    .line 188
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->b:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v1, v3, v4, v2}, Lcom/yandex/metrica/impl/ob/mn;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const-string v2, "1"

    .line 195
    .line 196
    const-string v3, "0"

    .line 197
    .line 198
    if-eqz v1, :cond_7

    .line 199
    .line 200
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 201
    .line 202
    and-int/lit8 p1, p1, 0x2

    .line 203
    .line 204
    if-eqz p1, :cond_5

    .line 205
    .line 206
    move-object p1, v2

    .line 207
    goto :goto_2

    .line 208
    :cond_5
    move-object p1, v3

    .line 209
    :goto_2
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hg;->f(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 213
    .line 214
    and-int/lit8 p1, p1, 0x1

    .line 215
    .line 216
    if-eqz p1, :cond_6

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_6
    move-object v2, v3

    .line 220
    :goto_3
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Hg;->g(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->b:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_a

    .line 231
    .line 232
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->a:Landroid/content/Context;

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 239
    .line 240
    and-int/lit8 p1, p1, 0x2

    .line 241
    .line 242
    if-eqz p1, :cond_8

    .line 243
    .line 244
    move-object p1, v2

    .line 245
    goto :goto_4

    .line 246
    :cond_8
    move-object p1, v3

    .line 247
    :goto_4
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hg;->f(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Eg$b;->a:Landroid/content/Context;

    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 257
    .line 258
    and-int/lit8 p1, p1, 0x1

    .line 259
    .line 260
    if-eqz p1, :cond_9

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_9
    move-object v2, v3

    .line 264
    :goto_5
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Hg;->g(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_a
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/Hg;->f(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/Hg;->g(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :goto_6
    return-object v0
.end method
