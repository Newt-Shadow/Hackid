.class public final Lio/appmetrica/analytics/impl/C7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/B7;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/impl/C7;-><init>(Lio/appmetrica/analytics/impl/B7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/B7;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/C7;->a:Lio/appmetrica/analytics/impl/B7;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/B7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lio/appmetrica/analytics/impl/B7;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lio/appmetrica/analytics/impl/B7;-><init>(Lio/appmetrica/analytics/impl/ke;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/C7;-><init>(Lio/appmetrica/analytics/impl/B7;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/impl/D7;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/A7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A7;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/A7;

    if-nez p1, :cond_1

    .line 4
    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/A7;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/A7;-><init>()V
    :try_end_0
    .catch Lio/appmetrica/analytics/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance p1, Lio/appmetrica/analytics/impl/A7;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/A7;-><init>()V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C7;->a:Lio/appmetrica/analytics/impl/B7;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/B7;->a(Lio/appmetrica/analytics/impl/A7;)Lio/appmetrica/analytics/impl/D7;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/D7;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C7;->a:Lio/appmetrica/analytics/impl/B7;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/B7;->a(Lio/appmetrica/analytics/impl/D7;)Lio/appmetrica/analytics/impl/A7;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p1

    return-object p1
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/D7;

    .line 2
    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C7;->a:Lio/appmetrica/analytics/impl/B7;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/B7;->a(Lio/appmetrica/analytics/impl/D7;)Lio/appmetrica/analytics/impl/A7;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C7;->a([B)Lio/appmetrica/analytics/impl/D7;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
