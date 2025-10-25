.class public final Landroidx/activity/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/activity/j;


# direct methods
.method constructor <init>(Landroidx/activity/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/j$a;->a:Landroidx/activity/j;

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
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/activity/j$a;->a:Landroidx/activity/j;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/activity/j;->access$ensureViewModelStore(Landroidx/activity/j;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/activity/j$a;->a:Landroidx/activity/j;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/activity/j;->getLifecycle()Landroidx/lifecycle/i;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/l;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
