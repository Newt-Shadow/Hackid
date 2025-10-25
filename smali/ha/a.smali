.class public Lha/a;
.super Lga/a;
.source "SourceFile"


# instance fields
.field private b:Lha/b;

.field private final c:Z


# direct methods
.method public constructor <init>(Lfa/e0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lga/a;-><init>(Lfa/e0;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lha/b;->b:Lha/b;

    .line 5
    .line 6
    iput-object p1, p0, Lha/a;->b:Lha/b;

    .line 7
    .line 8
    iput-boolean p2, p0, Lha/a;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AutoFocusFeature"

    return-object v0
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lha/a;->c()Z

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
    sget-object v0, Lha/a$a;->a:[I

    .line 9
    .line 10
    iget-object v1, p0, Lha/a;->b:Lha/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    aget v0, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 26
    .line 27
    iget-boolean v1, p0, Lha/a;->c:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v1, 0x4

    .line 34
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lga/a;->a:Lfa/e0;

    .line 2
    .line 3
    invoke-interface {v0}, Lfa/e0;->o()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lga/a;->a:Lfa/e0;

    .line 8
    .line 9
    invoke-interface {v1}, Lfa/e0;->q()Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v4, 0x0

    .line 22
    cmpl-float v1, v1, v4

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v1, v3

    .line 30
    :goto_1
    if-nez v1, :cond_3

    .line 31
    .line 32
    array-length v1, v0

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    if-ne v1, v3, :cond_2

    .line 37
    .line 38
    aget v0, v0, v2

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    :cond_2
    move v2, v3

    .line 43
    :cond_3
    return v2
.end method

.method public d()Lha/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lha/a;->b:Lha/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lha/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/a;->b:Lha/b;

    .line 2
    .line 3
    return-void
.end method
