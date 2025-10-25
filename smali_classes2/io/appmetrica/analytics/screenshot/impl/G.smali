.class public final Lio/appmetrica/analytics/screenshot/impl/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lio/appmetrica/analytics/screenshot/impl/T;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/O;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/O;-><init>()V

    iget-boolean v0, v0, Lio/appmetrica/analytics/screenshot/impl/O;->a:Z

    .line 5
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/T;

    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/T;-><init>()V

    .line 6
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/screenshot/impl/G;-><init>(ZLio/appmetrica/analytics/screenshot/impl/T;)V

    return-void
.end method

.method public constructor <init>(ZLio/appmetrica/analytics/screenshot/impl/T;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/appmetrica/analytics/screenshot/impl/G;->a:Z

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/G;->b:Lio/appmetrica/analytics/screenshot/impl/T;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/screenshot/impl/T;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/G;->b:Lio/appmetrica/analytics/screenshot/impl/T;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/G;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RemoteScreenshotConfig(enabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/G;->a:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", config="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/G;->b:Lio/appmetrica/analytics/screenshot/impl/T;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
