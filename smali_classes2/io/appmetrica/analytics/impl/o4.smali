.class public final Lio/appmetrica/analytics/impl/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/ModuleServiceConfig;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/o4;->a:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/o4;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getFeaturesConfig()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o4;->a:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    .line 2
    .line 3
    return-object v0
.end method
