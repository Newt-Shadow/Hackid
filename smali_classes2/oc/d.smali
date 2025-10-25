.class public final Loc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private final c:Ldev/fluttercommunity/plus/share/a;

.field private final d:Lxc/d;

.field private final e:Lxc/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ldev/fluttercommunity/plus/share/a;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "manager"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Loc/d;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Loc/d;->b:Landroid/app/Activity;

    .line 17
    .line 18
    iput-object p3, p0, Loc/d;->c:Ldev/fluttercommunity/plus/share/a;

    .line 19
    .line 20
    new-instance p1, Loc/b;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Loc/b;-><init>(Loc/d;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Loc/d;->d:Lxc/d;

    .line 30
    .line 31
    new-instance p1, Loc/c;

    .line 32
    .line 33
    invoke-direct {p1}, Loc/c;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Loc/d;->e:Lxc/d;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic a(Loc/d;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Loc/d;->m(Loc/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()I
    .locals 1

    .line 1
    invoke-static {}, Loc/d;->l()I

    move-result v0

    return v0
.end method

.method private final c()V
    .locals 5

    .line 1
    invoke-direct {p0}, Loc/d;->j()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    array-length v4, v1

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    move v4, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v4, v2

    .line 25
    :goto_0
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v2

    .line 29
    :cond_2
    :goto_1
    if-nez v3, :cond_4

    .line 30
    .line 31
    array-length v3, v1

    .line 32
    :goto_2
    if-ge v2, v3, :cond_3

    .line 33
    .line 34
    aget-object v4, v1, v2

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 43
    .line 44
    .line 45
    :cond_4
    return-void
.end method

.method private final d(Ljava/io/File;)Ljava/io/File;
    .locals 8

    .line 1
    invoke-direct {p0}, Loc/d;->j()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x4

    .line 26
    const/4 v7, 0x0

    .line 27
    move-object v2, p1

    .line 28
    move-object v3, v1

    .line 29
    invoke-static/range {v2 .. v7}, Lgd/g;->l(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method private final e(Ljava/io/File;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Loc/d;->j()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "getCanonicalPath(...)"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {p1, v1, v0, v2, v3}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    return v0
.end method

.method private final f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Loc/d;->b:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Loc/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    :goto_0
    return-object v0
.end method

.method private final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Loc/d;->e:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "/"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v2, v3, v0, v1}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v5, "/"

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x6

    .line 20
    const/4 v9, 0x0

    .line 21
    move-object v4, p1

    .line 22
    invoke-static/range {v4 .. v9}, Lrd/n;->Z(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const-string p1, "*"

    .line 37
    .line 38
    :goto_1
    return-object p1
.end method

.method private final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Loc/d;->d:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0}, Loc/d;->f()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "share_plus"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private final k(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, Ljava/io/File;

    .line 29
    .line 30
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v2}, Loc/d;->e(Ljava/io/File;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-direct {p0, v2}, Loc/d;->d(Ljava/io/File;)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {p0}, Loc/d;->f()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {p0}, Loc/d;->i()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3, v1}, Landroidx/core/content/b;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 60
    .line 61
    invoke-direct {p0}, Loc/d;->j()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "Shared file can not be located in \'"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, "\'"

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_1
    return-object v0
.end method

.method private static final l()I
    .locals 1

    .line 1
    const/high16 v0, 0x2000000

    return v0
.end method

.method private static final m(Loc/d;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Loc/d;->f()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ".flutter.share_provider"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private final n(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    :cond_0
    const-string v2, "*/*"

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    invoke-static {p1}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    invoke-static {p1}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Lyc/m;->j(Ljava/util/List;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-gt v1, v3, :cond_4

    .line 41
    .line 42
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v0, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    invoke-direct {p0, v0}, Loc/d;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {p0, v4}, Loc/d;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v0, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p0, v0}, Loc/d;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, "/*"

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_3
    if-eq v1, v3, :cond_4

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move-object v2, v0

    .line 105
    :cond_5
    return-object v2
.end method

.method private final r(Landroid/content/Intent;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Loc/d;->b:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/16 p2, 0x5873

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/high16 v0, 0x10000000

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget-object p2, p0, Loc/d;->c:Ldev/fluttercommunity/plus/share/a;

    .line 31
    .line 32
    invoke-virtual {p2}, Ldev/fluttercommunity/plus/share/a;->d()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p2, p0, Loc/d;->a:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public final o(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loc/d;->b:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.action.SEND"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string v1, "text/plain"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v1, "android.intent.extra.TEXT"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    const-string p1, "android.intent.extra.SUBJECT"

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Loc/d;->a:Landroid/content/Context;

    .line 37
    .line 38
    new-instance v1, Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v2, p0, Loc/d;->a:Landroid/content/Context;

    .line 41
    .line 42
    const-class v3, Ldev/fluttercommunity/plus/share/SharePlusPendingIntent;

    .line 43
    .line 44
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    const/high16 v2, 0x8000000

    .line 48
    .line 49
    invoke-direct {p0}, Loc/d;->g()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    or-int/2addr v2, v3

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static {p2, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {v0, p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1, p3}, Loc/d;->r(Landroid/content/Intent;Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final q(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const-string v0, "paths"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Loc/d;->c()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Loc/d;->k(Ljava/util/List;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-static {p3}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    move v1, v3

    .line 38
    :goto_1
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p3, p4, p5}, Loc/d;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v4, "android.intent.extra.STREAM"

    .line 49
    .line 50
    if-ne v1, v3, :cond_6

    .line 51
    .line 52
    move-object v1, p2

    .line 53
    check-cast v1, Ljava/util/Collection;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v1, v2

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    :goto_2
    move v1, v3

    .line 67
    :goto_3
    if-nez v1, :cond_5

    .line 68
    .line 69
    invoke-static {p2}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Ljava/lang/String;

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    const-string p2, "*/*"

    .line 77
    .line 78
    :goto_4
    const-string v1, "android.intent.action.SEND"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/os/Parcelable;

    .line 91
    .line 92
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_6
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p2}, Loc/d;->n(Ljava/util/List;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    :goto_5
    if-eqz p3, :cond_7

    .line 112
    .line 113
    const-string p2, "android.intent.extra.TEXT"

    .line 114
    .line 115
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    :cond_7
    if-eqz p4, :cond_8

    .line 119
    .line 120
    const-string p2, "android.intent.extra.SUBJECT"

    .line 121
    .line 122
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    :cond_8
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const/4 p2, 0x0

    .line 129
    if-eqz p5, :cond_9

    .line 130
    .line 131
    iget-object p3, p0, Loc/d;->a:Landroid/content/Context;

    .line 132
    .line 133
    new-instance p4, Landroid/content/Intent;

    .line 134
    .line 135
    iget-object v1, p0, Loc/d;->a:Landroid/content/Context;

    .line 136
    .line 137
    const-class v3, Ldev/fluttercommunity/plus/share/SharePlusPendingIntent;

    .line 138
    .line 139
    invoke-direct {p4, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .line 141
    .line 142
    const/high16 v1, 0x8000000

    .line 143
    .line 144
    invoke-direct {p0}, Loc/d;->g()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    or-int/2addr v1, v3

    .line 149
    invoke-static {p3, v2, p4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-static {v0, p2, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    goto :goto_6

    .line 162
    :cond_9
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    :goto_6
    invoke-direct {p0}, Loc/d;->f()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    const/high16 p4, 0x10000

    .line 175
    .line 176
    invoke-virtual {p3, p2, p4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    const-string p4, "queryIntentActivities(...)"

    .line 181
    .line 182
    invoke-static {p3, p4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    check-cast p3, Ljava/lang/Iterable;

    .line 186
    .line 187
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    :cond_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result p4

    .line 195
    if-eqz p4, :cond_b

    .line 196
    .line 197
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p4

    .line 201
    check-cast p4, Landroid/content/pm/ResolveInfo;

    .line 202
    .line 203
    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 204
    .line 205
    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_a

    .line 216
    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Landroid/net/Uri;

    .line 222
    .line 223
    invoke-direct {p0}, Loc/d;->f()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const/4 v3, 0x3

    .line 228
    invoke-virtual {v2, p4, v1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 229
    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_b
    invoke-static {p2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {p0, p2, p5}, Loc/d;->r(Landroid/content/Intent;Z)V

    .line 236
    .line 237
    .line 238
    return-void
.end method
