.class final Landroidx/fragment/app/f$g$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/f$g;->d(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/f$g;

.field final synthetic f:Landroid/view/ViewGroup;

.field final synthetic g:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/f$g;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/f$g$a;->e:Landroidx/fragment/app/f$g;

    iput-object p2, p0, Landroidx/fragment/app/f$g$a;->f:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/f$g$a;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f$g$a;->e:Landroidx/fragment/app/f$g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/f$g;->v()Landroidx/fragment/app/t0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/f$g$a;->f:Landroid/view/ViewGroup;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/fragment/app/f$g$a;->g:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/t0;->e(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f$g$a;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object v0
.end method
