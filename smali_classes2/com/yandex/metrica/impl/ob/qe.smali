.class public Lcom/yandex/metrica/impl/ob/qe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:[B

.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/Long;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/yandex/metrica/impl/ob/a1;

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Lcom/yandex/metrica/impl/ob/Em;

.field public final s:Lcom/yandex/metrica/impl/ob/D0;

.field public final t:Lcom/yandex/metrica/impl/ob/E$b$a;

.field public final u:Lcom/yandex/metrica/impl/ob/oc$a;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/lang/Integer;

.field public final x:Lcom/yandex/metrica/impl/ob/y0;

.field public final y:Ljava/lang/Boolean;

.field public final z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "type"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/a1;->a(I)Lcom/yandex/metrica/impl/ob/a1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->j:Lcom/yandex/metrica/impl/ob/a1;

    .line 24
    .line 25
    const-string v0, "custom_type"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->k:Ljava/lang/Integer;

    .line 32
    .line 33
    const-string v0, "name"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->a:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "value"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "time"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->f:Ljava/lang/Long;

    .line 56
    .line 57
    const-string v0, "number"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->c:Ljava/lang/Integer;

    .line 64
    .line 65
    const-string v0, "global_number"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->d:Ljava/lang/Integer;

    .line 72
    .line 73
    const-string v0, "number_of_type"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->e:Ljava/lang/Integer;

    .line 80
    .line 81
    const-string v0, "cell_info"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->h:Ljava/lang/String;

    .line 88
    .line 89
    const-string v0, "location_info"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->g:Ljava/lang/String;

    .line 96
    .line 97
    const-string v0, "wifi_network_info"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->i:Ljava/lang/String;

    .line 104
    .line 105
    const-string v0, "error_environment"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->l:Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "user_info"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->m:Ljava/lang/String;

    .line 120
    .line 121
    const-string v0, "truncated"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->n:Ljava/lang/Integer;

    .line 128
    .line 129
    const-string v0, "connection_type"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->o:Ljava/lang/Integer;

    .line 136
    .line 137
    const-string v0, "cellular_connection_type"

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->p:Ljava/lang/String;

    .line 144
    .line 145
    const-string v0, "profile_id"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->q:Ljava/lang/String;

    .line 152
    .line 153
    const-string v0, "encrypting_mode"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Em;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/Em;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->r:Lcom/yandex/metrica/impl/ob/Em;

    .line 164
    .line 165
    const-string v0, "first_occurrence_status"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/D0;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/D0;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->s:Lcom/yandex/metrica/impl/ob/D0;

    .line 176
    .line 177
    const-string v0, "battery_charge_type"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/E$b$a;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->t:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 188
    .line 189
    const-string v0, "collection_mode"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/oc$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/oc$a;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->u:Lcom/yandex/metrica/impl/ob/oc$a;

    .line 200
    .line 201
    const-string v0, "has_omitted_data"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->v:Ljava/lang/Integer;

    .line 208
    .line 209
    const-string v0, "call_state"

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->w:Ljava/lang/Integer;

    .line 216
    .line 217
    const-string v0, "source"

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-nez v0, :cond_1

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/y0;->a(I)Lcom/yandex/metrica/impl/ob/y0;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    :goto_1
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/qe;->x:Lcom/yandex/metrica/impl/ob/y0;

    .line 235
    .line 236
    const-string v0, "attribution_id_changed"

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->y:Ljava/lang/Boolean;

    .line 243
    .line 244
    const-string v0, "open_id"

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qe;->z:Ljava/lang/Integer;

    .line 251
    .line 252
    const-string v0, "extras"

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/qe;->A:[B

    .line 259
    .line 260
    return-void
.end method
