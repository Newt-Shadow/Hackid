.class public final Lio/appmetrica/analytics/screenshot/impl/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/screenshot/impl/e0;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/i0;

.field public final c:Lio/appmetrica/analytics/screenshot/impl/f0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/T;)V
    .locals 4

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/impl/T;->a()Lio/appmetrica/analytics/screenshot/impl/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lio/appmetrica/analytics/screenshot/impl/e0;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/screenshot/impl/e0;-><init>(Lio/appmetrica/analytics/screenshot/impl/e;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/impl/T;->c()Lio/appmetrica/analytics/screenshot/impl/X;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Lio/appmetrica/analytics/screenshot/impl/i0;

    invoke-direct {v3, v0}, Lio/appmetrica/analytics/screenshot/impl/i0;-><init>(Lio/appmetrica/analytics/screenshot/impl/X;)V

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 7
    :goto_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/impl/T;->b()Lio/appmetrica/analytics/screenshot/impl/o;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/f0;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/screenshot/impl/f0;-><init>(Lio/appmetrica/analytics/screenshot/impl/o;)V

    .line 8
    :cond_2
    invoke-direct {p0, v2, v3, v1}, Lio/appmetrica/analytics/screenshot/impl/h0;-><init>(Lio/appmetrica/analytics/screenshot/impl/e0;Lio/appmetrica/analytics/screenshot/impl/i0;Lio/appmetrica/analytics/screenshot/impl/f0;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/e0;Lio/appmetrica/analytics/screenshot/impl/i0;Lio/appmetrica/analytics/screenshot/impl/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->a:Lio/appmetrica/analytics/screenshot/impl/e0;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->b:Lio/appmetrica/analytics/screenshot/impl/i0;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->c:Lio/appmetrica/analytics/screenshot/impl/f0;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/screenshot/impl/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->a:Lio/appmetrica/analytics/screenshot/impl/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/screenshot/impl/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->c:Lio/appmetrica/analytics/screenshot/impl/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/screenshot/impl/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->b:Lio/appmetrica/analytics/screenshot/impl/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ServiceSideScreenshotConfig(apiCaptorConfig="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->a:Lio/appmetrica/analytics/screenshot/impl/e0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", serviceCaptorConfig="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->b:Lio/appmetrica/analytics/screenshot/impl/i0;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", contentObserverCaptorConfig="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/h0;->c:Lio/appmetrica/analytics/screenshot/impl/f0;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
