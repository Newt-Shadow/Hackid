.class public final Lmc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private final b:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V
    .locals 1

    .line 1
    const-string v0, "packageManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activityManager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lmc/c;->a:Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    iput-object p2, p0, Lmc/c;->b:Landroid/app/ActivityManager;

    .line 17
    .line 18
    return-void
.end method

.method private final a()Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lmc/c;->a:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSystemAvailableFeatures(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    array-length v2, v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    if-ge v4, v2, :cond_2

    .line 21
    .line 22
    aget-object v5, v0, v4

    .line 23
    .line 24
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v6, v3

    .line 31
    :goto_1
    if-nez v6, :cond_1

    .line 32
    .line 33
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    invoke-static {v1, v2}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/content/pm/FeatureInfo;

    .line 65
    .line 66
    iget-object v2, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    return-object v0
.end method

.method private final b()Z
    .locals 6

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "BRAND"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "generic"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 20
    .line 21
    const-string v5, "DEVICE"

    .line 22
    .line 23
    invoke-static {v0, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 33
    .line 34
    const-string v5, "FINGERPRINT"

    .line 35
    .line 36
    invoke-static {v0, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-static {v0, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "unknown"

    .line 49
    .line 50
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "HARDWARE"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v5, "goldfish"

    .line 64
    .line 65
    invoke-static {v0, v5, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "ranchu"

    .line 75
    .line 76
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 83
    .line 84
    const-string v1, "MODEL"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v5, "google_sdk"

    .line 90
    .line 91
    invoke-static {v0, v5, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_1

    .line 96
    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v5, "Emulator"

    .line 101
    .line 102
    invoke-static {v0, v5, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_1

    .line 107
    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "Android SDK built for x86"

    .line 112
    .line 113
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    .line 119
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 120
    .line 121
    const-string v1, "MANUFACTURER"

    .line 122
    .line 123
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v1, "Genymotion"

    .line 127
    .line 128
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_1

    .line 133
    .line 134
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 135
    .line 136
    const-string v1, "PRODUCT"

    .line 137
    .line 138
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v5, "sdk"

    .line 142
    .line 143
    invoke-static {v0, v5, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_1

    .line 148
    .line 149
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v5, "vbox86p"

    .line 153
    .line 154
    invoke-static {v0, v5, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_1

    .line 159
    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v5, "emulator"

    .line 164
    .line 165
    invoke-static {v0, v5, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-nez v5, :cond_1

    .line 170
    .line 171
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v1, "simulator"

    .line 175
    .line 176
    invoke-static {v0, v1, v2, v3, v4}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_2

    .line 181
    .line 182
    :cond_1
    const/4 v2, 0x1

    .line 183
    :cond_2
    return v2
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "getDeviceInfo"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "board"

    .line 27
    .line 28
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v0, "bootloader"

    .line 34
    .line 35
    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v0, "brand"

    .line 41
    .line 42
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string v0, "device"

    .line 48
    .line 49
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v0, "display"

    .line 55
    .line 56
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v0, "fingerprint"

    .line 62
    .line 63
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v0, "hardware"

    .line 69
    .line 70
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const-string v0, "host"

    .line 76
    .line 77
    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v0, "id"

    .line 83
    .line 84
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 85
    .line 86
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string v0, "manufacturer"

    .line 90
    .line 91
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v0, "model"

    .line 97
    .line 98
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const-string v0, "product"

    .line 104
    .line 105
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 113
    .line 114
    array-length v2, v1

    .line 115
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "supported32BitAbis"

    .line 124
    .line 125
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 129
    .line 130
    array-length v2, v1

    .line 131
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "supported64BitAbis"

    .line 140
    .line 141
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 145
    .line 146
    array-length v2, v1

    .line 147
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v2, "supportedAbis"

    .line 156
    .line 157
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string v1, "tags"

    .line 161
    .line 162
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 163
    .line 164
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    const-string v1, "type"

    .line 168
    .line 169
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Lmc/c;->b()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    xor-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v2, "isPhysicalDevice"

    .line 185
    .line 186
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    const-string v1, "systemFeatures"

    .line 190
    .line 191
    invoke-direct {p0}, Lmc/c;->a()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    new-instance v1, Ljava/util/HashMap;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v2, "baseOS"

    .line 204
    .line 205
    sget-object v3, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    .line 206
    .line 207
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    sget v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 211
    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const-string v3, "previewSdkInt"

    .line 217
    .line 218
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    const-string v2, "securityPatch"

    .line 222
    .line 223
    sget-object v3, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 224
    .line 225
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    const-string v2, "codename"

    .line 229
    .line 230
    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 231
    .line 232
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    const-string v2, "incremental"

    .line 236
    .line 237
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 238
    .line 239
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const-string v2, "release"

    .line 243
    .line 244
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 245
    .line 246
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    const-string v2, "sdkInt"

    .line 250
    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    const-string v2, "version"

    .line 259
    .line 260
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lmc/c;->b:Landroid/app/ActivityManager;

    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const-string v2, "isLowRamDevice"

    .line 274
    .line 275
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const/16 v1, 0x1a

    .line 279
    .line 280
    const-string v2, "serialNumber"

    .line 281
    .line 282
    if-lt v0, v1, :cond_0

    .line 283
    .line 284
    :try_start_0
    invoke-static {}, Lmc/b;->a()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_0

    .line 289
    :catch_0
    const-string v0, "unknown"

    .line 290
    .line 291
    :goto_0
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 296
    .line 297
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    :goto_1
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 305
    .line 306
    .line 307
    :goto_2
    return-void
.end method
