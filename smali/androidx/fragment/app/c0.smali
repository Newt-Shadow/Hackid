.class public final Landroidx/fragment/app/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c0$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/i0;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/i0;)V
    .locals 1

    .line 1
    const-string v0, "fragmentManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/i0$k;->onFragmentActivityCreated(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final b(Landroidx/fragment/app/p;Z)V
    .locals 4

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->w0()Landroidx/fragment/app/a0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "parent.getParentFragmentManager()"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/c0;->b(Landroidx/fragment/app/p;Z)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/fragment/app/c0$a;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/fragment/app/c0$a;->b()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 72
    .line 73
    invoke-virtual {v2, v3, p1, v0}, Landroidx/fragment/app/i0$k;->onFragmentAttached(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-void
.end method

.method public final c(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/c0;->c(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/i0$k;->onFragmentCreated(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final d(Landroidx/fragment/app/p;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c0;->d(Landroidx/fragment/app/p;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/i0$k;->onFragmentDestroyed(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final e(Landroidx/fragment/app/p;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c0;->e(Landroidx/fragment/app/p;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/i0$k;->onFragmentDetached(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final f(Landroidx/fragment/app/p;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c0;->f(Landroidx/fragment/app/p;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/i0$k;->onFragmentPaused(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final g(Landroidx/fragment/app/p;Z)V
    .locals 4

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->w0()Landroidx/fragment/app/a0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->f()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "parent.getParentFragmentManager()"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/c0;->g(Landroidx/fragment/app/p;Z)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/fragment/app/c0$a;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/fragment/app/c0$a;->b()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 72
    .line 73
    invoke-virtual {v2, v3, p1, v0}, Landroidx/fragment/app/i0$k;->onFragmentPreAttached(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-void
.end method

.method public final h(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/c0;->h(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/i0$k;->onFragmentPreCreated(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final i(Landroidx/fragment/app/p;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c0;->i(Landroidx/fragment/app/p;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/i0$k;->onFragmentResumed(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final j(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "outState"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "parent.getParentFragmentManager()"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/c0;->j(Landroidx/fragment/app/p;Landroid/os/Bundle;Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 53
    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 67
    .line 68
    invoke-virtual {v1, v2, p1, p2}, Landroidx/fragment/app/i0$k;->onFragmentSaveInstanceState(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method public final k(Landroidx/fragment/app/p;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c0;->k(Landroidx/fragment/app/p;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/i0$k;->onFragmentStarted(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final l(Landroidx/fragment/app/p;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c0;->l(Landroidx/fragment/app/p;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/i0$k;->onFragmentStopped(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final m(Landroidx/fragment/app/p;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "v"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "parent.getParentFragmentManager()"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/c0;->m(Landroidx/fragment/app/p;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 53
    .line 54
    if-eqz p4, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 67
    .line 68
    invoke-virtual {v1, v2, p1, p2, p3}, Landroidx/fragment/app/i0$k;->onFragmentViewCreated(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method public final n(Landroidx/fragment/app/p;Z)V
    .locals 3

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->z0()Landroidx/fragment/app/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/p;->getParentFragmentManager()Landroidx/fragment/app/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "parent.getParentFragmentManager()"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/i0;->y0()Landroidx/fragment/app/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c0;->n(Landroidx/fragment/app/p;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/fragment/app/c0$a;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/i0;

    .line 62
    .line 63
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/i0$k;->onFragmentViewDestroyed(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public final o(Landroidx/fragment/app/i0$k;Z)V
    .locals 2

    .line 1
    const-string v0, "cb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    new-instance v1, Landroidx/fragment/app/c0$a;

    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Landroidx/fragment/app/c0$a;-><init>(Landroidx/fragment/app/i0$k;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final p(Landroidx/fragment/app/i0$k;)V
    .locals 4

    .line 1
    const-string v0, "cb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroidx/fragment/app/c0$a;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroidx/fragment/app/c0$a;->a()Landroidx/fragment/app/i0$k;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0

    .line 47
    throw p1
.end method
