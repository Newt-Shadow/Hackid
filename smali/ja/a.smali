.class public Lja/a;
.super Lga/a;
.source "SourceFile"


# instance fields
.field private b:D


# direct methods
.method public constructor <init>(Lfa/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lga/a;-><init>(Lfa/e0;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lja/a;->b:D

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ExposureOffsetFeature"

    return-object v0
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lja/a;->c()Z

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
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 9
    .line 10
    iget-wide v1, p0, Lja/a;->b:D

    .line 11
    .line 12
    double-to-int v1, v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public d()D
    .locals 2

    .line 1
    iget-object v0, p0, Lga/a;->a:Lfa/e0;

    .line 2
    .line 3
    invoke-interface {v0}, Lfa/e0;->b()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public e()D
    .locals 4

    .line 1
    iget-object v0, p0, Lga/a;->a:Lfa/e0;

    .line 2
    .line 3
    invoke-interface {v0}, Lfa/e0;->l()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-double v0, v0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lja/a;->d()D

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    mul-double/2addr v0, v2

    .line 28
    return-wide v0
.end method

.method public f()D
    .locals 4

    .line 1
    iget-object v0, p0, Lga/a;->a:Lfa/e0;

    .line 2
    .line 3
    invoke-interface {v0}, Lfa/e0;->l()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-double v0, v0

    .line 23
    :goto_0
    invoke-virtual {p0}, Lja/a;->d()D

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    mul-double/2addr v0, v2

    .line 28
    return-wide v0
.end method

.method public g()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-wide v0, p0, Lja/a;->b:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(Ljava/lang/Double;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lja/a;->d()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    div-double/2addr v2, v0

    .line 10
    iput-wide v2, p0, Lja/a;->b:D

    .line 11
    .line 12
    return-void
.end method
