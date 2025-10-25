.class public final Lcom/android/billingclient/api/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/play_billing/j;

.field private final h:Ljava/lang/Long;

.field private final i:Lcom/android/billingclient/api/p0;

.field private final j:Lcom/android/billingclient/api/t0;

.field private final k:Lcom/android/billingclient/api/q0;

.field private final l:Lcom/android/billingclient/api/r0;

.field private final m:Lcom/android/billingclient/api/s0;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "formattedPrice"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/i$a;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "priceAmountMicros"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/billingclient/api/i$a;->b:J

    .line 19
    .line 20
    const-string v0, "priceCurrencyCode"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/billingclient/api/i$a;->c:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "offerIdToken"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-ne v3, v1, :cond_0

    .line 41
    .line 42
    move-object v0, v2

    .line 43
    :cond_0
    iput-object v0, p0, Lcom/android/billingclient/api/i$a;->d:Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "offerId"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ne v3, v1, :cond_1

    .line 56
    .line 57
    move-object v0, v2

    .line 58
    :cond_1
    iput-object v0, p0, Lcom/android/billingclient/api/i$a;->e:Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "purchaseOptionId"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ne v3, v1, :cond_2

    .line 71
    .line 72
    move-object v0, v2

    .line 73
    :cond_2
    iput-object v0, p0, Lcom/android/billingclient/api/i$a;->f:Ljava/lang/String;

    .line 74
    .line 75
    const-string v0, "offerType"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const-string v0, "offerTags"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-ge v3, v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/j;->r(Ljava/util/Collection;)Lcom/google/android/gms/internal/play_billing/j;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/android/billingclient/api/i$a;->g:Lcom/google/android/gms/internal/play_billing/j;

    .line 115
    .line 116
    const-string v0, "fullPriceMicros"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    move-object v0, v2

    .line 134
    :goto_1
    iput-object v0, p0, Lcom/android/billingclient/api/i$a;->h:Ljava/lang/Long;

    .line 135
    .line 136
    const-string v0, "discountDisplayInfo"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-nez v0, :cond_5

    .line 143
    .line 144
    move-object v1, v2

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    new-instance v1, Lcom/android/billingclient/api/p0;

    .line 147
    .line 148
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/p0;-><init>(Lorg/json/JSONObject;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    iput-object v1, p0, Lcom/android/billingclient/api/i$a;->i:Lcom/android/billingclient/api/p0;

    .line 152
    .line 153
    const-string v0, "validTimeWindow"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-nez v0, :cond_6

    .line 160
    .line 161
    move-object v1, v2

    .line 162
    goto :goto_3

    .line 163
    :cond_6
    new-instance v1, Lcom/android/billingclient/api/t0;

    .line 164
    .line 165
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/t0;-><init>(Lorg/json/JSONObject;)V

    .line 166
    .line 167
    .line 168
    :goto_3
    iput-object v1, p0, Lcom/android/billingclient/api/i$a;->j:Lcom/android/billingclient/api/t0;

    .line 169
    .line 170
    const-string v0, "limitedQuantityInfo"

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-nez v0, :cond_7

    .line 177
    .line 178
    move-object v1, v2

    .line 179
    goto :goto_4

    .line 180
    :cond_7
    new-instance v1, Lcom/android/billingclient/api/q0;

    .line 181
    .line 182
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/q0;-><init>(Lorg/json/JSONObject;)V

    .line 183
    .line 184
    .line 185
    :goto_4
    iput-object v1, p0, Lcom/android/billingclient/api/i$a;->k:Lcom/android/billingclient/api/q0;

    .line 186
    .line 187
    const-string v0, "preorderDetails"

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-nez v0, :cond_8

    .line 194
    .line 195
    move-object v1, v2

    .line 196
    goto :goto_5

    .line 197
    :cond_8
    new-instance v1, Lcom/android/billingclient/api/r0;

    .line 198
    .line 199
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/r0;-><init>(Lorg/json/JSONObject;)V

    .line 200
    .line 201
    .line 202
    :goto_5
    iput-object v1, p0, Lcom/android/billingclient/api/i$a;->l:Lcom/android/billingclient/api/r0;

    .line 203
    .line 204
    const-string v0, "rentalDetails"

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-nez p1, :cond_9

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_9
    new-instance v2, Lcom/android/billingclient/api/s0;

    .line 214
    .line 215
    invoke-direct {v2, p1}, Lcom/android/billingclient/api/s0;-><init>(Lorg/json/JSONObject;)V

    .line 216
    .line 217
    .line 218
    :goto_6
    iput-object v2, p0, Lcom/android/billingclient/api/i$a;->m:Lcom/android/billingclient/api/s0;

    .line 219
    .line 220
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/billingclient/api/i$a;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i$a;->d:Ljava/lang/String;

    return-object v0
.end method
