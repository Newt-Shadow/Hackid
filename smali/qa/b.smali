.class public Lqa/b;
.super Lga/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/Integer;

.field private final c:Lqa/a;

.field private d:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;


# direct methods
.method public constructor <init>(Lfa/e0;Landroid/app/Activity;Lfa/o0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lga/a;-><init>(Lfa/e0;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lqa/b;->b:Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-interface {p1}, Lfa/e0;->n()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lqa/b;->f(Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lfa/e0;->j()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    :cond_0
    iget-object p1, p0, Lqa/b;->b:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p2, p3, v0, p1}, Lqa/a;->a(Landroid/app/Activity;Lfa/o0;ZI)Lqa/a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lqa/b;->c:Lqa/a;

    .line 40
    .line 41
    invoke-virtual {p1}, Lqa/a;->i()V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SensorOrientationFeature"

    return-object v0
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Lqa/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/b;->c:Lqa/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/b;->d:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqa/b;->d:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqa/b;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lqa/b;->d:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 3
    .line 4
    return-void
.end method
