.class Lfa/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/hardware/camera2/CameraDevice;

.field final synthetic b:Lfa/u;


# direct methods
.method private constructor <init>(Lfa/u;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfa/u$d;->b:Lfa/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfa/u$d;->a:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method synthetic constructor <init>(Lfa/u;Landroid/hardware/camera2/CameraDevice;Lfa/u$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfa/u$d;-><init>(Lfa/u;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lfa/u$d;->a:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    iget-object v0, p0, Lfa/u$d;->b:Lfa/u;

    .line 4
    .line 5
    invoke-static {v0}, Lfa/u;->r(Lfa/u;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p3, p1, p2, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Landroid/hardware/camera2/params/SessionConfiguration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u$d;->a:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lfa/w;->a(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u$d;->a:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/u$d;->a:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
