.class public Lma/a;
.super Lga/a;
.source "SourceFile"


# instance fields
.field private b:Landroid/util/Size;

.field private c:Lga/e;

.field private d:Landroid/hardware/camera2/params/MeteringRectangle;

.field private final e:Lqa/b;


# direct methods
.method public constructor <init>(Lfa/e0;Lqa/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lga/a;-><init>(Lfa/e0;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lma/a;->e:Lqa/b;

    .line 5
    .line 6
    return-void
.end method

.method private c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lma/a;->b:Landroid/util/Size;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lma/a;->c:Lga/e;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lma/a;->d:Landroid/hardware/camera2/params/MeteringRectangle;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lma/a;->e:Lqa/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lqa/b;->d()Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lma/a;->e:Lqa/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Lqa/b;->c()Lqa/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lqa/a;->c()Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    move-object v6, v0

    .line 32
    iget-object v1, p0, Lma/a;->b:Landroid/util/Size;

    .line 33
    .line 34
    iget-object v0, p0, Lma/a;->c:Lga/e;

    .line 35
    .line 36
    iget-object v0, v0, Lga/e;->a:Ljava/lang/Double;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-object v0, p0, Lma/a;->c:Lga/e;

    .line 43
    .line 44
    iget-object v0, v0, Lga/e;->b:Ljava/lang/Double;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    invoke-static/range {v1 .. v6}, Lfa/k0;->b(Landroid/util/Size;DDLio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)Landroid/hardware/camera2/params/MeteringRectangle;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lma/a;->d:Landroid/hardware/camera2/params/MeteringRectangle;

    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 58
    .line 59
    const-string v1, "The cameraBoundaries should be set (using `FocusPointFeature.setCameraBoundaries(Size)`) before updating the focus point."

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FocusPointFeature"

    return-object v0
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lma/a;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 9
    .line 10
    iget-object v1, p0, Lma/a;->d:Landroid/hardware/camera2/params/MeteringRectangle;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    filled-new-array {v1}, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lga/a;->a:Lfa/e0;

    .line 2
    .line 3
    invoke-interface {v0}, Lfa/e0;->s()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public e(Landroid/util/Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lma/a;->b:Landroid/util/Size;

    .line 2
    .line 3
    invoke-direct {p0}, Lma/a;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lga/e;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Lga/e;->a:Ljava/lang/Double;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lga/e;->b:Ljava/lang/Double;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :cond_1
    iput-object p1, p0, Lma/a;->c:Lga/e;

    .line 13
    .line 14
    invoke-direct {p0}, Lma/a;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
