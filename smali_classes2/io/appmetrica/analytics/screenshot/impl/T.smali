.class public final Lio/appmetrica/analytics/screenshot/impl/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/screenshot/impl/e;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/X;

.field public final c:Lio/appmetrica/analytics/screenshot/impl/o;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/e;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/e;-><init>()V

    .line 6
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/X;

    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/X;-><init>()V

    .line 7
    new-instance v2, Lio/appmetrica/analytics/screenshot/impl/o;

    invoke-direct {v2}, Lio/appmetrica/analytics/screenshot/impl/o;-><init>()V

    .line 8
    invoke-direct {p0, v0, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/T;-><init>(Lio/appmetrica/analytics/screenshot/impl/e;Lio/appmetrica/analytics/screenshot/impl/X;Lio/appmetrica/analytics/screenshot/impl/o;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/e;Lio/appmetrica/analytics/screenshot/impl/X;Lio/appmetrica/analytics/screenshot/impl/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/T;->a:Lio/appmetrica/analytics/screenshot/impl/e;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/T;->b:Lio/appmetrica/analytics/screenshot/impl/X;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/screenshot/impl/T;->c:Lio/appmetrica/analytics/screenshot/impl/o;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/screenshot/impl/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/T;->a:Lio/appmetrica/analytics/screenshot/impl/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/screenshot/impl/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/T;->c:Lio/appmetrica/analytics/screenshot/impl/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/screenshot/impl/X;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/T;->b:Lio/appmetrica/analytics/screenshot/impl/X;

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
    const-string v1, "ScreenshotConfig(apiCaptorConfig="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/T;->a:Lio/appmetrica/analytics/screenshot/impl/e;

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
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/T;->b:Lio/appmetrica/analytics/screenshot/impl/X;

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
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/T;->c:Lio/appmetrica/analytics/screenshot/impl/o;

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
