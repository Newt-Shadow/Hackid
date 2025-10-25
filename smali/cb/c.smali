.class public final Lcb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb/c$a;
    }
.end annotation


# static fields
.field public static final j:Lcb/c$a;

.field private static final k:I

.field private static final l:I


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lio/flutter/plugin/common/MethodChannel$Result;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/util/ArrayList;

.field private h:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcb/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcb/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcb/c;->j:Lcb/c$a;

    .line 8
    .line 9
    const-class v0, Lcb/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, 0x2b

    .line 16
    .line 17
    const v2, 0xffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v1, v2

    .line 21
    sput v1, Lcb/c;->k:I

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, 0x53

    .line 28
    .line 29
    and-int/2addr v0, v2

    .line 30
    sput v0, Lcb/c;->l:I

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcb/c;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcb/c;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcb/c;-><init>(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic a(Lcb/c;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcb/c;->f(Lcb/c;Z)V

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcb/c;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcb/c;->l:I

    .line 2
    .line 3
    return v0
.end method

.method private final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcb/c;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 3
    .line 4
    return-void
.end method

.method private final e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcb/c;->h:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcb/c;->e:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "dir"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcb/b;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcb/b;-><init>(Lcb/c;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static final f(Lcb/c;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/c;->h:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final l(ILandroid/content/Intent;)Z
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcb/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, v1}, Lcb/c;->e(Z)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcb/f;->a:Lcb/f;

    .line 18
    .line 19
    iget-object v4, p0, Lcb/c;->a:Landroid/app/Activity;

    .line 20
    .line 21
    iget v6, p0, Lcb/c;->f:I

    .line 22
    .line 23
    iget-boolean v7, p0, Lcb/c;->d:Z

    .line 24
    .line 25
    iget-object p1, p0, Lcb/c;->e:Ljava/lang/String;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    :cond_2
    move-object v8, p1

    .line 32
    move-object v3, p0

    .line 33
    move-object v5, p2

    .line 34
    invoke-virtual/range {v2 .. v8}, Lcb/f;->x(Lcb/c;Landroid/app/Activity;Landroid/content/Intent;IZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return v1
.end method

.method private final m(ILandroid/content/Intent;)Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Lcb/c;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_2
    invoke-direct {p0, v1}, Lcb/c;->o(Landroid/net/Uri;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    :goto_0
    return p2
.end method

.method private final o(Landroid/net/Uri;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v1}, Lcb/c;->e(Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    sget-object v2, Lcb/f;->a:Lcb/f;

    .line 10
    .line 11
    iget-object v3, p0, Lcb/c;->a:Landroid/app/Activity;

    .line 12
    .line 13
    iget-object v4, p0, Lcb/c;->i:[B

    .line 14
    .line 15
    invoke-virtual {v2, v3, p1, v4}, Lcb/f;->D(Landroid/content/Context;Landroid/net/Uri;[B)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object p1, v2

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcb/c;->h(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    move v0, v1

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    const-string v1, "FilePickerDelegate"

    .line 34
    .line 35
    const-string v2, "Error while saving file"

    .line 36
    .line 37
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, v2, p1}, Lcb/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return v0
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcb/c;->e(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcb/c;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcb/c;->d()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcb/c;->e(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcb/c;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    instance-of v2, p1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move-object v2, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v1

    .line 27
    :goto_0
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    goto :goto_6

    .line 32
    :cond_2
    :goto_1
    instance-of v2, p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    check-cast p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    move-object p1, v1

    .line 40
    :goto_2
    if-eqz p1, :cond_7

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    instance-of v4, v3, Lcb/a;

    .line 62
    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    check-cast v3, Lcb/a;

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_5
    move-object v3, v1

    .line 69
    :goto_4
    if-eqz v3, :cond_6

    .line 70
    .line 71
    invoke-virtual {v3}, Lcb/a;->a()Ljava/util/HashMap;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_5

    .line 76
    :cond_6
    move-object v3, v1

    .line 77
    :goto_5
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_7
    :goto_6
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcb/c;->d()V

    .line 87
    .line 88
    .line 89
    :cond_8
    return-void
.end method

.method public final i()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcb/c;->a:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcb/c;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcb/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcb/c;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    sget v0, Lcb/c;->l:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcb/c;->m(ILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcb/c;->k:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p2, p3}, Lcb/c;->l(ILandroid/content/Intent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p1, "unknown_activity"

    .line 20
    .line 21
    const-string p2, "Unknown activity error, please file an issue."

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcb/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method public final p(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/c;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final q([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/c;->i:[B

    .line 2
    .line 3
    return-void
.end method

.method public final r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcb/c;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final s(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/c;->h:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    return-void
.end method

.method public final t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcb/c;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcb/c;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final v(Lio/flutter/plugin/common/MethodChannel$Result;)Z
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcb/c;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcb/c;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
