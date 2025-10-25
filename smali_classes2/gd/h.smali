.class abstract Lgd/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Ljava/lang/String;)I
    .locals 8

    .line 1
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    invoke-static/range {v0 .. v5}, Lrd/n;->Y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-le v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-char v3, Ljava/io/File;->separatorChar:C

    .line 26
    .line 27
    if-ne v0, v3, :cond_1

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x4

    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v2, p0

    .line 34
    invoke-static/range {v2 .. v7}, Lrd/n;->Y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ltz v0, :cond_1

    .line 39
    .line 40
    sget-char v3, Ljava/io/File;->separatorChar:C

    .line 41
    .line 42
    add-int/lit8 v4, v0, 0x1

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x4

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v2, p0

    .line 48
    invoke-static/range {v2 .. v7}, Lrd/n;->Y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ltz v0, :cond_0

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    return v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :cond_1
    return v1

    .line 62
    :cond_2
    const/16 v2, 0x3a

    .line 63
    .line 64
    if-lez v0, :cond_3

    .line 65
    .line 66
    add-int/lit8 v3, v0, -0x1

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ne v3, v2, :cond_3

    .line 73
    .line 74
    add-int/2addr v0, v1

    .line 75
    return v0

    .line 76
    :cond_3
    const/4 v1, -0x1

    .line 77
    const/4 v3, 0x0

    .line 78
    if-ne v0, v1, :cond_4

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v2, v3, v0, v1}, Lrd/n;->Q(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    return p0

    .line 93
    :cond_4
    return v3
.end method

.method public static final b(Ljava/io/File;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "getPath(...)"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lgd/h;->a(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-lez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public static final c(Ljava/io/File;)Lgd/e;
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lgd/h;->a(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "substring(...)"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 v0, 0x1

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    move p0, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move p0, v1

    .line 44
    :goto_0
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    new-array v5, v0, [C

    .line 52
    .line 53
    sget-char p0, Ljava/io/File;->separatorChar:C

    .line 54
    .line 55
    aput-char p0, v5, v1

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x6

    .line 60
    const/4 v9, 0x0

    .line 61
    invoke-static/range {v4 .. v9}, Lrd/n;->y0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/Iterable;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    invoke-static {p0, v1}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/lang/String;

    .line 93
    .line 94
    new-instance v3, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object p0, v0

    .line 104
    :goto_2
    new-instance v0, Lgd/e;

    .line 105
    .line 106
    new-instance v1, Ljava/io/File;

    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1, p0}, Lgd/e;-><init>(Ljava/io/File;Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    return-object v0
.end method
