.class Landroidx/fragment/app/p$c;
.super Landroidx/fragment/app/p$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/p;


# direct methods
.method constructor <init>(Landroidx/fragment/app/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/p$c;->a:Landroidx/fragment/app/p;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroidx/fragment/app/p$m;-><init>(Landroidx/fragment/app/p$b;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p$c;->a:Landroidx/fragment/app/p;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/p;->mSavedStateRegistryController:Lh1/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lh1/e;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/p$c;->a:Landroidx/fragment/app/p;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/lifecycle/d0;->c(Lh1/f;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/fragment/app/p$c;->a:Landroidx/fragment/app/p;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/fragment/app/p;->mSavedFragmentState:Landroid/os/Bundle;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v1, "registryState"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/p$c;->a:Landroidx/fragment/app/p;

    .line 28
    .line 29
    iget-object v1, v1, Landroidx/fragment/app/p;->mSavedStateRegistryController:Lh1/e;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lh1/e;->d(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
