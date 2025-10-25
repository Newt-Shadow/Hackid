.class public Lra/b;
.super Lga/a;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/Float;


# instance fields
.field private final b:Z

.field private final c:Landroid/graphics/Rect;

.field private d:Ljava/lang/Float;

.field private e:Ljava/lang/Float;

.field private f:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lra/b;->g:Ljava/lang/Float;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lfa/e0;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lga/a;-><init>(Lfa/e0;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lra/b;->g:Ljava/lang/Float;

    .line 5
    .line 6
    iput-object v0, p0, Lra/b;->d:Ljava/lang/Float;

    .line 7
    .line 8
    iput-object v0, p0, Lra/b;->e:Ljava/lang/Float;

    .line 9
    .line 10
    invoke-interface {p1}, Lfa/e0;->m()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lra/b;->c:Landroid/graphics/Rect;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lra/b;->e:Ljava/lang/Float;

    .line 20
    .line 21
    iput-object p1, p0, Lra/b;->f:Ljava/lang/Float;

    .line 22
    .line 23
    iput-boolean v2, p0, Lra/b;->b:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v3, 0x1e

    .line 29
    .line 30
    if-lt v1, v3, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Lfa/e0;->e()Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lra/b;->e:Ljava/lang/Float;

    .line 37
    .line 38
    invoke-interface {p1}, Lfa/e0;->i()Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lra/b;->f:Ljava/lang/Float;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-object v0, p0, Lra/b;->e:Ljava/lang/Float;

    .line 46
    .line 47
    invoke-interface {p1}, Lfa/e0;->h()Ljava/lang/Float;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lra/b;->e:Ljava/lang/Float;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    cmpg-float v0, v0, v1

    .line 64
    .line 65
    if-gez v0, :cond_3

    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lra/b;->e:Ljava/lang/Float;

    .line 68
    .line 69
    :cond_3
    iput-object p1, p0, Lra/b;->f:Ljava/lang/Float;

    .line 70
    .line 71
    :goto_0
    iget-object p1, p0, Lra/b;->f:Ljava/lang/Float;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lra/b;->e:Ljava/lang/Float;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-lez p1, :cond_4

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    :cond_4
    iput-boolean v2, p0, Lra/b;->b:Z

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ZoomLevelFeature"

    return-object v0
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lra/b;->c()Z

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
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1e

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lra/a;->a()Landroid/hardware/camera2/CaptureRequest$Key;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lra/b;->d:Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lra/b;->e:Ljava/lang/Float;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lra/b;->f:Ljava/lang/Float;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v1, v2, v3}, Lra/c;->a(FFF)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lra/b;->d:Ljava/lang/Float;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v1, p0, Lra/b;->c:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget-object v2, p0, Lra/b;->e:Ljava/lang/Float;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v3, p0, Lra/b;->f:Ljava/lang/Float;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {v0, v1, v2, v3}, Lra/c;->b(FLandroid/graphics/Rect;FF)Landroid/graphics/Rect;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lra/b;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget-object v0, p0, Lra/b;->f:Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget-object v0, p0, Lra/b;->e:Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lra/b;->d:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method
