.class Landroidx/fragment/app/p$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/p;->performCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Landroidx/fragment/app/p$g;->a:Landroidx/fragment/app/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/m;Landroidx/lifecycle/i$a;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/i$a;->ON_STOP:Landroidx/lifecycle/i$a;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/fragment/app/p$g;->a:Landroidx/fragment/app/p;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
