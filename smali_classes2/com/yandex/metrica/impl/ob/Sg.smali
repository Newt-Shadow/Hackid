.class public final Lcom/yandex/metrica/impl/ob/Sg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/AdRevenue;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/AdRevenue;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 5
    .line 6
    new-instance p1, Lcom/yandex/metrica/impl/ob/dn;

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    const-string v1, "ad revenue strings"

    .line 11
    .line 12
    invoke-direct {p1, v0, v1, p2}, Lcom/yandex/metrica/impl/ob/dn;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sg;->a:Lcom/yandex/metrica/impl/ob/fn;

    .line 16
    .line 17
    new-instance p1, Lcom/yandex/metrica/impl/ob/cn;

    .line 18
    .line 19
    const/16 v0, 0x7800

    .line 20
    .line 21
    const-string v1, "ad revenue payload"

    .line 22
    .line 23
    invoke-direct {p1, v0, v1, p2}, Lcom/yandex/metrica/impl/ob/cn;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sg;->b:Lcom/yandex/metrica/impl/ob/fn;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()Lxc/k;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxc/k;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/cf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cf;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->adNetwork:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sg$a;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/Sg$a;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->adPlacementId:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sg$b;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/Sg$b;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->adPlacementName:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sg$c;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/Sg$c;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->adUnitId:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sg$d;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/Sg$d;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->adUnitName:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sg$e;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/Sg$e;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->precision:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sg$f;

    .line 76
    .line 77
    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/Sg$f;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->currency:Ljava/util/Currency;

    .line 87
    .line 88
    const-string v2, "revenue.currency"

    .line 89
    .line 90
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sg$g;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/Sg$g;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    filled-new-array/range {v3 .. v9}, [Lxc/k;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const/4 v2, 0x0

    .line 119
    move v3, v2

    .line 120
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_0

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Lxc/k;

    .line 131
    .line 132
    invoke-virtual {v4}, Lxc/k;->c()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v4}, Lxc/k;->d()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Lid/l;

    .line 143
    .line 144
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Sg;->a:Lcom/yandex/metrica/impl/ob/fn;

    .line 145
    .line 146
    invoke-interface {v6, v5}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->e(Ljava/lang/String;)[B

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    const-string v7, "StringUtils.stringToBytesForProtobuf(value)"

    .line 157
    .line 158
    invoke-static {v5, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->e(Ljava/lang/String;)[B

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const-string v7, "StringUtils.stringToBytesForProtobuf(result)"

    .line 166
    .line 167
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v4, v6}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    array-length v4, v5

    .line 174
    array-length v5, v6

    .line 175
    sub-int/2addr v4, v5

    .line 176
    add-int/2addr v3, v4

    .line 177
    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Tg;->a()Ljava/util/Map;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 183
    .line 184
    iget-object v4, v4, Lcom/yandex/metrica/AdRevenue;->adType:Lcom/yandex/metrica/AdType;

    .line 185
    .line 186
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Ljava/lang/Integer;

    .line 191
    .line 192
    if-eqz v1, :cond_1

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    :cond_1
    iput v2, v0, Lcom/yandex/metrica/impl/ob/cf;->d:I

    .line 199
    .line 200
    new-instance v1, Lcom/yandex/metrica/impl/ob/cf$a;

    .line 201
    .line 202
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/cf$a;-><init>()V

    .line 203
    .line 204
    .line 205
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 206
    .line 207
    iget-object v2, v2, Lcom/yandex/metrica/AdRevenue;->adRevenue:Ljava/math/BigDecimal;

    .line 208
    .line 209
    const-string v4, "revenue.adRevenue"

    .line 210
    .line 211
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Ol;->a(Ljava/math/BigDecimal;)Lxc/k;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    new-instance v4, Lcom/yandex/metrica/impl/ob/Nl;

    .line 219
    .line 220
    invoke-virtual {v2}, Lxc/k;->c()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    check-cast v5, Ljava/lang/Number;

    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 227
    .line 228
    .line 229
    move-result-wide v5

    .line 230
    invoke-virtual {v2}, Lxc/k;->d()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Ljava/lang/Number;

    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    invoke-direct {v4, v5, v6, v2}, Lcom/yandex/metrica/impl/ob/Nl;-><init>(JI)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Nl;->b()J

    .line 244
    .line 245
    .line 246
    move-result-wide v5

    .line 247
    iput-wide v5, v1, Lcom/yandex/metrica/impl/ob/cf$a;->a:J

    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Nl;->a()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    iput v2, v1, Lcom/yandex/metrica/impl/ob/cf$a;->b:I

    .line 254
    .line 255
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cf$a;

    .line 256
    .line 257
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 258
    .line 259
    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->payload:Ljava/util/Map;

    .line 260
    .line 261
    if-eqz v1, :cond_2

    .line 262
    .line 263
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->b:Lcom/yandex/metrica/impl/ob/fn;

    .line 268
    .line 269
    invoke-interface {v2, v1}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    check-cast v2, Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/b;->e(Ljava/lang/String;)[B

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    const-string v4, "StringUtils.stringToByte\u2026oadTrimmer.trim(payload))"

    .line 280
    .line 281
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/cf;->k:[B

    .line 285
    .line 286
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(Ljava/lang/String;)[B

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    array-length v1, v1

    .line 291
    array-length v2, v2

    .line 292
    sub-int/2addr v1, v2

    .line 293
    add-int/2addr v3, v1

    .line 294
    :cond_2
    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    return-object v0
.end method
