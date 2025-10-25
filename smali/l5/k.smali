.class public abstract Ll5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0xbdfcb8

.field static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Z = false

.field static d:Z = false

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll5/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ll5/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-static {}, Ll5/g;->f()Ll5/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ll5/g;->h(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const-string v0, "e"

    .line 12
    .line 13
    invoke-static {}, Ll5/g;->f()Ll5/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0, p1, v0}, Ll5/g;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "GooglePlayServices not available due to error "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "GooglePlayServicesUtil"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    if-nez p0, :cond_0

    .line 44
    .line 45
    new-instance p0, Ll5/h;

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ll5/h;-><init>(I)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_0
    new-instance v0, Ll5/i;

    .line 52
    .line 53
    const-string v1, "Google Play Services not available"

    .line 54
    .line 55
    invoke-direct {v0, p1, v1, p0}, Ll5/i;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "com.google.android.gms"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 13
    .line 14
    return p0

    .line 15
    :catch_0
    const-string p0, "GooglePlayServicesUtil"

    .line 16
    .line 17
    const-string v1, "Google Play services is missing."

    .line 18
    .line 19
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ll5/b;->o(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.google.android.gms"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-boolean v0, Ll5/k;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lt5/e;->a(Landroid/content/Context;)Lt5/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v3, "com.google.android.gms"

    .line 12
    .line 13
    const/16 v4, 0x40

    .line 14
    .line 15
    invoke-virtual {v0, v3, v4}, Lt5/d;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0}, Ll5/l;->a(Landroid/content/Context;)Ll5/l;

    .line 20
    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {v0, v1}, Ll5/l;->e(Landroid/content/pm/PackageInfo;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    invoke-static {v0, v2}, Ll5/l;->e(Landroid/content/pm/PackageInfo;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    sput-boolean v2, Ll5/k;->c:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sput-boolean v1, Ll5/k;->c:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    :goto_0
    sput-boolean v2, Ll5/k;->d:Z

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    :try_start_1
    const-string v0, "GooglePlayServicesUtil"

    .line 48
    .line 49
    const-string v3, "Cannot find Google Play services package name."

    .line 50
    .line 51
    invoke-static {v0, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    sput-boolean v2, Ll5/k;->d:Z

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    sput-boolean v2, Ll5/k;->d:Z

    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_2
    sget-boolean p0, Ll5/k;->c:Z

    .line 61
    .line 62
    if-nez p0, :cond_3

    .line 63
    .line 64
    invoke-static {}, Lcom/google/android/gms/common/util/h;->b()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_2

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_2
    return v1

    .line 72
    :cond_3
    :goto_3
    return v2
.end method

.method public static f(Landroid/content/Context;I)I
    .locals 10

    .line 1
    const-string v0, "GooglePlayServicesUtil"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Ll5/m;->a:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    const-string v1, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "com.google.android.gms"

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    sget-object v1, Ll5/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-static {p0}, Ln5/z0;->a(Landroid/content/Context;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    sget v3, Ll5/k;->a:I

    .line 46
    .line 47
    if-ne v1, v3, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;

    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;-><init>(I)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/h;->d(Landroid/content/Context;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v3, 0x1

    .line 67
    const/4 v4, 0x0

    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    invoke-static {p0}, Lcom/google/android/gms/common/util/h;->f(Landroid/content/Context;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    move v1, v3

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move v1, v4

    .line 79
    :goto_2
    if-ltz p1, :cond_5

    .line 80
    .line 81
    move v5, v3

    .line 82
    goto :goto_3

    .line 83
    :cond_5
    move v5, v4

    .line 84
    :goto_3
    invoke-static {v5}, Ln5/q;->a(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/16 v7, 0x9

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    :try_start_1
    const-string v8, "com.android.vending"

    .line 100
    .line 101
    const/16 v9, 0x2040

    .line 102
    .line 103
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    goto :goto_5

    .line 108
    :catch_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p1, " requires the Google Play Store, but it is missing."

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :goto_4
    move v3, v7

    .line 122
    goto/16 :goto_7

    .line 123
    .line 124
    :cond_6
    const/4 v8, 0x0

    .line 125
    :goto_5
    const/16 v9, 0x40

    .line 126
    .line 127
    :try_start_2
    invoke-virtual {v6, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v9
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    invoke-static {p0}, Ll5/l;->a(Landroid/content/Context;)Ll5/l;

    .line 132
    .line 133
    .line 134
    invoke-static {v9, v3}, Ll5/l;->e(Landroid/content/pm/PackageInfo;Z)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_7

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    const-string p1, " requires Google Play services, but their signature is invalid."

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    if-eqz v1, :cond_8

    .line 155
    .line 156
    invoke-static {v8}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-static {v8, v3}, Ll5/l;->e(Landroid/content/pm/PackageInfo;Z)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_8

    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const-string p1, " requires Google Play Store, but its signature is invalid."

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_8
    if-eqz v1, :cond_9

    .line 180
    .line 181
    if-eqz v8, :cond_9

    .line 182
    .line 183
    iget-object p0, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 184
    .line 185
    aget-object p0, p0, v4

    .line 186
    .line 187
    iget-object v1, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 188
    .line 189
    aget-object v1, v1, v4

    .line 190
    .line 191
    invoke-virtual {p0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_9

    .line 196
    .line 197
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    const-string p1, " requires Google Play Store, but its signature doesn\'t match that of Google Play services."

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_9
    iget p0, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 212
    .line 213
    invoke-static {p0}, Lcom/google/android/gms/common/util/r;->a(I)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    invoke-static {p1}, Lcom/google/android/gms/common/util/r;->a(I)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-ge p0, v1, :cond_a

    .line 222
    .line 223
    iget p0, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v2, "Google Play services out of date for "

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, ".  Requires "

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string p1, " but found "

    .line 247
    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    const/4 v3, 0x2

    .line 262
    goto :goto_7

    .line 263
    :cond_a
    iget-object p0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 264
    .line 265
    if-nez p0, :cond_b

    .line 266
    .line 267
    :try_start_3
    invoke-virtual {v6, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 268
    .line 269
    .line 270
    move-result-object p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 271
    goto :goto_6

    .line 272
    :catch_1
    move-exception p0

    .line 273
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    const-string v1, " requires Google Play services, but they\'re missing when getting application info."

    .line 278
    .line 279
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_b
    :goto_6
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 288
    .line 289
    if-nez p0, :cond_c

    .line 290
    .line 291
    const/4 v3, 0x3

    .line 292
    goto :goto_7

    .line 293
    :cond_c
    return v4

    .line 294
    :catch_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    const-string p1, " requires Google Play services, but they are missing."

    .line 299
    .line 300
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    :goto_7
    return v3
.end method

.method public static g(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-ne p1, v1, :cond_1

    .line 8
    .line 9
    const-string p1, "com.google.android.gms"

    .line 10
    .line 11
    invoke-static {p0, p1}, Ll5/k;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/os/UserManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string v0, "true"

    .line 23
    .line 24
    const-string v1, "restricted_profile"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public static i(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static j(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/util/p;->b(Landroid/content/Context;ILjava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static k(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "com.google.android.gms"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    return v4

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/16 v3, 0x2000

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 61
    .line 62
    return p0

    .line 63
    :cond_2
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-static {p0}, Ll5/k;->h(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    if-nez p0, :cond_3

    .line 72
    .line 73
    return v4

    .line 74
    :catch_0
    :cond_3
    return v1
.end method
