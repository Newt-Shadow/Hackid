.class public final Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/p;
.implements Lcom/google/gson/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/p;",
        "Lcom/google/gson/h;"
    }
.end annotation


# instance fields
.field private final a:Leb/d;


# direct methods
.method public constructor <init>(Leb/d;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;->a:Leb/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/posthog/surveys/SurveyQuestionBranching;
    .locals 4

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeOfT"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "context"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/i;->l()Lcom/google/gson/l;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const-string v0, "type"

    .line 22
    .line 23
    invoke-virtual {p3, v0}, Lcom/google/gson/l;->A(Ljava/lang/String;)Lcom/google/gson/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/gson/i;->n()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v0, p2

    .line 35
    :goto_0
    if-eqz v0, :cond_b

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sparse-switch v1, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :sswitch_0
    const-string v1, "response_based"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_1
    const-string v0, "responseValues"

    .line 57
    .line 58
    invoke-virtual {p3, v0}, Lcom/google/gson/l;->A(Ljava/lang/String;)Lcom/google/gson/i;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    if-eqz p3, :cond_2

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/google/gson/i;->l()Lcom/google/gson/l;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object p3, p2

    .line 70
    :goto_1
    if-eqz p3, :cond_5

    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/google/gson/l;->y()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    if-eqz p3, :cond_5

    .line 77
    .line 78
    const/16 v0, 0xa

    .line 79
    .line 80
    invoke-static {p3, v0}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v0}, Lyc/e0;->b(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/16 v1, 0x10

    .line 89
    .line 90
    invoke-static {v0, v1}, Lod/g;->b(II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lcom/google/gson/i;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/google/gson/i;->s()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_3

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/google/gson/i;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/google/gson/i;->m()Lcom/google/gson/n;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lcom/google/gson/n;->G()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lcom/google/gson/i;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/google/gson/i;->g()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    goto :goto_3

    .line 162
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lcom/google/gson/i;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/google/gson/i;->s()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lcom/google/gson/i;

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/google/gson/i;->m()Lcom/google/gson/n;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/google/gson/n;->I()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_4

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lcom/google/gson/i;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/google/gson/i;->n()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    goto :goto_3

    .line 201
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/google/gson/i;

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/gson/i;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :goto_3
    invoke-static {v2, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lxc/k;->c()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v0}, Lxc/k;->d()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_5
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    :cond_6
    new-instance p3, Lcom/posthog/surveys/SurveyQuestionBranching$ResponseBased;

    .line 232
    .line 233
    invoke-direct {p3, v1}, Lcom/posthog/surveys/SurveyQuestionBranching$ResponseBased;-><init>(Ljava/util/Map;)V

    .line 234
    .line 235
    .line 236
    move-object p2, p3

    .line 237
    goto :goto_6

    .line 238
    :sswitch_1
    const-string p3, "end"

    .line 239
    .line 240
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p3

    .line 244
    if-nez p3, :cond_7

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_7
    sget-object p2, Lcom/posthog/surveys/SurveyQuestionBranching$End;->INSTANCE:Lcom/posthog/surveys/SurveyQuestionBranching$End;

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :sswitch_2
    const-string v1, "specific_question"

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_8

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_8
    const-string v0, "index"

    .line 260
    .line 261
    invoke-virtual {p3, v0}, Lcom/google/gson/l;->A(Ljava/lang/String;)Lcom/google/gson/i;

    .line 262
    .line 263
    .line 264
    move-result-object p3

    .line 265
    if-eqz p3, :cond_9

    .line 266
    .line 267
    invoke-virtual {p3}, Lcom/google/gson/i;->g()I

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    goto :goto_4

    .line 272
    :cond_9
    const/4 p3, 0x0

    .line 273
    :goto_4
    new-instance v0, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;

    .line 274
    .line 275
    invoke-direct {v0, p3}, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;-><init>(I)V

    .line 276
    .line 277
    .line 278
    move-object p2, v0

    .line 279
    goto :goto_6

    .line 280
    :sswitch_3
    const-string p3, "next_question"

    .line 281
    .line 282
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p3

    .line 286
    if-nez p3, :cond_a

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_a
    sget-object p2, Lcom/posthog/surveys/SurveyQuestionBranching$Next;->INSTANCE:Lcom/posthog/surveys/SurveyQuestionBranching$Next;

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_b
    :goto_5
    iget-object p3, p0, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;->a:Leb/d;

    .line 293
    .line 294
    invoke-virtual {p3}, Leb/d;->o()Llb/i;

    .line 295
    .line 296
    .line 297
    move-result-object p3

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v2, "Unknown branching type: "

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-interface {p3, v0}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .line 317
    .line 318
    :goto_6
    return-object p2

    .line 319
    :catchall_0
    move-exception p3

    .line 320
    iget-object v0, p0, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;->a:Leb/d;

    .line 321
    .line 322
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string p1, " isn\'t a valid SurveyQuestionBranching: "

    .line 335
    .line 336
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const/16 p1, 0x2e

    .line 343
    .line 344
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    return-object p2

    .line 355
    :sswitch_data_0
    .sparse-switch
        -0x3e3a7c4e -> :sswitch_3
        -0x18e943ad -> :sswitch_2
        0x188db -> :sswitch_1
        0x193c5635 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lcom/posthog/surveys/SurveyQuestionBranching;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;
    .locals 1

    .line 1
    const-string v0, "src"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeOfSrc"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "context"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, p1, p2}, Lcom/google/gson/o;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "context.serialize(src, typeOfSrc)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/posthog/surveys/SurveyQuestionBranching;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;
    .locals 0

    .line 1
    check-cast p1, Lcom/posthog/surveys/SurveyQuestionBranching;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/surveys/GsonSurveyQuestionBranchingAdapter;->b(Lcom/posthog/surveys/SurveyQuestionBranching;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
