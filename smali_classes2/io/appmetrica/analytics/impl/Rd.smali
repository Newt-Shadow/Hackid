.class public final Lio/appmetrica/analytics/impl/Rd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/J9;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/dl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/J9;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/J9;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rd;->a:Lio/appmetrica/analytics/impl/J9;

    .line 10
    .line 11
    new-instance p1, Lio/appmetrica/analytics/impl/In;

    .line 12
    .line 13
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/In;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/In;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rd;->b:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p1, Lio/appmetrica/analytics/impl/dl;

    .line 23
    .line 24
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/dl;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rd;->c:Lio/appmetrica/analytics/impl/dl;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final getExecutionPolicy()Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rd;->a:Lio/appmetrica/analytics/impl/J9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetworkApi()Lio/appmetrica/analytics/modulesapi/internal/network/SimpleNetworkApi;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rd;->c:Lio/appmetrica/analytics/impl/dl;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSslSocketFactoryProvider()Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->y()Lio/appmetrica/analytics/impl/T2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rd;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
