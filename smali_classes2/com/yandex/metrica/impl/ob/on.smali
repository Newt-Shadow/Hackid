.class public Lcom/yandex/metrica/impl/ob/on;
.super Lcom/yandex/metrica/impl/ob/tn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/on$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/tn<",
        "Lcom/yandex/metrica/impl/ob/uj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/tn;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/tn;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/tn<",
            "Lcom/yandex/metrica/impl/ob/uj;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/yandex/metrica/impl/ob/uj;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->c()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->c()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    return v3

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    :goto_0
    return v3

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    :goto_1
    return v3

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_7

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    :goto_2
    return v3

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_9

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_9

    .line 167
    .line 168
    :goto_3
    return v3

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_b

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-eqz v0, :cond_b

    .line 203
    .line 204
    :goto_4
    return v3

    .line 205
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    goto :goto_5

    .line 232
    :cond_c
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    if-nez p1, :cond_d

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_d
    move v1, v3

    .line 240
    :goto_5
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/yandex/metrica/impl/ob/uj;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v2, v1

    .line 52
    :goto_1
    add-int/2addr v0, v2

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move v2, v1

    .line 79
    :goto_2
    add-int/2addr v0, v2

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    .line 82
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move v2, v1

    .line 106
    :goto_3
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    .line 108
    .line 109
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    goto :goto_4

    .line 132
    :cond_4
    move v2, v1

    .line 133
    :goto_4
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    .line 135
    .line 136
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->c()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    .line 146
    .line 147
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Lcom/yandex/metrica/impl/ob/uj;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-eqz v2, :cond_5

    .line 156
    .line 157
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/tn;->a:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v1, Lcom/yandex/metrica/impl/ob/uj;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    :cond_5
    add-int/2addr v0, v1

    .line 170
    return v0
.end method
