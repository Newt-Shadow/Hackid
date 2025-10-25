.class public Lia/a;
.super Lga/a;
.source "SourceFile"


# instance fields
.field private b:Lia/b;


# direct methods
.method public constructor <init>(Lfa/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lga/a;-><init>(Lfa/e0;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lia/b;->b:Lia/b;

    .line 5
    .line 6
    iput-object p1, p0, Lia/a;->b:Lia/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ExposureLockFeature"

    return-object v0
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lia/a;->c()Z

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
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 9
    .line 10
    iget-object v1, p0, Lia/a;->b:Lia/b;

    .line 11
    .line 12
    sget-object v2, Lia/b;->c:Lia/b;

    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public d()Lia/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/a;->b:Lia/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lia/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lia/a;->b:Lia/b;

    .line 2
    .line 3
    return-void
.end method
