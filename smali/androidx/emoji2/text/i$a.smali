.class public Landroidx/emoji2/text/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;La0/k$b;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {p2}, [La0/k$b;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-static {p1, v0, p2}, La0/k;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[La0/k$b;)Landroid/graphics/Typeface;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public b(Landroid/content/Context;La0/e;)La0/k$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, p2}, La0/k;->b(Landroid/content/Context;Landroid/os/CancellationSignal;La0/e;)La0/k$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
