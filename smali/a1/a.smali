.class public La1/a;
.super Landroidx/core/app/k$j;
.source "SourceFile"


# instance fields
.field e:[I

.field f:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/app/k$j;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, La1/a;->e:[I

    .line 6
    .line 7
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
    new-instance v0, Landroid/app/Notification$MediaStyle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, La1/a;->n(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 15
    .line 16
    .line 17
    return-void
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

.method n(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;
    .locals 1

    .line 1
    iget-object v0, p0, La1/a;->e:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, La1/a;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object p1
.end method
