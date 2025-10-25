.class public Lcom/yandex/metrica/impl/ob/pn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yandex/metrica/impl/ob/uj;",
        ">;"
    }
.end annotation


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


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/uj;

    .line 2
    .line 3
    check-cast p2, Lcom/yandex/metrica/impl/ob/uj;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v2, v0

    .line 16
    :goto_0
    if-nez p2, :cond_2

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_2
    move v1, v0

    .line 20
    :goto_1
    xor-int/2addr v1, v2

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->q()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->q()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eq v1, v2, :cond_4

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->c()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->c()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eq v1, v2, :cond_5

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_7

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_6
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_7

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_9

    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :cond_8
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_a

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_b

    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_a
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_b

    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :cond_b
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_c

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_d

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_c
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_d
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->n()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_e

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->n()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->n()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_f

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_e
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->n()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-eqz v1, :cond_f

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_f
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_10

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_11

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_10
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-eqz v1, :cond_11

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_11
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-eqz v1, :cond_12

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_13

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_12
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    if-nez p1, :cond_13

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_13
    :goto_2
    const/16 v0, 0xa

    .line 252
    .line 253
    :goto_3
    return v0
.end method
