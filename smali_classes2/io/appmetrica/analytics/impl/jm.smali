.class public final Lio/appmetrica/analytics/impl/jm;
.super Lio/appmetrica/analytics/impl/M2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/M2;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/impl/im;
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/im;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/im;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/im;

    return-object p1
.end method

.method public final bridge synthetic a()Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/jm;->b()Lio/appmetrica/analytics/impl/im;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/impl/im;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/im;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/im;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/appmetrica/analytics/impl/dm;

    .line 7
    .line 8
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/dm;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lio/appmetrica/analytics/impl/im;->i:Lio/appmetrica/analytics/impl/dm;

    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic defaultValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/jm;->b()Lio/appmetrica/analytics/impl/im;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic toState([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/jm;->a([B)Lio/appmetrica/analytics/impl/im;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
