.class Lfa/u$b;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa/u;->G(ILjava/lang/Runnable;[Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lfa/u;


# direct methods
.method constructor <init>(Lfa/u;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/u$b;->c:Lfa/u;

    .line 2
    .line 3
    iput-object p2, p0, Lfa/u$b;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lfa/u$b;->a:Z

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lfa/u$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfa/u$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfa/u$b;->c:Lfa/u;

    .line 2
    .line 3
    invoke-static {p1}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    const-string p1, "Camera"

    .line 2
    .line 3
    const-string v0, "CameraCaptureSession onClosed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lfa/u$b;->a:Z

    .line 10
    .line 11
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    const-string p1, "Camera"

    .line 2
    .line 3
    const-string v0, "CameraCaptureSession onConfigureFailed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lfa/u$b;->c:Lfa/u;

    .line 9
    .line 10
    invoke-static {p1}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "Failed to configure camera session."

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lfa/u$b;->a:Z

    .line 21
    .line 22
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CameraCaptureSession onConfigured"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lfa/u$b;->c:Lfa/u;

    .line 12
    .line 13
    iget-object v1, v1, Lfa/u;->u:Lfa/x;

    .line 14
    .line 15
    invoke-virtual {v1}, Lfa/x;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Camera"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lfa/u$b;->c:Lfa/u;

    .line 32
    .line 33
    invoke-static {v0}, Lfa/u;->s(Lfa/u;)Lfa/y;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-boolean v0, p0, Lfa/u$b;->a:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lfa/u$b;->c:Lfa/u;

    .line 45
    .line 46
    invoke-static {v0, p1}, Lfa/u;->D(Lfa/u;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lfa/u$b;->c:Lfa/u;

    .line 50
    .line 51
    invoke-static {p1}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lfa/u$b;->c:Lfa/u;

    .line 56
    .line 57
    iget-object v0, v0, Lfa/u;->u:Lfa/x;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lfa/o0;->j(Lfa/x;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lfa/u$b;->c:Lfa/u;

    .line 63
    .line 64
    invoke-static {p1}, Lfa/u;->t(Lfa/u;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lfa/u;->v(Lfa/u;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lfa/u$b;->c:Lfa/u;

    .line 72
    .line 73
    iget-object v0, p0, Lfa/u$b;->b:Ljava/lang/Runnable;

    .line 74
    .line 75
    new-instance v1, Lfa/v;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lfa/v;-><init>(Lfa/u$b;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0, v1}, Lfa/u;->w(Lfa/u;Ljava/lang/Runnable;Lfa/p0;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    :goto_0
    iget-object p1, p0, Lfa/u$b;->c:Lfa/u;

    .line 85
    .line 86
    invoke-static {p1}, Lfa/u;->B(Lfa/u;)Lfa/o0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v0, "The camera was closed during configuration."

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lfa/o0;->k(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
