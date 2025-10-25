.class Lcom/yandex/metrica/impl/ob/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/yandex/metrica/impl/ob/c0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "CounterReport.Source"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/y0;->a(I)Lcom/yandex/metrica/impl/ob/y0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v2

    .line 30
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/c0;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->c:Lcom/yandex/metrica/impl/ob/a1;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v4, "CounterReport.Type"

    .line 42
    .line 43
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, v1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 48
    .line 49
    const-string v3, "CounterReport.CustomType"

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput v3, v1, Lcom/yandex/metrica/impl/ob/c0;->f:I

    .line 56
    .line 57
    const-string v3, "CounterReport.Value"

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    const-string v3, ""

    .line 66
    .line 67
    :cond_1
    iput-object v3, v1, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, "CounterReport.UserInfo"

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/c0;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v3, "CounterReport.Environment"

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/c0;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v3, "CounterReport.Event"

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/c0;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v3, "CounterReport.AppEnvironmentDiffKey"

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    const-string v4, "CounterReport.AppEnvironmentDiffValue"

    .line 108
    .line 109
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    new-instance v5, Landroid/util/Pair;

    .line 124
    .line 125
    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    move-object v5, v2

    .line 130
    :goto_1
    invoke-static {v1, v5}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Landroid/util/Pair;)Lcom/yandex/metrica/impl/ob/c0;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v3, "CounterReport.TRUNCATED"

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iput v3, v1, Lcom/yandex/metrica/impl/ob/c0;->h:I

    .line 141
    .line 142
    const-string v3, "CounterReport.ProfileID"

    .line 143
    .line 144
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/c0;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v3, "CounterReport.CreationElapsedRealtime"

    .line 153
    .line 154
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-virtual {v1, v3, v4}, Lcom/yandex/metrica/impl/ob/c0;->a(J)Lcom/yandex/metrica/impl/ob/c0;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v3, "CounterReport.CreationTimestamp"

    .line 163
    .line 164
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v3

    .line 168
    invoke-virtual {v1, v3, v4}, Lcom/yandex/metrica/impl/ob/c0;->b(J)Lcom/yandex/metrica/impl/ob/c0;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v3, "CounterReport.UniquenessStatus"

    .line 173
    .line 174
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/D0;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/D0;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/D0;)Lcom/yandex/metrica/impl/ob/c0;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/y0;)Lcom/yandex/metrica/impl/ob/c0;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "CounterReport.Payload"

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/c0;->c(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/c0;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v1, "CounterReport.AttributionIdChanged"

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_3

    .line 211
    .line 212
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    goto :goto_2

    .line 221
    :cond_3
    move-object v1, v2

    .line 222
    :goto_2
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/c0;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v1, "CounterReport.OpenId"

    .line 227
    .line 228
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_4

    .line 233
    .line 234
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    :cond_4
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/c0;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v1, "CounterReport.Extras"

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {p1}, Lac/a;->a(Landroid/os/Bundle;)Ljava/util/Map;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/c0;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    return-object p1
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/c0;

    .line 2
    .line 3
    return-object p1
.end method
