.class public abstract Landroidx/lifecycle/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx0/a$b;

.field public static final b:Lx0/a$b;

.field public static final c:Lx0/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/d0$b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/d0$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/lifecycle/d0;->a:Lx0/a$b;

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/d0$c;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/lifecycle/d0$c;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/lifecycle/d0;->b:Lx0/a$b;

    .line 14
    .line 15
    new-instance v0, Landroidx/lifecycle/d0$a;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/lifecycle/d0$a;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/lifecycle/d0;->c:Lx0/a$b;

    .line 21
    .line 22
    return-void
.end method

.method private static final a(Lh1/f;Landroidx/lifecycle/m0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/a0;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/d0;->d(Lh1/f;)Landroidx/lifecycle/e0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Landroidx/lifecycle/d0;->e(Landroidx/lifecycle/m0;)Landroidx/lifecycle/f0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/lifecycle/f0;->e()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/lifecycle/a0;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/a0$a;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Landroidx/lifecycle/e0;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0, p3}, Landroidx/lifecycle/a0$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/a0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroidx/lifecycle/f0;->e()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-object v0
.end method

.method public static final b(Lx0/a;)Landroidx/lifecycle/a0;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/d0;->a:Lx0/a$b;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lx0/a;->a(Lx0/a$b;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lh1/f;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    sget-object v1, Landroidx/lifecycle/d0;->b:Lx0/a$b;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lx0/a;->a(Lx0/a$b;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/lifecycle/m0;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object v2, Landroidx/lifecycle/d0;->c:Lx0/a$b;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lx0/a;->a(Lx0/a$b;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/os/Bundle;

    .line 33
    .line 34
    sget-object v3, Landroidx/lifecycle/k0$d;->d:Lx0/a$b;

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lx0/a;->a(Lx0/a$b;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-static {v0, v1, p0, v2}, Landroidx/lifecycle/d0;->a(Lh1/f;Landroidx/lifecycle/m0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/a0;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public static final c(Lh1/f;)V
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Landroidx/lifecycle/i$b;->b:Landroidx/lifecycle/i$b;

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Landroidx/lifecycle/i$b;->c:Landroidx/lifecycle/i$b;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-interface {p0}, Lh1/f;->getSavedStateRegistry()Lh1/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lh1/d;->c(Ljava/lang/String;)Lh1/d$c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Landroidx/lifecycle/e0;

    .line 41
    .line 42
    invoke-interface {p0}, Lh1/f;->getSavedStateRegistry()Lh1/d;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v3, p0

    .line 47
    check-cast v3, Landroidx/lifecycle/m0;

    .line 48
    .line 49
    invoke-direct {v0, v2, v3}, Landroidx/lifecycle/e0;-><init>(Lh1/d;Landroidx/lifecycle/m0;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p0}, Lh1/f;->getSavedStateRegistry()Lh1/d;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v1, v0}, Lh1/d;->h(Ljava/lang/String;Lh1/d$c;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/i;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance v1, Landroidx/lifecycle/b0;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Landroidx/lifecycle/b0;-><init>(Landroidx/lifecycle/e0;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/l;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void

    .line 72
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string v0, "Failed requirement."

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static final d(Lh1/f;)Landroidx/lifecycle/e0;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lh1/f;->getSavedStateRegistry()Lh1/d;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lh1/d;->c(Ljava/lang/String;)Lh1/d$c;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    instance-of v0, p0, Landroidx/lifecycle/e0;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast p0, Landroidx/lifecycle/e0;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public static final e(Landroidx/lifecycle/m0;)Landroidx/lifecycle/f0;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/k0;

    .line 7
    .line 8
    new-instance v1, Landroidx/lifecycle/d0$d;

    .line 9
    .line 10
    invoke-direct {v1}, Landroidx/lifecycle/d0$d;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/k0;-><init>(Landroidx/lifecycle/m0;Landroidx/lifecycle/k0$c;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 17
    .line 18
    const-class v1, Landroidx/lifecycle/f0;

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/k0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/j0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroidx/lifecycle/f0;

    .line 25
    .line 26
    return-object p0
.end method
