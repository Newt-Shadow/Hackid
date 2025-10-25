.class public abstract Landroidx/fragment/app/u;
.super Landroidx/activity/j;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/b$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/u$a;
    }
.end annotation


# static fields
.field static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

.field final mFragments:Landroidx/fragment/app/y;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/activity/j;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/u$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/fragment/app/u$a;-><init>(Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/fragment/app/y;->b(Landroidx/fragment/app/a0;)Landroidx/fragment/app/y;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 14
    .line 15
    new-instance v0, Landroidx/lifecycle/n;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mStopped:Z

    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/u;->u()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic q(Landroidx/fragment/app/u;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/u;->x(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic r(Landroidx/fragment/app/u;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/u;->w(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic s(Landroidx/fragment/app/u;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/u;->y(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic t(Landroidx/fragment/app/u;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/u;->v()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private u()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/j;->getSavedStateRegistry()Lh1/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/fragment/app/q;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/u;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "android:support:lifecycle"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lh1/d;->h(Ljava/lang/String;Lh1/d$c;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/r;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/u;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/activity/j;->addOnConfigurationChangedListener(Lc0/a;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/fragment/app/s;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/u;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/activity/j;->addOnNewIntentListener(Lc0/a;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroidx/fragment/app/t;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/u;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/activity/j;->addOnContextAvailableListener(Le/b;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private synthetic v()Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/u;->markFragmentsCreated()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/i$a;->ON_STOP:Landroidx/lifecycle/i$a;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->h(Landroidx/lifecycle/i$a;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private synthetic w(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/y;->m()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic x(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/y;->m()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic y(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/y;->a(Landroidx/fragment/app/p;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static z(Landroidx/fragment/app/i0;Landroidx/lifecycle/i$b;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/i0;->v0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/fragment/app/p;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getHost()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getChildFragmentManager()Landroidx/fragment/app/i0;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, p1}, Landroidx/fragment/app/u;->z(Landroidx/fragment/app/i0;Landroidx/lifecycle/i$b;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    or-int/2addr v0, v2

    .line 40
    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/p;->mViewLifecycleOwner:Landroidx/fragment/app/u0;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/fragment/app/u0;->getLifecycle()Landroidx/lifecycle/i;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$b;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v4, Landroidx/lifecycle/i$b;->d:Landroidx/lifecycle/i$b;

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroidx/lifecycle/i$b;->b(Landroidx/lifecycle/i$b;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v0, v1, Landroidx/fragment/app/p;->mViewLifecycleOwner:Landroidx/fragment/app/u0;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroidx/fragment/app/u0;->f(Landroidx/lifecycle/i$b;)V

    .line 64
    .line 65
    .line 66
    move v0, v3

    .line 67
    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/p;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/lifecycle/n;->b()Landroidx/lifecycle/i$b;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget-object v4, Landroidx/lifecycle/i$b;->d:Landroidx/lifecycle/i$b;

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Landroidx/lifecycle/i$b;->b(Landroidx/lifecycle/i$b;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    iget-object v0, v1, Landroidx/fragment/app/p;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroidx/lifecycle/n;->m(Landroidx/lifecycle/i$b;)V

    .line 84
    .line 85
    .line 86
    move v0, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    return v0
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/y;->n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p4}, Landroidx/core/app/g;->shouldDumpInternalState([Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Local FragmentActivity "

    .line 15
    .line 16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, " State:"

    .line 31
    .line 32
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "  "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "mCreated="

    .line 56
    .line 57
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v1, p0, Landroidx/fragment/app/u;->mCreated:Z

    .line 61
    .line 62
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 63
    .line 64
    .line 65
    const-string v1, " mResumed="

    .line 66
    .line 67
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v1, p0, Landroidx/fragment/app/u;->mResumed:Z

    .line 71
    .line 72
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 73
    .line 74
    .line 75
    const-string v1, " mStopped="

    .line 76
    .line 77
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v1, p0, Landroidx/fragment/app/u;->mStopped:Z

    .line 81
    .line 82
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    invoke-static {p0}, Landroidx/loader/app/a;->b(Landroidx/lifecycle/m;)Landroidx/loader/app/a;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v0, p2, p3, p4}, Landroidx/loader/app/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/fragment/app/y;->l()Landroidx/fragment/app/i0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/i0;->X(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->l()Landroidx/fragment/app/i0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/loader/app/a;->b(Landroidx/lifecycle/m;)Landroidx/loader/app/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method markFragmentsCreated()V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/i$b;->c:Landroidx/lifecycle/i$b;

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/fragment/app/u;->z(Landroidx/fragment/app/i0;Landroidx/lifecycle/i$b;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->m()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/p;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/i$a;->ON_CREATE:Landroidx/lifecycle/i$a;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/n;->h(Landroidx/lifecycle/i$a;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/y;->e()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/u;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/u;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/y;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 10
    .line 11
    sget-object v1, Landroidx/lifecycle/i$a;->ON_DESTROY:Landroidx/lifecycle/i$a;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->h(Landroidx/lifecycle/i$a;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/j;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v0, 0x6

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroidx/fragment/app/y;->d(Landroid/view/MenuItem;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mResumed:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/y;->g()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 13
    .line 14
    sget-object v1, Landroidx/lifecycle/i$a;->ON_PAUSE:Landroidx/lifecycle/i$a;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->h(Landroidx/lifecycle/i$a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/u;->onResumeFragments()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->m()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/j;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->m()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mResumed:Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/y;->k()Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/i$a;->ON_RESUME:Landroidx/lifecycle/i$a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->h(Landroidx/lifecycle/i$a;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/y;->h()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->m()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mStopped:Z

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/fragment/app/u;->mCreated:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mCreated:Z

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/y;->c()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/y;->k()Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 30
    .line 31
    sget-object v1, Landroidx/lifecycle/i$a;->ON_START:Landroidx/lifecycle/i$a;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->h(Landroidx/lifecycle/i$a;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->m()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/u;->mStopped:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/u;->markFragmentsCreated()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragments:Landroidx/fragment/app/y;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/y;->j()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 16
    .line 17
    sget-object v1, Landroidx/lifecycle/i$a;->ON_STOP:Landroidx/lifecycle/i$a;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->h(Landroidx/lifecycle/i$a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/w;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/app/b;->w(Landroid/app/Activity;Landroidx/core/app/w;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/w;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/app/b;->x(Landroid/app/Activity;Landroidx/core/app/w;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/p;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/u;->startActivityFromFragment(Landroidx/fragment/app/p;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/p;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2
    invoke-static {p0, p2, v0, p4}, Landroidx/core/app/b;->z(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/p;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/p;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    move v3, p3

    .line 3
    if-ne v3, v0, :cond_0

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    move v6, p6

    .line 11
    move/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    invoke-static/range {v1 .. v8}, Landroidx/core/app/b;->A(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/p;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/app/b;->r(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/activity/j;->invalidateMenu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/app/b;->t(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/app/b;->B(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
