.class Lcom/yandex/metrica/impl/ob/Jf$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Jf;->b(Lcom/yandex/metrica/impl/ob/Jf$e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Jf$e$a;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Jf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Jf;Lcom/yandex/metrica/impl/ob/Jf$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->b:Lcom/yandex/metrica/impl/ob/Jf;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->a:Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->b:Lcom/yandex/metrica/impl/ob/Jf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Jf;->b(Lcom/yandex/metrica/impl/ob/Jf;)Lcom/yandex/metrica/impl/ob/s2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/s2;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->b:Lcom/yandex/metrica/impl/ob/Jf;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Jf;->c(Lcom/yandex/metrica/impl/ob/Jf;)Lcom/yandex/metrica/impl/ob/kh;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->a:Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kh;->b(Lcom/yandex/metrica/impl/ob/Jf$e$a;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jf$e$b;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->a:Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Jf$e$b;-><init>(Lcom/yandex/metrica/impl/ob/Jf$e$a;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->b:Lcom/yandex/metrica/impl/ob/Jf;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Jf;->e(Lcom/yandex/metrica/impl/ob/Jf;)Lcom/yandex/metrica/impl/ob/Rl;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->b:Lcom/yandex/metrica/impl/ob/Jf;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Jf;->d(Lcom/yandex/metrica/impl/ob/Jf;)Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v1, Lcom/yandex/metrica/impl/ob/Ml;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/H1;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/H1$d;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jf$e$b;->a(Lcom/yandex/metrica/impl/ob/H1$d;)V

    .line 53
    .line 54
    .line 55
    sget-object v2, Lcom/yandex/metrica/impl/ob/H1$d;->m:Lcom/yandex/metrica/impl/ob/H1$d;

    .line 56
    .line 57
    if-ne v1, v2, :cond_0

    .line 58
    .line 59
    sget-object v1, Lcom/yandex/metrica/impl/ob/Jf$e$b$a;->a:Lcom/yandex/metrica/impl/ob/Jf$e$b$a;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jf$e$b;->a(Lcom/yandex/metrica/impl/ob/Jf$e$b$a;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->a:Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/Jf$e$a;->f:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    sget-object v1, Lcom/yandex/metrica/impl/ob/Jf$e$b$a;->b:Lcom/yandex/metrica/impl/ob/Jf$e$b$a;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jf$e$b;->a(Lcom/yandex/metrica/impl/ob/Jf$e$b$a;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :cond_1
    new-instance v1, Lcom/yandex/metrica/network/Request$Builder;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->a:Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/Jf$e$a;->b:Ljava/lang/String;

    .line 88
    .line 89
    invoke-direct {v1, v2}, Lcom/yandex/metrica/network/Request$Builder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->a:Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/Jf$e$a;->c:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/network/Request$Builder;->d(Ljava/lang/String;)Lcom/yandex/metrica/network/Request$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->a:Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/Jf$e$a;->d:Lcom/yandex/metrica/impl/ob/rm;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/rm;->a()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/util/Map$Entry;

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/lang/Iterable;

    .line 135
    .line 136
    const-string v5, ","

    .line 137
    .line 138
    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v4, v3}, Lcom/yandex/metrica/network/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/network/Request$Builder;

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    new-instance v2, Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 147
    .line 148
    invoke-direct {v2}, Lcom/yandex/metrica/network/NetworkClient$Builder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/F0;->t()Lcom/yandex/metrica/impl/ob/sd;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/network/NetworkClient$Builder;->f(Ljavax/net/ssl/SSLSocketFactory;)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const/4 v3, 0x1

    .line 168
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/network/NetworkClient$Builder;->c(Z)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    sget v3, Lcom/yandex/metrica/impl/ob/md;->a:I

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/network/NetworkClient$Builder;->b(I)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/network/NetworkClient$Builder;->e(I)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const v3, 0x19000

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/network/NetworkClient$Builder;->d(I)Lcom/yandex/metrica/network/NetworkClient$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/yandex/metrica/network/NetworkClient$Builder;->a()Lcom/yandex/metrica/network/NetworkClient;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Request$Builder;->b()Lcom/yandex/metrica/network/Request;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/network/NetworkClient;->g(Lcom/yandex/metrica/network/Request;)Lcom/yandex/metrica/network/Call;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-interface {v1}, Lcom/yandex/metrica/network/Call;->execute()Lcom/yandex/metrica/network/Response;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Response;->a()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Response;->f()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_3

    .line 214
    .line 215
    sget-object v3, Lcom/yandex/metrica/impl/ob/Jf$e$b$a;->c:Lcom/yandex/metrica/impl/ob/Jf$e$b$a;

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/Jf$e$b;->a(Lcom/yandex/metrica/impl/ob/Jf$e$b$a;)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_3
    sget-object v3, Lcom/yandex/metrica/impl/ob/Jf$e$b$a;->d:Lcom/yandex/metrica/impl/ob/Jf$e$b$a;

    .line 222
    .line 223
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/Jf$e$b;->a(Lcom/yandex/metrica/impl/ob/Jf$e$b$a;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Response;->c()Ljava/lang/Throwable;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/Jf$e$b;->a(Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Jf$e$b;->a(Ljava/lang/Integer;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Response;->e()[B

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/Jf$e$b;->e:[B

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Response;->b()[B

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/Jf$e$b;->f:[B

    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/yandex/metrica/network/Response;->d()Ljava/util/Map;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Jf$e$b;->a(Ljava/util/Map;)V

    .line 257
    .line 258
    .line 259
    :goto_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Jf$d;->b:Lcom/yandex/metrica/impl/ob/Jf;

    .line 260
    .line 261
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/Jf;->a(Lcom/yandex/metrica/impl/ob/Jf;Lcom/yandex/metrica/impl/ob/Jf$e$b;)V

    .line 262
    .line 263
    .line 264
    :cond_4
    return-void
.end method
