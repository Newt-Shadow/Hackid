.class public abstract Landroidx/browser/customtabs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/c;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/browser/customtabs/e$a;

    .line 6
    .line 7
    invoke-static {p2}, Lb/b$a;->a(Landroid/os/IBinder;)Lb/b;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v1, p0, Landroidx/browser/customtabs/e;->mApplicationContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/browser/customtabs/e$a;-><init>(Landroidx/browser/customtabs/e;Lb/b;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/browser/customtabs/e;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/c;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "Custom Tabs Service connected before an applicationcontext has been provided."

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/e;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
