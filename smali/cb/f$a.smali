.class final Lcb/f$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcb/f;->x(Lcb/c;Landroid/app/Activity;Landroid/content/Intent;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcb/c;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcb/c;Landroid/app/Activity;IZLjava/lang/String;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/f$a;->b:Landroid/content/Intent;

    iput-object p2, p0, Lcb/f$a;->c:Lcb/c;

    iput-object p3, p0, Lcb/f$a;->d:Landroid/app/Activity;

    iput p4, p0, Lcb/f$a;->e:I

    iput-boolean p5, p0, Lcb/f$a;->f:Z

    iput-object p6, p0, Lcb/f$a;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 8

    .line 1
    new-instance p1, Lcb/f$a;

    iget-object v1, p0, Lcb/f$a;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcb/f$a;->c:Lcb/c;

    iget-object v3, p0, Lcb/f$a;->d:Landroid/app/Activity;

    iget v4, p0, Lcb/f$a;->e:I

    iget-boolean v5, p0, Lcb/f$a;->f:Z

    iget-object v6, p0, Lcb/f$a;->g:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcb/f$a;-><init>(Landroid/content/Intent;Lcb/c;Landroid/app/Activity;IZLjava/lang/String;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lcb/f$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcb/f$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lcb/f$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lcb/f$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcb/f$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_b

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcb/f$a;->b:Landroid/content/Intent;

    .line 12
    .line 13
    const-string v0, "Unknown activity error, please fill an issue."

    .line 14
    .line 15
    const-string v1, "unknown_activity"

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcb/f$a;->c:Lcb/c;

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcb/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcb/f$a;->b:Landroid/content/Intent;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcb/f$a;->b:Landroid/content/Intent;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_0
    if-ge v3, v0, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcb/f$a;->b:Landroid/content/Intent;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget-object v2, Lcb/f;->a:Lcb/f;

    .line 74
    .line 75
    iget-object v4, p0, Lcb/f$a;->d:Landroid/app/Activity;

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget v5, p0, Lcb/f$a;->e:I

    .line 81
    .line 82
    invoke-static {v2, v4, v1, v5}, Lcb/f;->d(Lcb/f;Landroid/app/Activity;Landroid/net/Uri;I)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v4, p0, Lcb/f$a;->d:Landroid/app/Activity;

    .line 87
    .line 88
    iget-boolean v5, p0, Lcb/f$a;->f:Z

    .line 89
    .line 90
    invoke-static {v2, v4, v1, v5, p1}, Lcb/f;->a(Lcb/f;Landroid/app/Activity;Landroid/net/Uri;ZLjava/util/List;)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcb/f$a;->c:Lcb/c;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcb/c;->h(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_2
    iget-object v2, p0, Lcb/f$a;->b:Landroid/content/Intent;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    sget-object v0, Lcb/f;->a:Lcb/f;

    .line 112
    .line 113
    iget-object v1, p0, Lcb/f$a;->d:Landroid/app/Activity;

    .line 114
    .line 115
    iget-object v2, p0, Lcb/f$a;->b:Landroid/content/Intent;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget v3, p0, Lcb/f$a;->e:I

    .line 125
    .line 126
    invoke-static {v0, v1, v2, v3}, Lcb/f;->d(Lcb/f;Landroid/app/Activity;Landroid/net/Uri;I)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v2, p0, Lcb/f$a;->g:Ljava/lang/String;

    .line 131
    .line 132
    const-string v3, "dir"

    .line 133
    .line 134
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_4

    .line 139
    .line 140
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v0, p0, Lcb/f$a;->d:Landroid/app/Activity;

    .line 149
    .line 150
    invoke-static {p1, v0}, Lcb/f;->n(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_3

    .line 155
    .line 156
    iget-object v0, p0, Lcb/f$a;->c:Lcb/c;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Lcb/c;->h(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_3
    iget-object p1, p0, Lcb/f$a;->c:Lcb/c;

    .line 164
    .line 165
    const-string v0, "unknown_path"

    .line 166
    .line 167
    const-string v1, "Failed to retrieve directory path."

    .line 168
    .line 169
    invoke-virtual {p1, v0, v1}, Lcb/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :cond_4
    iget-object v2, p0, Lcb/f$a;->d:Landroid/app/Activity;

    .line 175
    .line 176
    iget-boolean v3, p0, Lcb/f$a;->f:Z

    .line 177
    .line 178
    invoke-static {v0, v2, v1, v3, p1}, Lcb/f;->a(Lcb/f;Landroid/app/Activity;Landroid/net/Uri;ZLjava/util/List;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcb/f$a;->c:Lcb/c;

    .line 182
    .line 183
    invoke-static {v0, v1, p1}, Lcb/f;->c(Lcb/f;Lcb/c;Ljava/util/List;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    iget-object v2, p0, Lcb/f$a;->b:Landroid/content/Intent;

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-eqz v2, :cond_6

    .line 194
    .line 195
    const-string v4, "selectedItems"

    .line 196
    .line 197
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    const/4 v4, 0x1

    .line 202
    if-ne v2, v4, :cond_6

    .line 203
    .line 204
    move v3, v4

    .line 205
    :cond_6
    if-eqz v3, :cond_a

    .line 206
    .line 207
    sget-object v0, Lcb/f;->a:Lcb/f;

    .line 208
    .line 209
    iget-object v1, p0, Lcb/f$a;->b:Landroid/content/Intent;

    .line 210
    .line 211
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v1}, Lcb/f;->b(Lcb/f;Landroid/os/Bundle;)Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-eqz v0, :cond_9

    .line 223
    .line 224
    new-instance v1, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_8

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    instance-of v3, v2, Landroid/net/Uri;

    .line 244
    .line 245
    if-eqz v3, :cond_7

    .line 246
    .line 247
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_8
    iget-object v0, p0, Lcb/f$a;->d:Landroid/app/Activity;

    .line 252
    .line 253
    iget-boolean v2, p0, Lcb/f$a;->f:Z

    .line 254
    .line 255
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_9

    .line 264
    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Landroid/net/Uri;

    .line 270
    .line 271
    sget-object v4, Lcb/f;->a:Lcb/f;

    .line 272
    .line 273
    invoke-static {v4, v0, v3, v2, p1}, Lcb/f;->a(Lcb/f;Landroid/app/Activity;Landroid/net/Uri;ZLjava/util/List;)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_9
    iget-object v0, p0, Lcb/f$a;->c:Lcb/c;

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Lcb/c;->h(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_a
    iget-object p1, p0, Lcb/f$a;->c:Lcb/c;

    .line 284
    .line 285
    invoke-virtual {p1, v1, v0}, Lcb/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 289
    .line 290
    return-object p1

    .line 291
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 294
    .line 295
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1
.end method
