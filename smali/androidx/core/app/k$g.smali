.class public Landroidx/core/app/k$g;
.super Landroidx/core/app/k$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/k$g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/app/k$j;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Landroidx/core/app/j;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroidx/core/app/j;->a()Landroid/app/Notification$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroidx/core/app/k$g$a;->a()Landroid/app/Notification$Style;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    return-object v0
.end method

.method public i(Landroidx/core/app/j;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Landroidx/core/app/j;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Landroidx/core/app/j;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
