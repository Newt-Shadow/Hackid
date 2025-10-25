.class public final Lio/appmetrica/analytics/impl/Ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/HostRetryInfoProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Xe;

.field public final b:Lio/appmetrica/analytics/impl/Sd;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Xe;Lio/appmetrica/analytics/impl/Sd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ia;->a:Lio/appmetrica/analytics/impl/Xe;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ia;->b:Lio/appmetrica/analytics/impl/Sd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Sd;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ia;->b:Lio/appmetrica/analytics/impl/Sd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastAttemptTimeSeconds()J
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ia;->a:Lio/appmetrica/analytics/impl/Xe;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ia;->b:Lio/appmetrica/analytics/impl/Sd;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/Xe;->a(Lio/appmetrica/analytics/impl/Sd;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final getNextSendAttemptNumber()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ia;->a:Lio/appmetrica/analytics/impl/Xe;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ia;->b:Lio/appmetrica/analytics/impl/Sd;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/Xe;->a(Lio/appmetrica/analytics/impl/Sd;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final saveLastAttemptTimeSeconds(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ia;->a:Lio/appmetrica/analytics/impl/Xe;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ia;->b:Lio/appmetrica/analytics/impl/Sd;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lio/appmetrica/analytics/impl/Xe;->b(Lio/appmetrica/analytics/impl/Sd;J)Lio/appmetrica/analytics/impl/Xe;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ve;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final saveNextSendAttemptNumber(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ia;->a:Lio/appmetrica/analytics/impl/Xe;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ia;->b:Lio/appmetrica/analytics/impl/Sd;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/Xe;->b(Lio/appmetrica/analytics/impl/Sd;I)Lio/appmetrica/analytics/impl/Xe;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ve;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
