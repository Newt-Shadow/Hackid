.class public final Lio/appmetrica/analytics/screenshot/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/BundleToServiceConfigConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lio/appmetrica/analytics/screenshot/impl/B;
    .locals 1

    .line 1
    const-class v0, Lio/appmetrica/analytics/screenshot/impl/B;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "config"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/B;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/B;

    .line 21
    .line 22
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/g0;

    .line 23
    .line 24
    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/g0;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lio/appmetrica/analytics/screenshot/impl/B;-><init>(Lio/appmetrica/analytics/screenshot/impl/g0;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object p1
.end method

.method public final bridge synthetic fromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/h;->a(Landroid/os/Bundle;)Lio/appmetrica/analytics/screenshot/impl/B;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
