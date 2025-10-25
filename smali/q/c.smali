.class public Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroidx/browser/customtabs/d$d;

.field private c:Ljava/util/List;

.field private d:Landroid/os/Bundle;

.field private e:Lq/a;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/browser/customtabs/d$d;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/browser/customtabs/d$d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq/c;->b:Landroidx/browser/customtabs/d$d;

    .line 10
    .line 11
    new-instance v0, Lq/a$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lq/a$a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lq/c;->e:Lq/a;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lq/c;->f:I

    .line 20
    .line 21
    iput-object p1, p0, Lq/c;->a:Landroid/net/Uri;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroidx/browser/customtabs/i;)Lq/b;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lq/c;->b:Landroidx/browser/customtabs/d$d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/d$d;->i(Landroidx/browser/customtabs/i;)Landroidx/browser/customtabs/d$d;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lq/c;->b:Landroidx/browser/customtabs/d$d;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/browser/customtabs/d$d;->b()Landroidx/browser/customtabs/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p1, p1, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 15
    .line 16
    iget-object v0, p0, Lq/c;->a:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v0, "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lq/c;->c:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v1, p0, Lq/c;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "android.support.customtabs.extra.ADDITIONAL_TRUSTED_ORIGINS"

    .line 39
    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lq/c;->d:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string v1, "androidx.browser.trusted.EXTRA_SPLASH_SCREEN_PARAMS"

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lq/c;->e:Lq/a;

    .line 57
    .line 58
    invoke-interface {v1}, Lq/a;->a()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "androidx.browser.trusted.extra.DISPLAY_MODE"

    .line 63
    .line 64
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    const-string v1, "androidx.browser.trusted.extra.SCREEN_ORIENTATION"

    .line 68
    .line 69
    iget v2, p0, Lq/c;->f:I

    .line 70
    .line 71
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    new-instance v1, Lq/b;

    .line 75
    .line 76
    invoke-direct {v1, p1, v0}, Lq/b;-><init>(Landroid/content/Intent;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 81
    .line 82
    const-string v0, "CustomTabsSession is required for launching a TWA"

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public b(Ljava/util/List;)Lq/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lq/c;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Landroidx/browser/customtabs/a;)Lq/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/c;->b:Landroidx/browser/customtabs/d$d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/d$d;->e(Landroidx/browser/customtabs/a;)Landroidx/browser/customtabs/d$d;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d(Lq/a;)Lq/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lq/c;->e:Lq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(I)Lq/c;
    .locals 0

    .line 1
    iput p1, p0, Lq/c;->f:I

    .line 2
    .line 3
    return-object p0
.end method
