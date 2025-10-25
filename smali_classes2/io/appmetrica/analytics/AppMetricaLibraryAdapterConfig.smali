.class public Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;
    }
.end annotation


# instance fields
.field public final advIdentifiersTracking:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;-><init>(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;)V

    return-void
.end method

.method public static newConfigBuilder()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AppMetricaLibraryAdapterConfig{advIdentifiersTracking="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
