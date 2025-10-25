.class public final Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;


# direct methods
.method constructor <init>(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getConfigBundleForClient()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->access$getBundleConverter$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;

    .line 8
    .line 9
    invoke-static {v1}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->access$getConfig$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/g0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lio/appmetrica/analytics/screenshot/impl/B;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Lio/appmetrica/analytics/screenshot/impl/B;-><init>(Lio/appmetrica/analytics/screenshot/impl/g0;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "config"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object v0
.end method
