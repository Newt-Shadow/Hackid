.class public final Lio/appmetrica/analytics/coreutils/impl/c;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/impl/c;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/impl/c;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/impl/c;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/impl/c;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v3, 0x80

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method
