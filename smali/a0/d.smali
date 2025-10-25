.class abstract La0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La0/d$c;,
        La0/d$a;,
        La0/d$b;
    }
.end annotation


# static fields
.field private static final a:Lr/h;

.field private static final b:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr/h;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lr/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, La0/d;->a:Lr/h;

    .line 8
    .line 9
    new-instance v0, La0/c;

    .line 10
    .line 11
    invoke-direct {v0}, La0/c;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, La0/d;->b:Ljava/util/Comparator;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a([B[B)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, La0/d;->g([B[B)I

    move-result p0

    return p0
.end method

.method private static b([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method

.method private static c(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ge v0, v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [B

    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, [B

    .line 31
    .line 32
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method private static d(La0/e;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, La0/e;->b()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, La0/e;->b()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, La0/e;->c()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p1, p0}, Lu/d;->c(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method static e(Landroid/content/Context;Ljava/util/List;Landroid/os/CancellationSignal;)La0/k$a;
    .locals 6

    .line 1
    const-string v0, "FontProvider.getFontFamilyResult"

    .line 2
    .line 3
    invoke-static {v0}, Lk1/a;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, La0/e;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v4, v3, v5}, La0/d;->f(Landroid/content/pm/PackageManager;La0/e;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-static {p0, p1}, La0/k$a;->b(I[La0/k$b;)La0/k$a;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Lk1/a;->f()V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_0
    :try_start_1
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p0, v3, v4, p2}, La0/d;->h(Landroid/content/Context;La0/e;Ljava/lang/String;Landroid/os/CancellationSignal;)[La0/k$b;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v1, v0}, La0/k$a;->a(ILjava/util/List;)La0/k$a;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-static {}, Lk1/a;->f()V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    invoke-static {}, Lk1/a;->f()V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method static f(Landroid/content/pm/PackageManager;La0/e;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 6

    .line 1
    const-string v0, "FontProvider.getProvider"

    .line 2
    .line 3
    invoke-static {v0}, Lk1/a;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1, p2}, La0/d;->d(La0/e;Landroid/content/res/Resources;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, La0/d$c;

    .line 11
    .line 12
    invoke-virtual {p1}, La0/e;->e()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, La0/e;->f()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v1, v2, p2}, La0/d$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, La0/d;->a:Lr/h;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lr/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lk1/a;->f()V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    :try_start_1
    invoke-virtual {p1}, La0/e;->e()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, La0/e;->f()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    iget-object p1, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    const/16 v1, 0x40

    .line 63
    .line 64
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 69
    .line 70
    invoke-static {p0}, La0/d;->b([Landroid/content/pm/Signature;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sget-object p1, La0/d;->b:Ljava/util/Comparator;

    .line 75
    .line 76
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-ge v2, p1, :cond_2

    .line 84
    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/util/Collection;

    .line 92
    .line 93
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .line 95
    .line 96
    sget-object v1, La0/d;->b:Ljava/util/Comparator;

    .line 97
    .line 98
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p1}, La0/d;->c(Ljava/util/List;Ljava/util/List;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    sget-object p0, La0/d;->a:Lr/h;

    .line 108
    .line 109
    invoke-virtual {p0, v0, v3}, Lr/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lk1/a;->f()V

    .line 113
    .line 114
    .line 115
    return-object v3

    .line 116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    invoke-static {}, Lk1/a;->f()V

    .line 120
    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    return-object p0

    .line 124
    :cond_3
    :try_start_2
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 125
    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v0, "Found content provider "

    .line 132
    .line 133
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, ", but package was not "

    .line 140
    .line 141
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, La0/e;->f()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_4
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 160
    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string p2, "No package found for authority: "

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    invoke-static {}, Lk1/a;->f()V

    .line 184
    .line 185
    .line 186
    throw p0
.end method

.method private static synthetic g([B[B)I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    if-eq v0, v1, :cond_0

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    array-length p1, p1

    .line 7
    sub-int/2addr p0, p1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    aget-byte v2, p0, v1

    .line 15
    .line 16
    aget-byte v3, p1, v1

    .line 17
    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    return v2

    .line 22
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    return v0
.end method

.method static h(Landroid/content/Context;La0/e;Ljava/lang/String;Landroid/os/CancellationSignal;)[La0/k$b;
    .locals 21

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "result_code"

    .line 4
    .line 5
    const-string v2, "font_italic"

    .line 6
    .line 7
    const-string v3, "font_weight"

    .line 8
    .line 9
    const-string v4, "font_ttc_index"

    .line 10
    .line 11
    const-string v5, "file_id"

    .line 12
    .line 13
    const-string v6, "_id"

    .line 14
    .line 15
    const-string v7, "content"

    .line 16
    .line 17
    const-string v8, "FontProvider.query"

    .line 18
    .line 19
    invoke-static {v8}, Lk1/a;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v9, Landroid/net/Uri$Builder;

    .line 28
    .line 29
    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v9, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    new-instance v10, Landroid/net/Uri$Builder;

    .line 45
    .line 46
    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v7, "file"

    .line 58
    .line 59
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object/from16 v7, p0

    .line 68
    .line 69
    invoke-static {v7, v9}, La0/d$a;->a(Landroid/content/Context;Landroid/net/Uri;)La0/d$a;

    .line 70
    .line 71
    .line 72
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 73
    const/4 v10, 0x7

    .line 74
    const/16 v17, 0x0

    .line 75
    .line 76
    :try_start_1
    new-array v12, v10, [Ljava/lang/String;

    .line 77
    .line 78
    const/4 v15, 0x0

    .line 79
    aput-object v6, v12, v15

    .line 80
    .line 81
    const/4 v14, 0x1

    .line 82
    aput-object v5, v12, v14

    .line 83
    .line 84
    const/4 v10, 0x2

    .line 85
    aput-object v4, v12, v10

    .line 86
    .line 87
    const-string v10, "font_variation_settings"

    .line 88
    .line 89
    const/4 v11, 0x3

    .line 90
    aput-object v10, v12, v11

    .line 91
    .line 92
    const/4 v10, 0x4

    .line 93
    aput-object v3, v12, v10

    .line 94
    .line 95
    const/4 v10, 0x5

    .line 96
    aput-object v2, v12, v10

    .line 97
    .line 98
    const/4 v10, 0x6

    .line 99
    aput-object v1, v12, v10

    .line 100
    .line 101
    const-string v10, "ContentQueryWrapper.query"

    .line 102
    .line 103
    invoke-static {v10}, Lk1/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 104
    .line 105
    .line 106
    :try_start_2
    const-string v13, "query = ?"

    .line 107
    .line 108
    new-array v11, v14, [Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, La0/e;->g()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    aput-object v10, v11, v15

    .line 115
    .line 116
    const/16 v16, 0x0

    .line 117
    .line 118
    move-object v10, v7

    .line 119
    move-object/from16 v18, v11

    .line 120
    .line 121
    move-object v11, v9

    .line 122
    move-object/from16 v19, v8

    .line 123
    .line 124
    move v8, v14

    .line 125
    move-object/from16 v14, v18

    .line 126
    .line 127
    move-object/from16 v15, v16

    .line 128
    .line 129
    move-object/from16 v16, p3

    .line 130
    .line 131
    invoke-interface/range {v10 .. v16}, La0/d$a;->b(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 132
    .line 133
    .line 134
    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    :try_start_3
    invoke-static {}, Lk1/a;->f()V

    .line 136
    .line 137
    .line 138
    if-eqz v10, :cond_6

    .line 139
    .line 140
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-lez v11, :cond_6

    .line 145
    .line 146
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    new-instance v11, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-eqz v12, :cond_5

    .line 180
    .line 181
    const/4 v12, -0x1

    .line 182
    if-eq v1, v12, :cond_0

    .line 183
    .line 184
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    goto :goto_1

    .line 189
    :cond_0
    const/4 v15, 0x0

    .line 190
    :goto_1
    if-eq v4, v12, :cond_1

    .line 191
    .line 192
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    goto :goto_2

    .line 197
    :cond_1
    const/4 v13, 0x0

    .line 198
    :goto_2
    if-ne v5, v12, :cond_2

    .line 199
    .line 200
    move v14, v13

    .line 201
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 202
    .line 203
    .line 204
    move-result-wide v12

    .line 205
    invoke-static {v9, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    goto :goto_3

    .line 210
    :cond_2
    move v14, v13

    .line 211
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v12

    .line 215
    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    :goto_3
    const/4 v13, -0x1

    .line 220
    if-eq v3, v13, :cond_3

    .line 221
    .line 222
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 223
    .line 224
    .line 225
    move-result v16

    .line 226
    goto :goto_4

    .line 227
    :cond_3
    const/16 v16, 0x190

    .line 228
    .line 229
    :goto_4
    move/from16 v20, v16

    .line 230
    .line 231
    if-eq v2, v13, :cond_4

    .line 232
    .line 233
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    if-ne v13, v8, :cond_4

    .line 238
    .line 239
    move v13, v8

    .line 240
    move/from16 v8, v20

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_4
    move/from16 v8, v20

    .line 244
    .line 245
    const/4 v13, 0x0

    .line 246
    :goto_5
    invoke-static {v12, v14, v8, v13, v15}, La0/k$b;->a(Landroid/net/Uri;IIZI)La0/k$b;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    .line 252
    .line 253
    const/4 v8, 0x1

    .line 254
    goto :goto_0

    .line 255
    :cond_5
    move-object v8, v11

    .line 256
    goto :goto_6

    .line 257
    :cond_6
    move-object/from16 v8, v19

    .line 258
    .line 259
    :goto_6
    if-eqz v10, :cond_7

    .line 260
    .line 261
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 262
    .line 263
    .line 264
    :cond_7
    invoke-interface {v7}, La0/d$a;->close()V

    .line 265
    .line 266
    .line 267
    const/4 v0, 0x0

    .line 268
    new-array v0, v0, [La0/k$b;

    .line 269
    .line 270
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, [La0/k$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 275
    .line 276
    invoke-static {}, Lk1/a;->f()V

    .line 277
    .line 278
    .line 279
    return-object v0

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    move-object/from16 v17, v10

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :catchall_1
    move-exception v0

    .line 285
    :try_start_5
    invoke-static {}, Lk1/a;->f()V

    .line 286
    .line 287
    .line 288
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 289
    :catchall_2
    move-exception v0

    .line 290
    :goto_7
    if-eqz v17, :cond_8

    .line 291
    .line 292
    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 293
    .line 294
    .line 295
    :cond_8
    invoke-interface {v7}, La0/d$a;->close()V

    .line 296
    .line 297
    .line 298
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 299
    :catchall_3
    move-exception v0

    .line 300
    invoke-static {}, Lk1/a;->f()V

    .line 301
    .line 302
    .line 303
    throw v0
.end method
