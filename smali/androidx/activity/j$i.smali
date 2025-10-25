.class final Landroidx/activity/j$i;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/activity/j;


# direct methods
.method constructor <init>(Landroidx/activity/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/j$i;->e:Landroidx/activity/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/activity/t;
    .locals 4

    .line 1
    new-instance v0, Landroidx/activity/t;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/j$i;->e:Landroidx/activity/j;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/activity/j;->access$getReportFullyDrawnExecutor$p(Landroidx/activity/j;)Landroidx/activity/j$e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroidx/activity/j$i$a;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/activity/j$i;->e:Landroidx/activity/j;

    .line 12
    .line 13
    invoke-direct {v2, v3}, Landroidx/activity/j$i$a;-><init>(Landroidx/activity/j;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/activity/t;-><init>(Ljava/util/concurrent/Executor;Lid/a;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/j$i;->b()Landroidx/activity/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
