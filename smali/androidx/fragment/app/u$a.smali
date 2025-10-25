.class Landroidx/fragment/app/u$a;
.super Landroidx/fragment/app/a0;
.source "SourceFile"

# interfaces
.implements Landroidx/core/content/c;
.implements Landroidx/core/content/d;
.implements Landroidx/core/app/q;
.implements Landroidx/core/app/r;
.implements Landroidx/lifecycle/m0;
.implements Landroidx/activity/y;
.implements Lf/f;
.implements Lh1/f;
.implements Landroidx/fragment/app/m0;
.implements Ld0/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Landroidx/fragment/app/u;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/u;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/i0;Landroidx/fragment/app/p;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/fragment/app/u;->onAttachFragment(Landroidx/fragment/app/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addMenuProvider(Ld0/b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->addMenuProvider(Ld0/b0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addOnConfigurationChangedListener(Lc0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->addOnConfigurationChangedListener(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addOnMultiWindowModeChangedListener(Lc0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->addOnMultiWindowModeChangedListener(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addOnPictureInPictureModeChangedListener(Lc0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->addOnPictureInPictureModeChangedListener(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addOnTrimMemoryListener(Lc0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->addOnTrimMemoryListener(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public getActivityResultRegistry()Lf/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/j;->getActivityResultRegistry()Lf/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 4
    .line 5
    return-object v0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/j;->getOnBackPressedDispatcher()Landroidx/activity/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSavedStateRegistry()Lh1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/j;->getSavedStateRegistry()Lh1/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/j;->getViewModelStore()Landroidx/lifecycle/l0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/u;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic j()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/u$a;->r()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/core/app/b;->y(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/u$a;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/j;->invalidateMenu()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r()Landroidx/fragment/app/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public removeMenuProvider(Ld0/b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->removeMenuProvider(Ld0/b0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeOnConfigurationChangedListener(Lc0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->removeOnConfigurationChangedListener(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeOnMultiWindowModeChangedListener(Lc0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->removeOnMultiWindowModeChangedListener(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeOnPictureInPictureModeChangedListener(Lc0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->removeOnPictureInPictureModeChangedListener(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeOnTrimMemoryListener(Lc0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u$a;->f:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/activity/j;->removeOnTrimMemoryListener(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
