.class final Lgb/d$b;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/d;-><init>(Landroid/content/Context;Lfb/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lgb/d;


# direct methods
.method constructor <init>(Lgb/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgb/d$b;->e:Lgb/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lgb/d$b;->e:Lgb/d;

    .line 7
    .line 8
    invoke-static {v1}, Lgb/d;->e(Lgb/d;)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lgb/o;->g(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "$screen_density"

    .line 23
    .line 24
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    .line 29
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 30
    .line 31
    invoke-static {v2, v3}, Lgb/o;->f(IF)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "$screen_height"

    .line 40
    .line 41
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 45
    .line 46
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .line 48
    invoke-static {v2, v1}, Lgb/o;->f(IF)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "$screen_width"

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lgb/d$b;->e:Lgb/d;

    .line 62
    .line 63
    invoke-static {v1}, Lgb/d;->e(Lgb/d;)Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lgb/d$b;->e:Lgb/d;

    .line 68
    .line 69
    invoke-static {v2}, Lgb/d;->d(Lgb/d;)Lfb/b;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v1, v2}, Lgb/o;->i(Landroid/content/Context;Lfb/b;)Landroid/content/pm/PackageInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    const-string v3, "versionName"

    .line 84
    .line 85
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v3, "$app_version"

    .line 89
    .line 90
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 94
    .line 95
    const-string v3, "it.packageName"

    .line 96
    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v3, "$app_namespace"

    .line 101
    .line 102
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Lgb/o;->r(Landroid/content/pm/PackageInfo;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v2, "$app_build"

    .line 114
    .line 115
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-object v1, p0, Lgb/d$b;->e:Lgb/d;

    .line 119
    .line 120
    invoke-static {v1}, Lgb/d;->e(Lgb/d;)Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget-object v2, p0, Lgb/d$b;->e:Lgb/d;

    .line 129
    .line 130
    invoke-static {v2}, Lgb/d;->e(Lgb/d;)Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v2, "context.applicationInfo.\u2026l(context.packageManager)"

    .line 143
    .line 144
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v2, "$app_name"

    .line 148
    .line 149
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 153
    .line 154
    const-string v2, "MANUFACTURER"

    .line 155
    .line 156
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v2, "$device_manufacturer"

    .line 160
    .line 161
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 165
    .line 166
    const-string v2, "MODEL"

    .line 167
    .line 168
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v2, "$device_model"

    .line 172
    .line 173
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 177
    .line 178
    const-string v2, "DEVICE"

    .line 179
    .line 180
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v2, "$device_name"

    .line 184
    .line 185
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lgb/d$b;->e:Lgb/d;

    .line 189
    .line 190
    invoke-static {v1}, Lgb/d;->e(Lgb/d;)Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v1}, Lgb/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-nez v1, :cond_2

    .line 199
    .line 200
    const-string v1, "Mobile"

    .line 201
    .line 202
    :cond_2
    const-string v2, "$device_type"

    .line 203
    .line 204
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const-string v1, "$os_name"

    .line 208
    .line 209
    const-string v2, "Android"

    .line 210
    .line 211
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 215
    .line 216
    const-string v2, "RELEASE"

    .line 217
    .line 218
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v2, "$os_version"

    .line 222
    .line 223
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lgb/d$b;->e:Lgb/d;

    .line 227
    .line 228
    invoke-static {v1}, Lgb/d;->f(Lgb/d;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const-string v2, "$is_emulator"

    .line 237
    .line 238
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgb/d$b;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
