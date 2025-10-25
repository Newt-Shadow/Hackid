.class public Lg/d;
.super Lg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/d$a;
    }
.end annotation


# static fields
.field public static final b:Lg/d$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lg/d;->b:Lg/d$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lg/d;->a:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-le p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "Max items must be higher than 1"

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    check-cast p2, Lf/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lg/d;->d(Landroid/content/Context;Lf/h;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic b(Landroid/content/Context;Ljava/lang/Object;)Lg/a$a;
    .locals 0

    .line 1
    check-cast p2, Lf/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lg/d;->e(Landroid/content/Context;Lf/h;)Lg/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic c(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/d;->f(ILandroid/content/Intent;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroid/content/Context;Lf/h;)Landroid/content/Intent;
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lg/f;->a:Lg/f$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lg/f$a;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    new-instance p1, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v1, "android.provider.action.PICK_IMAGES"

    .line 24
    .line 25
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lf/h;->d()Lg/f$f;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lg/f$a;->b(Lg/f$f;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lg/d;->a:I

    .line 40
    .line 41
    invoke-virtual {p2}, Lf/h;->c()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-le v0, v3, :cond_0

    .line 50
    .line 51
    invoke-static {}, Lg/c;->a()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-gt v0, v1, :cond_0

    .line 56
    .line 57
    move v2, v3

    .line 58
    :cond_0
    if-eqz v2, :cond_1

    .line 59
    .line 60
    const-string v1, "android.provider.extra.PICK_IMAGES_MAX"

    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lf/h;->b()Lg/f$b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lg/f$b;->a()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const-string v1, "android.provider.extra.PICK_IMAGES_LAUNCH_TAB"

    .line 74
    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const-string v0, "android.provider.extra.PICK_IMAGES_IN_ORDER"

    .line 79
    .line 80
    invoke-virtual {p2}, Lf/h;->f()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lf/h;->e()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    const-string v0, "android.provider.extra.PICK_IMAGES_ACCENT_COLOR"

    .line 94
    .line 95
    invoke-virtual {p2}, Lf/h;->a()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p2, "Max items must be greater than 1 and lesser than or equal to MediaStore.getPickImagesMaxLimit()"

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_2
    invoke-virtual {v0, p1}, Lg/f$a;->c(Landroid/content/Context;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lg/f$a;->a(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 129
    .line 130
    new-instance v1, Landroid/content/Intent;

    .line 131
    .line 132
    const-string v4, "androidx.activity.result.contract.action.PICK_IMAGES"

    .line 133
    .line 134
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 138
    .line 139
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 140
    .line 141
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lf/h;->d()Lg/f$f;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Lg/f$a;->b(Lg/f$f;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    iget p1, p0, Lg/d;->a:I

    .line 158
    .line 159
    invoke-virtual {p2}, Lf/h;->c()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-le p1, v3, :cond_3

    .line 168
    .line 169
    move v2, v3

    .line 170
    :cond_3
    if-eqz v2, :cond_5

    .line 171
    .line 172
    const-string v0, "androidx.activity.result.contract.extra.PICK_IMAGES_MAX"

    .line 173
    .line 174
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Lf/h;->b()Lg/f$b;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lg/f$b;->a()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    const-string v0, "androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB"

    .line 186
    .line 187
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    const-string p1, "androidx.activity.result.contract.extra.PICK_IMAGES_IN_ORDER"

    .line 191
    .line 192
    invoke-virtual {p2}, Lf/h;->f()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Lf/h;->e()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_4

    .line 204
    .line 205
    const-string p1, "androidx.activity.result.contract.extra.PICK_IMAGES_ACCENT_COLOR"

    .line 206
    .line 207
    invoke-virtual {p2}, Lf/h;->a()J

    .line 208
    .line 209
    .line 210
    move-result-wide v2

    .line 211
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    :cond_4
    move-object p1, v1

    .line 215
    goto :goto_0

    .line 216
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 217
    .line 218
    const-string p2, "Max items must be greater than 1"

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    const-string p2, "Required value was null."

    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_7
    new-instance p1, Landroid/content/Intent;

    .line 241
    .line 242
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 243
    .line 244
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Lf/h;->d()Lg/f$f;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {v0, p2}, Lg/f$a;->b(Lg/f$f;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 259
    .line 260
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    if-nez p2, :cond_8

    .line 268
    .line 269
    const-string p2, "*/*"

    .line 270
    .line 271
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    const-string p2, "image/*"

    .line 275
    .line 276
    const-string v0, "video/*"

    .line 277
    .line 278
    filled-new-array {p2, v0}, [Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    const-string v0, "android.intent.extra.MIME_TYPES"

    .line 283
    .line 284
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    :cond_8
    :goto_0
    return-object p1
.end method

.method public final e(Landroid/content/Context;Lf/h;)Lg/a$a;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(ILandroid/content/Intent;)Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    const/4 p2, 0x0

    .line 11
    :goto_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    sget-object p1, Lg/b;->a:Lg/b$a;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lg/b$a;->a(Landroid/content/Intent;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_3

    .line 20
    .line 21
    :cond_2
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_3
    return-object p1
.end method
