.class public final Lio/appmetrica/analytics/impl/mc;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/nc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/nc;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/mc;->a:Lio/appmetrica/analytics/impl/nc;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mc;->a:Lio/appmetrica/analytics/impl/nc;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/nc;->f:Lio/appmetrica/analytics/impl/Hc;

    .line 4
    .line 5
    iget-object v2, v0, Lio/appmetrica/analytics/impl/nc;->b:Lio/appmetrica/analytics/impl/C9;

    .line 6
    .line 7
    iget-object v3, v0, Lio/appmetrica/analytics/impl/nc;->a:Lio/appmetrica/analytics/impl/Og;

    .line 8
    .line 9
    iget-object v4, v0, Lio/appmetrica/analytics/impl/nc;->c:Lio/appmetrica/analytics/impl/F4;

    .line 10
    .line 11
    iget-object v0, v0, Lio/appmetrica/analytics/impl/nc;->d:Lio/appmetrica/analytics/impl/Ue;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->isNative()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->h()Lio/appmetrica/analytics/impl/Y9;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v5, v1, Lio/appmetrica/analytics/impl/Y9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 29
    .line 30
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Y9;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v5, v1}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string v5, "io.appmetrica.analytics.plugin_id"

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    new-instance v0, Lio/appmetrica/analytics/impl/Qd;

    .line 53
    .line 54
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Qd;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v1, Lio/appmetrica/analytics/impl/Ie;

    .line 59
    .line 60
    invoke-direct {v1, v2, v3, v4, v0}, Lio/appmetrica/analytics/impl/Ie;-><init>(Lio/appmetrica/analytics/impl/C9;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Ue;)V

    .line 61
    .line 62
    .line 63
    move-object v0, v1

    .line 64
    :goto_1
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Gc;->a()Lio/appmetrica/analytics/impl/O8;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method
