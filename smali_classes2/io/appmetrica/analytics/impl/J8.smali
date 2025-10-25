.class public final Lio/appmetrica/analytics/impl/J8;
.super Lio/appmetrica/analytics/impl/K8;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer<",
            "Lio/appmetrica/analytics/protobuf/nano/MessageNano;",
            ">;",
            "Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/K8;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/StateSerializer;Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
